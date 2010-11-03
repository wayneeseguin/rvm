module RVM
  class Environment

    # Returns the contents of the env file.
    def env_contents
      rvm(:env, environment_name).stdout
    end

    # Returns the path to the env file
    # Supose that you are in the 1.9.2 environment.
    #
    # env.env_path # => "~/.rvm/environments/ruby-1.9.2-p0"
    #    
    def env_path
      rvm(:env, environment_name, :path => true).stdout.strip
    end

    # Returns a ruby-like wrapper for the env functions
    def env
      @env_wrapper ||= EnvWrapper.new(self)
    end

    # Returns the path for the given command
    # 
    # Supose that you are in the 1.9.2 environment.
    #
    # env.path_for(:rspec) # => '~/.rvm/gems/ruby-1.9.2-p0/bin/rspec'
    # env.path_for(:ruby)  # => '~/.rvm/rubies/ruby-1.9.2-p0/bin/ruby'
    #
    def path_for(command)
      run(:command, "-v", command).stdout.strip
    end
    alias which path_for

    # Simple ruby like wrapper for envs.
    class EnvWrapper

      def initialize(parent)
        @parent = parent
      end

      # Contents of the env file.
      def contents
        @parent.env_contents
      end
      alias read contents
      alias to_s contents

      # The path of the env file.
      def path
        @parent.env_path
      end

      # Opens a file on the env file.
      def to_file
        File.open(path)
      end

    end

  end
end
