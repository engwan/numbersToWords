module NumbersToWords
  module Helpers

    autoload :IntegerHelper, File.join(File.dirname(__FILE__), 'helpers/integer_helper')
    autoload :FloatHelper, File.join(File.dirname(__FILE__), 'helpers/float_helper')

    def self.attach_helper_methods!
      Integer.send(:include, IntegerHelper)
      Float.send(:include, FloatHelper)
    end

  end
end
