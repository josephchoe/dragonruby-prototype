module Scene
  class HelloWorld
    class Title < Primitive::Label
      def initialize
        self.text = "Hello, world!"
        self.r = 200
        self.g = 200
        self.b = 200
        self.size_enum = 20
      end

      def self.build
        instance = new
        instance
      end

      def self.configure(receiver, attr_name: nil)
        attr_name ||= :title
        instance = build
        receiver.send("#{attr_name}=", instance)
      end

      def call(left, top)
        self.x = left + 100
        self.y = top - 100

        self
      end
    end
  end
end
