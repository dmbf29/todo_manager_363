require_relative 'task'
# handles all user actions
class Controller
  def initialize(repository)
    @repository = repository # INSTANCE
    @view = View.new # INSTANCE
  end

  def list
    display_tasks
  end

  def create
    # we need the title from the user
    # tell the view to get a title
    title = @view.ask_for_title
    task = Task.new(title)
    # tell the repository to save the task
    @repository.add(task)
  end

  def mark_as_done
    # display tasks
    display_tasks
    # index = ask the user which one youve done
    index = @view.ask_for_index
    # task = ask repo for the task -> find(index)
    task = @repository.find(index)
    # mark the task as done
    task.mark_as_done!
  end

  private

  def display_tasks
    tasks = @repository.all # load all tasks from repo
    @view.display_tasks(tasks) # give to view to display
  end
end
