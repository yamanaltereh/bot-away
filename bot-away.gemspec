# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bot-away}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Colin MacKenzie IV"]
  s.date = %q{2010-10-14}
  s.description = %q{Unobtrusively detects form submissions made by spambots, and silently drops those submissions.}
  s.email = %q{sinisterchipmunk@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "LICENSE",
     "Manifest.txt",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bot-away.gemspec",
     "lib/bot-away.rb",
     "lib/bot-away/action_dispatch/request.rb",
     "lib/bot-away/action_view/helpers/instance_tag.rb",
     "lib/bot-away/param_parser.rb",
     "lib/bot-away/spinner.rb",
     "script/console",
     "script/destroy",
     "script/generate",
     "spec/controllers/test_controller_spec.rb",
     "spec/rspec_version.rb",
     "spec/spec_helper.rb",
     "spec/support/honeypot_matcher.rb",
     "spec/support/obfuscation_helper.rb",
     "spec/support/obfuscation_matcher.rb",
     "spec/support/rails/mock_logger.rb",
     "spec/support/test_controller.rb",
     "spec/support/views/test/index.html.erb",
     "spec/support/views/test/model_form.html.erb",
     "spec/views/lib/action_view/helpers/instance_tag_spec.rb",
     "spec/views/lib/disabled_for_spec.rb",
     "spec/views/lib/form_builder_spec.rb",
     "spec/views/lib/param_parser_spec.rb"
  ]
  s.homepage = %q{http://www.thoughtsincomputation.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Unobtrusively detects form submissions made by spambots, and silently drops those submissions.}
  s.test_files = [
    "spec/controllers/test_controller_spec.rb",
     "spec/rspec_version.rb",
     "spec/spec_helper.rb",
     "spec/support/honeypot_matcher.rb",
     "spec/support/obfuscation_helper.rb",
     "spec/support/obfuscation_matcher.rb",
     "spec/support/rails/mock_logger.rb",
     "spec/support/test_controller.rb",
     "spec/views/lib/action_view/helpers/instance_tag_spec.rb",
     "spec/views/lib/disabled_for_spec.rb",
     "spec/views/lib/form_builder_spec.rb",
     "spec/views/lib/param_parser_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, [">= 2.3.5"])
      s.add_runtime_dependency(%q<sc-core-ext>, [">= 1.1.1"])
      s.add_development_dependency(%q<jeweler>, [">= 1.4.0"])
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 1.3.2"])
    else
      s.add_dependency(%q<actionpack>, [">= 2.3.5"])
      s.add_dependency(%q<sc-core-ext>, [">= 1.1.1"])
      s.add_dependency(%q<jeweler>, [">= 1.4.0"])
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<rspec-rails>, [">= 1.3.2"])
    end
  else
    s.add_dependency(%q<actionpack>, [">= 2.3.5"])
    s.add_dependency(%q<sc-core-ext>, [">= 1.1.1"])
    s.add_dependency(%q<jeweler>, [">= 1.4.0"])
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<rspec-rails>, [">= 1.3.2"])
  end
end

