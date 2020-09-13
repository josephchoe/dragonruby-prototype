module Scene
  class HelloWorld
    attr_accessor :background,
                  :title

    def self.build
      instance = new
      instance.configure
      instance
    end

    def configure
      Background.configure(self)
      Title.configure(self)
    end

    def call(grid, outputs)
      rect = grid.rect
      left = grid.left
      top = grid.top

      outputs.solids << background.(*rect)
      outputs.labels << title.(left, top)
    end
  end
end
