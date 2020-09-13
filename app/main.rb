require 'app/scene/hello_world.rb'

$scene = Scene::HelloWorld.new

def tick(args)
  $scene.(args)
end
