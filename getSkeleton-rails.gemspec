# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'getSkeleton/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "getSkeleton-rails"
  spec.version       = GetSkeleton::Rails::VERSION
  spec.authors       = ["Arin Houck"]
  spec.email         = ["arinhouck@gmail.com"]

  spec.summary       = %q{Get Skeleton for Rails}
  spec.description   = %q{Ruby gem that will inject the Skeleton library in your project.}
  spec.homepage      = "https://github.com/arinhouck/getSkeleton-rails"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
