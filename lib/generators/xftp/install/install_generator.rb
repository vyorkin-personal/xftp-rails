require 'rails/generators'

# HACK: I use camel case notation here,
# because otherwise the resulting name that displayed
# when running `rails g` will be x_f_t_p

module Xftp
  module Generators
    # @api private
    class InstallGenerator < ::Rails::Generators::Base
      def self.source_root
        @source_root ||= File.expand_path('../templates', __FILE__)
      end

      def create_initializer_file
        template 'initializer.rb', File.join('config', 'initializers', 'xftp.rb')
      end
    end
  end
end
