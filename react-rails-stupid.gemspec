# encoding: utf-8

$:.push File.expand_path('../lib', __FILE__)
require 'react/rails/version'

Gem::Specification.new do |s|
  s.name = 'react-rails-stupid'
  s.version = React::Rails::VERSION
  s.summary = 'Stupid React/JSX adapter for the Ruby on Rails asset pipeline.'
  s.description = 'Compile your JSX on demand or precompile for production.'
  s.homepage = 'https://github.com/reactjs/react-rails'
  s.license = 'Apache-2.0'

  s.author = ['a-x-']
  s.email = ['invntrm@gmail.com']

  s.add_dependency 'coffee-script-source', '~>1.8'
  s.add_dependency 'connection_pool'
  s.add_dependency 'execjs'
  s.add_dependency 'rails', '>= 3.2'
  s.add_dependency 'tilt'

  s.files = Dir[
    'lib/**/*',
    'README.md',
    'LICENSE'
  ]

  s.require_paths = ['lib']
end
