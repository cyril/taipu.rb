require_relative 'base'

# Namespace for the Taipu library.
module Taipu
  # The type number.
  class Array < Base
    def valid?(value)
      value.is_a?(::Array)
    end
  end
end
