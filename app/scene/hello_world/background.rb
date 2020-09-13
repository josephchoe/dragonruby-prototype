module Scene
  class HelloWorld
    class Background < Primitive::Solid
      def initialize
        self.r = 0
        self.g = 0
        self.b = 0
      end

      def self.build
        instance = new
        instance
      end

      def self.configure(receiver, attr_name: nil)
        attr_name ||= :background
        instance = build
        receiver.send("#{attr_name}=", instance)
      end

      def call(x, y, w, h)
        self.x = x
        self.y = y
        self.w = w
        self.h = h

        self
      end
    end
  end
end
