require_relative 'base'

# Namespace for the Taipu library.
module Taipu
  # The type number.
  class Hash < Base
    def valid?(value)
      value.is_a?(::Hash)
    end
  end
end
