module ChefSpec::API
  # @since 0.0.1
  module DirectoryMatchers
    ChefSpec::Runner.define_runner_method :directory

    #
    # Assert that a +directory+ resource exists in the Chef run with the
    # action +:create+. Given a Chef Recipe that creates "/tmp" as a
    # +directory+:
    #
    #     directory '/tmp' do
    #       action :create
    #     end
    #
    # The Examples section demonstrates the different ways to test a
    # +directory+ resource with ChefSpec.
    #
    # @example Assert that a +directory+ was createed
    #   expect(chef_run).to create_directory('/tmp')
    #
    # @example Assert that a +directory+ was createed with predicate matchers
    #   expect(chef_run).to create_directory('/tmp').with_user('svargo')
    #
    # @example Assert that a +directory+ was createed with attributes
    #   expect(chef_run).to create_directory('/tmp').with(user: 'svargo')
    #
    # @example Assert that a +directory+ was createed using a regex
    #   expect(chef_run).to create_directory('/tmp').with(user: /sva(.+)/)
    #
    # @example Assert that a +directory+ was _not_ createed
    #   expect(chef_run).to_not create_directory('/tmp')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def create_directory(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:directory, :create, resource_name)
    end

    #
    # Assert that a +directory+ resource exists in the Chef run with the
    # action +:delete+. Given a Chef Recipe that deletes "/tmp" as a
    # +directory+:
    #
    #     directory '/tmp' do
    #       action :delete
    #     end
    #
    # The Examples section demonstrates the different ways to test a
    # +directory+ resource with ChefSpec.
    #
    # @example Assert that a +directory+ was deleteed
    #   expect(chef_run).to delete_directory('/tmp')
    #
    # @example Assert that a +directory+ was deleteed with predicate matchers
    #   expect(chef_run).to delete_directory('/tmp').with_user('svargo')
    #
    # @example Assert that a +directory+ was deleteed with attributes
    #   expect(chef_run).to delete_directory('/tmp').with(user: 'svargo')
    #
    # @example Assert that a +directory+ was deleteed using a regex
    #   expect(chef_run).to delete_directory('/tmp').with(user: /sva(.+)/)
    #
    # @example Assert that a +directory+ was _not_ deleteed
    #   expect(chef_run).to_not delete_directory('/tmp')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def delete_directory(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:directory, :delete, resource_name)
    end
  end
end
