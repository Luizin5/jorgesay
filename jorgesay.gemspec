# frozen_string_literal: true

require_relative "lib/jorgesay/version"

Gem::Specification.new do |spec|
  spec.name = "jorgesay"
  spec.version = Jorgesay::VERSION
  spec.authors = ["Luiz F"]
  spec.email = ["luizfelip079@outlook.com"]

  spec.summary = "cowsay, but without cows"
  spec.description = "jorge + cowsay = jorgesay"
  spec.homepage = "https://github.com/Luizin5/jorgesay"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.files = ["lib/jorgesay.rb","lib/jorgesay/version.rb","lib/jorgesay/main.rb","bin/jorgesay"] 
  spec.add_runtime_dependency "curses"



  #spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  #spec.files = Dir.chdir(File.expand_path(__dir__)) do
    #`git ls-files -z`.split("\x0").reject do |f|
    #  (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    #end
  #e
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
