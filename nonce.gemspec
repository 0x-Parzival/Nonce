# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nonce}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["0xParzival"]
  s.date = %q{2024-10-07}
  s.description = %q{== DESCRIPTION:  Nonce is a module to aid in the creation of Domain Specific Languages using block structure. By including Nonce into your classes, you will be able to instantiate that class using the class name itself, followed by any parameters to be passed to initialize, followed by a block to be executed within the instantiated class.  Nonce also allows methods to search up the chain of classes, meaning that although a block is executed in the scope of the instantiated class, any methods not found in the class but found in a class "up-scope" will be called successfully on the up-scope class. This chaining of method calls allows you to assert values within the blocks as well as calling any other methods from "up-scope" classes.  == FEATURES/PROBLEMS:}
  s.email = %q{keshavbruh@gmail.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "example/roster.rb", "example/roster_dsl.rb", "example/student.rb", "lib/nonce.rb", "spec/bar.rb", "spec/nonce_spec.rb", "spec/foo.rb", "test/bar.rb", "test/baz.rb", "test/foo.rb", "test/nonce.rb"]
  s.has_rdoc = true
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nonce}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{tool for building DSLs with blocks}
  s.test_files = ["test/test_nonce.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<need>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<rspec>, [">= 1.1.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<need>, [">= 1.0.1"])
      s.add_dependency(%q<rspec>, [">= 1.1.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<need>, [">= 1.0.1"])
    s.add_dependency(%q<rspec>, [">= 1.1.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
