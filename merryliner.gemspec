# frozen_string_literal: true

require_relative "lib/merryliner/version"

Gem::Specification.new do |spec|
  spec.name = "merryliner"
  spec.version = Merryliner::VERSION
  spec.authors = ["Tarik Merrylees"]
  spec.email = ["tarik.merrylees@madetech.com"]

  spec.summary = "This is an exercise where one must create a linewrapper gem"
  spec.description = "This is an exercise where one must create a linewrapper gem. It is part of a MT Academy exercise. Soon this gem will be all up in the business of wrapping texts."
  spec.homepage = "https://github.com/merryfaceTech/merryliner.git"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/merryfaceTech/merryliner"
  spec.metadata["changelog_uri"] = "https://github.com/merryfaceTech/merryliner/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
