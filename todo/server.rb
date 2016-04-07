require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/task.rb')
require_relative('lib/todolist.rb')

todo_list = TodoList.new("Josh")
todo_list.add_task(Task.new("get milk"))
todo_list.add_task(Task.new("get jim"))

get "/tasks" do
  @tasks = todo_list.tasks
  erb(:task_index)
end

get "/" do
  erb(:date)
end

get "/hours/ago/:num" do
  @num = params[:num].to_i
  @time = Time.now
  @time_ago = @time- (@num * 3600)
  erb(:time)
end

post "/complete_task/:id" do
  task_id = params[:id].to_i
  task = todo_list.find_task_by_id(task_id)
  task.complete!
  redirect "/tasks"
end

post "/delete/:id" do
  task_id = params[:id].to_i
  todo_list.delete_task(task_id)
  redirect "/tasks"
end

get "/create_task" do
  erb(:create_task)
end

post "/create" do
  task_content = params[:task]
  new_task = Task.new(task_content)
  todo_list.add_task(new_task)
  redirect "/tasks"
end
