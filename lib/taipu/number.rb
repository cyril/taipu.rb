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

    def valid?(value)
      return false unless value.is_a?(::Numeric)
      return false if !@min.nil? && value < @min
      return false if !@max.nil? && value > @max

      true
    end

    def constraints
      {
        min: @min,
        max: @max
      }
    end
  end
end
