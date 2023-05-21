require "Diary"
require "DiaryEntry"
require "ToDoList"

RSpec.describe "Diary and ToDoList integration" do
  let(:diary) { Diary.new }
  let(:todo_list) { ToDoList.new }

  before do
    diary.add_entry("Today was a great day!", "2023-05-20", 30)
    diary.add_entry("Feeling tired but accomplished.", "2023-05-19", 45)
    todo_list.add_task("Finish report")
    todo_list.add_task("Buy groceries")
  end

  it "allows adding and retrieving tasks along with diary entries" do
    expect(diary.read_entries.size).to eq(2)
    expect(todo_list.tasks.size).to eq(2)
    expect(diary.read_entries.first.content).to eq("Today was a great day!")
    expect(diary.read_entries.last.content).to eq("Feeling tired but accomplished.")
    expect(todo_list.tasks).to match_array(["Finish report", "Buy groceries"])
  end
end