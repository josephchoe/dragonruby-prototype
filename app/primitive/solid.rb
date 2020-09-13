module Primitive
  class Solid
    attr_accessor :x, :y, :w, :h, :r, :g, :b, :a

    def primitive_marker
      :solid
    end
  end
end
