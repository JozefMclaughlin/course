require 'yaml'



class YAMLExample

  attr_accessor :environment, :user_creds, :list

  def initialize
    @user_creds = YAML.load_file('user_credentials.yml')
    @environment = YAML.load_file('environments.yml')
    @list = YAML.load_file('list.yml')
  end

  def print_environments
    puts @environment
  end

end


yaml = YAMLExample.new

yaml.print_environments
