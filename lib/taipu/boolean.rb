require_relative 'base'

# Namespace for the Taipu library.
module Taipu
  # The type boolean.
  class Boolean < Base
    def valid?(value)
      value.equal?(true) || value.equal?(false)
    end
  end
end
