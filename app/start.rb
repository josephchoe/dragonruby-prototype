$scene = Scene::HelloWorld.build

def tick(args)
  grid = args.grid
  outputs = args.outputs

  $scene.(grid, outputs)
end
