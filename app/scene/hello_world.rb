module Scene
  class HelloWorld
    attr_accessor :background,
                  :title,
                  :start

    def self.build
      instance = new
      instance.configure
      instance
    end

    def configure
      Background.configure(self)
      Title.configure(self)
      Start.configure(self)
    end

    def call(grid, outputs)
      rect = grid.rect
      left = grid.left
      right = grid.right
      top = grid.top
      bottom = grid.bottom

      outputs.solids << background.(*rect)
      outputs.labels << title.(left, top)
      outputs.labels << start.(right, bottom)
    end
  end
end
