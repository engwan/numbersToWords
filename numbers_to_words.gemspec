# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{numbers_to_words}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Engwan"]
  s.date = %q{2011-02-07}
  s.description = %q{Helper methods to convert numbers to english words}
  s.email = %q{}
  s.extra_rdoc_files = ["README", "lib/numbers_to_words.rb", "lib/numbers_to_words/helpers.rb", "lib/numbers_to_words/helpers/float_helper.rb", "lib/numbers_to_words/helpers/integer_helper.rb", "lib/numbers_to_words/translators.rb", "lib/numbers_to_words/translators/us_english_translator.rb"]
  s.files = ["Manifest", "README", "Rakefile", "init.rb", "lib/numbers_to_words.rb", "lib/numbers_to_words/helpers.rb", "lib/numbers_to_words/helpers/float_helper.rb", "lib/numbers_to_words/helpers/integer_helper.rb", "lib/numbers_to_words/translators.rb", "lib/numbers_to_words/translators/us_english_translator.rb", "spec/helpers/float_spec.rb", "spec/helpers/integer_spec.rb", "spec/spec_helper.rb", "spec/translators/english_spec.rb", "numbers_to_words.gemspec"]
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Numbers_to_words", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{numbers_to_words}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Helper methods to convert numbers to english words}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
