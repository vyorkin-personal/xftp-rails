lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xftp/rails/version'

TEST_FILES = %r{^(test|spec|features)/}

Gem::Specification.new do |spec|
  spec.name          = 'xftp-rails'
  spec.version       = XFTP::Rails::VERSION::STRING
  spec.authors       = ['Vasiliy Yorkin']
  spec.email         = ['vasiliy.yorkin@gmail.com']

  spec.summary       = 'Unified interface for ftp/sftp to be used with Rails 3.x'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/vyorkin/xftp-rails'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match TEST_FILES }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(TEST_FILES)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'rails', '~> 3.2.21'
  spec.add_runtime_dependency 'xftp', '~> 0.1.0'
end
