module Primitive
  class Border
    attr_accessor :x, :y, :w, :h, :r, :g, :b, :a

    def primitive_marker
      :border
    end
  end
end
