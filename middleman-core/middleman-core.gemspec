# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require File.expand_path('../lib/middleman-core/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'middleman-core'
  s.version     = Middleman::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.authors     = ['Thomas Reynolds', 'Ben Hollis', 'Karl Freeman']
  s.email       = ['me@tdreyno.com', 'ben@benhollis.net', 'karlfreeman@gmail.com']
  s.homepage    = 'https://middlemanapp.com'
  s.summary     = 'Hand-crafted frontend development'
  s.description = 'A static site generator. Provides dozens of templating languages (Haml, Sass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.'

  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(fixtures|features|spec)/}) }
  s.require_path = 'lib'
  s.required_ruby_version = '>= 3.1.0'

  # Core
  s.add_dependency('bundler')
  s.add_dependency('rack', ['>= 1.4.5', '< 3'])
  s.add_dependency('tilt', ['~> 2.0.9'])
  s.add_dependency('erubis')
  s.add_dependency('parallel')
  s.add_dependency('servolux')
  s.add_dependency('dotenv')
  s.add_dependency('rgl', ['~> 0.5'])
  s.add_dependency('toml')
  s.add_dependency('webrick')

  # Helpers
  s.add_dependency('activesupport', ['>= 5.0.0'])
  s.add_dependency('padrino-helpers', ['~> 0.15.0'])
  s.add_dependency('addressable', ['~> 2'])
  s.add_dependency('memoist', ['~> 0'])

  # Watcher
  s.add_dependency('listen', ['~> 3'])

  # i18n
  s.add_dependency('i18n', ['~> 1'])

  # Automatic Image Sizes
  s.add_dependency('fastimage', ['~> 2'])

  # Sass and Minify CSS
  s.add_dependency('sassc', ['~> 2'])

  # Minify JS
  s.add_dependency('terser', ['~> 1.1'])
  s.add_dependency('execjs', ['~> 2'])

  # Perf
  s.add_dependency('oj', ['~> 3'])

  # Testing
  s.add_dependency('contracts', ['~> 0.17'])

  # Hash stuff
  s.add_dependency('hashie', ['~> 5'])
  s.add_dependency('hamster', ['~> 3'])
end
