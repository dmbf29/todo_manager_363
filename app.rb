require_relative 'repository'
require_relative 'view'
require_relative 'controller'
require_relative 'router'

# csv_file = "data/recipes.csv"
repository = Repository.new() # hold all tasks
controller = Controller.new(repository) # handle user actions
router = Router.new(controller) # call right user action

router.run
