require File.expand_path('lib/agNewsNet/version', __dir__)
Gem::Specification.new do |spec|
  spec.name                  = 'agNewsNet'
  spec.version               = AGNewsNet::VERSION
  spec.authors               = ['Dots Ekaterina','Ivanov Vadim']
  spec.email                 = ['ekaterina.dots777@gmail.com']
  spec.summary               = 'Creating neural netwok for agnews dataset and working with it'
  spec.description           = 'This gem create neural network for AGNews dataset with optional parameters and classify news.'
  spec.homepage              = 'https://github.com/Ekaterina0801/AGNewsNet'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'
  spec.files = Dir['README.md', 'LICENSE',
                   'CHANGELOG.md', 'lib/**/*.rb',
                   'lib/**/*.rake',
                   'agNewsNet.gemspec', '.github/*.md',
                   'Gemfile', 'Rakefile']
  spec.extra_rdoc_files = ['README.md']
  spec.add_development_dependency 'codecov', '~> 0.6.0'
  spec.add_development_dependency 'dotenv', '~> 2.5'
  spec.add_development_dependency 'rake', '~> 11.2.2'
  spec.add_development_dependency 'rspec', '~> 3.5.0'
  spec.add_dependency 'ruby-vips', '~> 2.1.4'
  spec.add_dependency 'tensorflow', '~> 0.2.0'
  spec.add_dependency 'torch-rb', '~> 0.11.2'
  spec.add_dependency 'torchtext', '~> 0.1.1'
  spec.add_dependency 'zlib', '~> 1.0.0'
  #spec.add_dependency 'numo-narray ', '~> 0.9.2.1'
  spec.add_dependency 'json', '~> 2.6.2'
  spec.add_development_dependency 'rubocop', '~> 1.37.1'
  spec.add_development_dependency 'rubocop-performance', '~> 1.15.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.14.2'
end
