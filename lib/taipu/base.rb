# Namespace for the Taipu library.
module Taipu
  # Abstract class.
  class Base
    def to_h
      {
        type: to_sym
      }.merge(constraints)
    end

    def to_sym
      self.class.name.split('::').last.downcase.to_sym
    end

    def constraints
      {}
    end
  end
end
