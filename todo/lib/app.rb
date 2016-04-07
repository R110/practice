require_relative "task.rb"
require_relative "todolist.rb"

todo_list = TodoList.new
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy the milk"))
task = todo_list.find_task_by_id(1)


puts task
# Walk the dog
