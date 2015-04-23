lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xftp/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'xftp-rails'
  spec.version       = XFTP::Rails::VERSION::STRING
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Vasiliy Yorkin']
  spec.email         = ['vasiliy.yorkin@gmail.com']

  spec.summary       = "xftp-rails-#{XFTP::Rails::VERSION::STRING}"
  spec.description   = 'Unified interface for ftp/sftp to be used with Rails 3.x'
  spec.homepage      = 'https://github.com/vyorkin/xftp-rails'

  spec.files         = `git ls-files -- lib/*`.split("\n")
  spec.files         += %w(README.md LICENSE.txt)
  spec.bindir        = 'exe'
  spec.executables   = `git ls-files -- exe/*`.split("\n").map { |file| File.basename(file) }

  spec.test_files    = []
  spec.require_path  = 'lib'
  spec.license       = 'MIT'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'rails', '~> 3.2'
  spec.add_runtime_dependency 'xftp', '~> 0.1', '>= 0.1.0'
end
