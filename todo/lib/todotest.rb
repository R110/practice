require_relative "task.rb"
require_relative "todolist.rb"

describe TodoList do
  before(:all) do
    @list = TodoList.new("ja")
    @get_it = Task.new("get it")
    @second_task = Task.new("second")
    @third_task = Task.new("third")
    @list.add_task(@get_it)
    @list.add_task(@second_task)
    @list.add_task(@third_task)
  end
  describe "#add_task" do
    it "Adds a task to Todolist's task array" do
      expect(@list.tasks.length).to eq(3)
    end
  end
  describe "#find_task_by_id" do
    it "Finds first task with id of 1" do
      expect(@list.find_task_by_id(1)).to eq(@get_it)
    end
  end
  describe "#delete_task" do
    it "Deletes the task by id" do
      expect(@list.delete_task(1)).to eq(@get_it)
    end
  end

  describe "#sort_by_created" do
    it "Sorts by desc" do
      sortedlist = @list.sort_by_created("DESC")
      expect(sortedlist[0]).to eq(@third_task)
    end
  end

end
