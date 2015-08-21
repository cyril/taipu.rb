require_relative 'base'

# Namespace for the Taipu library.
module Taipu
  # The type file.
  class File < Base
    def valid?(value)
      value.is_a?(::IO)
    end
  end
end
