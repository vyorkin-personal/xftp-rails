require 'rails/generators'

module XFTP
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    
    def create_initializer_file
      copy_file 'initializer.rb', 'config/initializers/xftp.rb'
    end
  end
end
