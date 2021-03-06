#encoding: utf-8

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

name = "teuton-get"
require "#{name}/version"
require 'date'

Gem::Specification.new do |s|
  s.name        = name
  s.version     = Version::VERSION
  s.date        = Date.today.strftime("%Y-%m-%d")
  s.summary     = "TeutonGet (Teuton Software)"
  s.description = <<-EOF
    Find and download Teuton Test.
  EOF

  s.extra_rdoc_files = [ 'README.md', 'LICENSE' ] +
                       Dir.glob(File.join('docs','**','*.md'))

  s.license     = 'GPL-3.0'
  s.authors     = ['David Vargas Ruiz']
  s.email       = 'teuton.software@protonmail.com'
  s.homepage    = Version::HOMEPAGE

  s.executables << 'teutonget'
  s.files       = Dir.glob(File.join('lib', '**', '*.*'))

  s.required_ruby_version = '>= 2.5.0'

  s.add_runtime_dependency 'inifile', '~> 3.0'
  s.add_runtime_dependency 'colorize', '~> 0.8.1'
  s.add_runtime_dependency 'terminal-table', '~> 3.0'
  s.add_runtime_dependency 'thor', '~> 1.1'

  s.add_development_dependency 'minitest', '~> 5.11'
end
