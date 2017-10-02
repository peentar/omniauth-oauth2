lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-oauth2/version"

Gem::Specification.new do |gem|
  gem.add_dependency "oauth2",     "~> 1.4"
  gem.add_dependency "omniauth",   "~> 1.2"

  gem.add_development_dependency "bundler", "~> 1.0"
  gem.add_development_dependency "rubygems-tasks"

  gem.authors       = ["Michael Bleigh", "Erik Michaels-Ober", "Muhammad Mufid Afif"]
  gem.email         = ["michael@intridea.com", "sferik@gmail.com", "mufid@peentar.com"]
  gem.description   = "An abstract OAuth2 strategy for OmniAuth."
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/peentar/omniauth-oauth2"
  gem.licenses      = %w(MIT)

  gem.executables   = `git ls-files -- bin/*`.split("\n").collect { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-oauth2"
  gem.require_paths = %w(lib)
  gem.version       = OmniAuth::OAuth2::VERSION
end
