require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name = "mcworld"
  s.version = "1.0.0"
  s.author = "Patrick Hurley"
  s.email = "phurley@gmail.com"
  s.homepage = "http://minecraft.net/"
  s.platform = Gem::Platform::RUBY
  s.summary = "Access and modify minecraft save files"
  s.description = "Access and modify minecraft save files. " +
                  "See the bin directory for a number of examples."
  s.rubyforge_project = "mcworld"

  files = %W[
    bin
    dat
    dat/test.nbt
    lib
    lib/mcworld
    lib/mcworld.rb
    mcworld.gemspec
    README
    spec
    spec/mcworld_spec.rb
    spec/spec.opts
    spec/spec_helper.rb
  ]
  s.files = files
  
  s.has_rdoc = true
end

if  __FILE__ == $PROGRAM_NAME
  Gem::manage_gems
  Gem::Builder.new(spec).build
end
