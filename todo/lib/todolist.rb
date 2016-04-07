class TodoList
    attr_reader :tasks, :name
    def initialize(user)
        @tasks = []
        @user = user
    end
    def add_task(task)
      @tasks << task
    end
    def find_task_by_id(id)
      unless @tasks.select{|task| task.id == id}.length == 0
        @tasks.select{|task| task.id == id}[0]
      else
        return nil
      end
    end
    def delete_task(id)
      @tasks.delete_at(  @tasks.index{|task| task.id == id }  )
    end
    def sort_by_created(str)
      sorted_tasks = @tasks.dup
        if str == "ASC"
          @tasks.sort!{|a,b| a.created_at <=> b.created_at }
          #@tasks = sorted_tasks
        elsif str == "DESC"
          @tasks.sort!{ |a,b| b.created_at <=> a.created_at }
          @tasks #@tasks = sorted_tasks
        else
          puts "Invalid"
        end
    end
    def save(filename)
        @todo_store = YAML::Store.new("./public/#{filename}")

        @todo_store.transaction do
            # @todo_store["Josh"] = [ ... ]
            @todo_store[@user] = @tasks
        end
    end

    def load(filename)
        @todo_store = YAML::Store.new("./public/#{filename}")

        @todo_store.transaction do
            # @tasks = @todo_store["Josh"]
            @tasks = @todo_store[@user]

            if @tasks.nil?
                @tasks = []
            end
        end
    end
end
