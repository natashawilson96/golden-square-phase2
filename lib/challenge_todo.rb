class Todo2
    def initialize(task) # task is a string
      @task = task
    end
  
    def task
      return @task
    end
  
    def mark_done!
      @task.prepend("DONE: ")
    end
  
    def done?
        if (@task.empty?)
            fail "NO TASK ADDED"
        elsif (@task.include?("DONE"))
            true
        else 
            false 
        end
    end
  end