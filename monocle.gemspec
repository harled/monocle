# frozen_string_literal: true

require_relative "lib/monocle/version"

Gem::Specification.new do |spec|
  spec.name = "monocle"
  spec.version = Monocle::VERSION
  spec.authors = [ "Jonathan Loos", "Chris Young" ]
  spec.email = [ "jon@harled.ca", "chris@harled.ca" ]

  spec.summary = "Esteemed insights for authorization exceptions."
  spec.description = "Monocle offers a set of view components to derive UX insights from your authorization errors."
  spec.homepage = "https://github.com/harled/monocle"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/harled/monocle"
  spec.metadata["changelog_uri"] = "https://github.com/harled/monocle/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = [ "lib" ]

  spec.add_dependency "view_component"
  spec.add_dependency "groupdate"
end
