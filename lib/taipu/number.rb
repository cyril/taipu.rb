require_relative 'base'

# Namespace for the Taipu library.
module Taipu
  # The type number.
  class Number < Base
    def initialize(min: nil, max: nil)
      fail 'MinIsGreaterThanMaxError' if !min.nil? && !max.nil? && min > max

      @min = min
      @max = max
    end

    def constraints
      {
        min: @min,
        max: @max
      }
    end
  end
end
