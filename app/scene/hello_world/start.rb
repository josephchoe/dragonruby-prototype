module Scene
  class HelloWorld
    class Start < Primitive::Label
      def initialize
        self.text = "Press start"
        self.r = 200
        self.g = 200
        self.b = 200
        self.size_enum = 5
      end

      def self.build
        instance = new
        instance
      end

      def self.configure(receiver, attr_name: nil)
        attr_name ||= :start
        instance = build
        receiver.send("#{attr_name}=", instance)
      end

      def call(right, bottom)
        self.x = right / 2 - 87
        self.y = bottom.shift_up(100)

        self
      end
    end
  end
end
