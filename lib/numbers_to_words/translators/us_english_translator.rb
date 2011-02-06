module NumbersToWords
  class Translators::USEnglishTranslator
    # Formal, US English. Optional 'and'. Will not produce things
    # such as 'twelve hundred' but rather 'one thousand two hundred'.
    # The use of 'and' is incomplete; it is sometimes missed.

    DIGITS = %w(zero one two three four five six seven eight nine)
    TEENS  = %w(ten eleven twelve thirteen fourteen fifteen sixteen
                seventeen eighteen nineteen)
    TENS   = %w(hello world twenty thirty forty fifty sixty seventy
                eighty ninety)
    GROUPS = %w(thousand million billion trillion quadrillion
                quintillion sextillion septillion octillion nonillion
                decillion)
    K = 1000

    def initialize(conjunction = true)
      @conjunction = conjunction
    end

    def to_spoken(val)
      case val <=> 0
      when -1
          'negative ' + to_spoken(-val)
      when 0
          DIGITS[0]
      else
          group(val, 0).flatten.join(' ')
      end
    end

    private

    def group(val, level)
      x = group(val / K, level + 1) << GROUPS[level] if val >= K
      x.to_a << under_1000(val % K, level)
    end

    def under_1000(val, level)
      x = [DIGITS[val / 100]] << 'hundred' if val >= 100
      x.to_a << under_100(val % 100, (level == 0 and not x.nil?))
    end

    def under_100(val, junction)
      x = [('and' if @conjunction and junction)]    # wyf?
      case val
      when 0
          []
      when 1...10
          x << DIGITS[val]
      when 10...20
          x << TEENS[val - 10]
      else
          d = val % 10
          x << (TENS[val / 10] + ('-' + DIGITS[d] if d != 0).to_s)
      end
    end

  end
end
