module NumbersToWords
  class Helpers::IntegerHelper

    def to_words(number = self)
      translator = Translators::USEnglishTranslator.new
      translator.to_spoken(number).squeeze(' ').strip
    end

    def to_currency(number = self)
      translator = Translators::USEnglishTranslator.new
      currency = translator.to_spoken(number).squeeze(' ').strip
      currency << ' dollars' if currency != 'one'
      currency << ' dollar' if currency == 'one'
      currency
    end

  end
end
