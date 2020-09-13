module Scene
  class HelloWorld
    def call(args)
      args.outputs.labels  << [640, 500, 'Hello, World!', 5, 1]
    end
  end
end
