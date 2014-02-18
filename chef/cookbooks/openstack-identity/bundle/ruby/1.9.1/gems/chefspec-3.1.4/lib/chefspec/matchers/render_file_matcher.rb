module ChefSpec::Matchers
  class RenderFileMatcher
    def initialize(path)
      @path = path
    end

    def matches?(runner)
      @runner = runner
      resource && has_create_action? && matches_content?
    end

    def with_content(expected_content)
      @expected_content = expected_content
      self
    end

    def description
      message = %Q{render file "#{@path}"}
      if @expected_content
        if @expected_content.to_s.include?("\n")
          message << " with content <suppressed>"
        else
          message << " with content #{@expected_content.inspect}"
        end
      end
      message
    end

    def failure_message_for_should
      message = %Q{expected Chef run to render "#{@path}"}
      if @expected_content
        message << " with:"
        message << "\n\n"
        message << @expected_content.to_s
        message << "\n\n"
        message << "but got:"
        message << "\n\n"
        message << @actual_content.to_s
        message << "\n "
      end
      message
    end

    def failure_message_for_should_not
      message = %Q{expected file "#{@path}"}
      if @expected_content
        message << " with:"
        message << "\n\n"
        message << @expected_content.to_s
        message << "\n\n"
      end
      message << " to not be in Chef run"
      message
    end

    private
      def resource
        @resource ||= @runner.find_resource(:cookbook_file, @path) ||
                      @runner.find_resource(:file, @path) ||
                      @runner.find_resource(:template, @path)
      end

      #
      # Determines if the given resource has a create-like action.
      #
      # @param [Chef::Resource] resource
      #
      # @return [Boolean]
      #
      def has_create_action?
        [:create, :create_if_missing].any? { |action| resource.performed_action?(action) }
      end

      #
      # Determines if the resources content matches the expected content.
      #
      # @param [Chef::Resource] resource
      #
      # @return [Boolean]
      #
      def matches_content?
        return true if @expected_content.nil?

        @actual_content = ChefSpec::Renderer.new(@runner, resource).content

        return false if @actual_content.nil?

        if @expected_content.is_a?(Regexp)
          @actual_content =~ @expected_content
        else
          @actual_content.include?(@expected_content)
        end
      end
  end
end
