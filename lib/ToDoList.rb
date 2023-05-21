class ToDoList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end
  
  def tasks
    @tasks
  end
end
