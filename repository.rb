class Repository # holding tasks
  def initialize
    @tasks = [] # INSTANCES OF TASKS
  end

  def all
    @tasks
  end

  def add(task) # instance!
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
