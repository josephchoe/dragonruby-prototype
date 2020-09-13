require 'app/primitive/solid.rb'
require 'app/primitive/border.rb'
require 'app/primitive/label.rb'

require 'app/scene/hello_world/background.rb'
require 'app/scene/hello_world/title.rb'
require 'app/scene/hello_world/start.rb'
require 'app/scene/hello_world.rb'

$scene = Scene::HelloWorld.build

def tick(args)
  grid = args.grid
  outputs = args.outputs

  $scene.(grid, outputs)
end
