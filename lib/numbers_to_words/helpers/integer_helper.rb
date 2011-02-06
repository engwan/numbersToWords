module NumbersToWords
  module Helpers::IntegerHelper

    def to_words(number = self)
      translator = Translators::USEnglishTranslator.new
      translator.to_spoken(number)
    end

    def to_currency(number = self)
      translator = Translators::USEnglishTranslator.new
      currency = translator.to_spoken(number)
      currency << ' Pesos' if currency != 'one'
      currency << ' Peso' if currency == 'one'
      currency
    end

  end
end
