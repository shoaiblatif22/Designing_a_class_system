require "ToDoList"

RSpec.describe ToDoList do
  let(:todo_list) { ToDoList.new }

  describe "#add_task" do
    it "adds a new task to the todo list" do
      todo_list.add_task("Finish report")
      expect(todo_list.tasks.size).to eq(1)
    end
  end
end
