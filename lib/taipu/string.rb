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

    def constraints
      {
        minlen:   @minlen,
        maxlen:   @maxlen,
        pattern:  @pattern
      }
    end
  end
end
