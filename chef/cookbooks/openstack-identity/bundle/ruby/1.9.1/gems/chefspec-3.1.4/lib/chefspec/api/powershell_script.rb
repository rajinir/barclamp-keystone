module ChefSpec::API
  # @since 3.0.0
  module PowershellScriptMatchers
    ChefSpec::Runner.define_runner_method :powershell_script

    #
    # Assert that a +powershell_script+ resource exists in the Chef run with the
    # action +:run+. Given a Chef Recipe that runs "/tmp" as a
    # +powershell_script+:
    #
    #     powershell_script '/tmp' do
    #       action :run
    #     end
    #
    # The Examples section demonstrates the different ways to test a
    # +powershell_script+ resource with ChefSpec.
    #
    # @example Assert that a +powershell_script+ was runed
    #   expect(chef_run).to run_powershell_script('/tmp')
    #
    # @example Assert that a +powershell_script+ was runed with predicate matchers
    #   expect(chef_run).to run_powershell_script('/tmp').with_user('svargo')
    #
    # @example Assert that a +powershell_script+ was runed with attributes
    #   expect(chef_run).to run_powershell_script('/tmp').with(user: 'svargo')
    #
    # @example Assert that a +powershell_script+ was runed using a regex
    #   expect(chef_run).to run_powershell_script('/tmp').with(user: /sva(.+)/)
    #
    # @example Assert that a +powershell_script+ was _not_ runed
    #   expect(chef_run).to_not run_powershell_script('/tmp')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def run_powershell_script(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:powershell_script, :run, resource_name)
    end
  end
end
