module NumbersToWords
  module Helpers::FloatHelper

    def to_words(number = self)
      number.to_i.to_words
    end

    def to_currency(number = self)
      use_and = false
      translator = Translators::USEnglishTranslator.new(use_and)
      currency = translator.to_spoken(number.floor)
      currency << ' Pesos' if currency != 'one'
      currency << ' Peso' if currency == 'one'
      change = ((number - number.to_i) * 100).round
      cent = change == 1 ? 'Centavo' : 'Centavos'
      currency << ' and ' << translator.to_spoken(change) << " #{cent}"
    end

  end
end
