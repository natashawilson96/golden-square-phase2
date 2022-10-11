class TodoList2
    def initialize
        @incompleted_tasks = []
        @completed_tasks = []
    end
  
    def add(entry)
        if (entry.done? == true)
            @completed_tasks << entry
        else 
            @incompleted_tasks << entry
        end
    end
  
    def incomplete
        return @incompleted_tasks
    end
  
    def complete
        return @completed_tasks
    end
  
    def give_up!
      if (@incompleted_tasks.empty? && @completed_tasks.empty?)
        fail "NO TASKS TO MARK AS COMPLETE"
    
      elsif (@incompleted_tasks.empty?)
        fail "TASKS ARE ALREADY ALL COMPLETED"
      else 
        @completed_tasks.concat(@incompleted_tasks)
        @incompleted_tasks.clear()
      end
    end

  end


#shows all incomplete tasks
# to_do_list = TodoList2.new
# task_1 = Todo2.new("Walk the dog")
# task_2 = Todo2.new("Water the plants")
# to_do_list.add(task_1)
# to_do_list.add(task_2)
# to_do_list.incomplete =>  [task_1, task_2]

#shows all complete tasks
#to_do_list = TodoList2.new
# task_1 = Todo2.new("Walk the dog")
# task_2 = Todo2.new("Water the plants")
# task_1.mark_done!
# task_1.done?
# to_do_list.add(task_1)
# to_do_list.add(task_2)
#to_do_list.complete => [task_1]

#give up - marks all tasks as complete
# to_do_list = TodoList2.new
# task_1 = Todo2.new("Walk the dog")
# task_2 = Todo2.new("Water the plants")
# to_do_list.add(task_1)
# to_do_list.add(task_2)
# task_1.mark_done!
# task_1.done?
# task_2.mark_done!
# task_2.done?
