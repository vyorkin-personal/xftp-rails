lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

VERSION = '0.3.2'

Gem::Specification.new do |spec|
  spec.name          = 'xftp-rails'
  spec.version       = VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Vasiliy Yorkin']
  spec.email         = ['vasiliy.yorkin@gmail.com']

  spec.summary       = "xftp-rails-#{VERSION}"
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
  spec.add_runtime_dependency 'xftp', '~> 0.3', '>= 0.3.1'
end
