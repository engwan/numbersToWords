module NumbersToWords
  class Helpers::FloatHelper

    def to_words(number = self)
      number.to_i.to_english
    end

    def to_currency(number = self)
      use_and = false
      translator = Translators::USEnglishTranslator.new(use_and)
      currency = translator.to_spoken(number.floor).squeeze(' ').strip
      currency << ' dollars' if currency != 'one'
      currency << ' dollar' if currency == 'one'
      change = ((number - number.to_i) * 100).round
      cent = change == 1 ? 'cent' : 'cents'
      currency << ' and ' << translator.to_spoken(change).squeeze(' ').strip << " #{cent}"
    end

  end
end
