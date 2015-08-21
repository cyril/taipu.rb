require_relative 'base'

# Namespace for the Taipu library.
module Taipu
  # The type string.
  class String < Base
    def initialize(minlen: nil, maxlen: nil, pattern: nil)
      fail 'MinlenIsLongerThanMaxlenError' if !minlen.nil? && !maxlen.nil? &&
                                              minlen > maxlen

      @minlen   = minlen
      @maxlen   = maxlen
      @pattern  = pattern
    end

    def valid?(value)
      return false unless value.is_a?(::String)
      return false if !@minlen.nil? && value.length < @minlen
      return false if !@maxlen.nil? && value.length > @maxlen
      return false if !@pattern.nil? && @pattern.match(value).nil?

      true
    end

    def constraints
      {
        minlen:   @minlen,
        maxlen:   @maxlen,
        pattern:  @pattern
      }
    end
  end
end
