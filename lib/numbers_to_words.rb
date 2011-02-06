module NumbersToWords

  autoload :Translators, File.join(File.dirname(__FILE__), 'numbers_to_words/translators')
  autoload :Helpers, File.join(File.dirname(__FILE__), 'numbers_to_words/helpers')

end

NumbersToWords::Helpers.attach_helper_methods!
