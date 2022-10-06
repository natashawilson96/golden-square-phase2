class CompleteTasks 
    def initialize
        @list_of_tasks = []
    end

    def add(task)
        @list_of_tasks << task
    end

    def remove_completed(task)
        if @list_of_tasks.include?(task)
            return @list_of_tasks.delete(task)
        else 
            fail "NO TASK TO DELETE"
        end

    end


    def display
        if @list_of_tasks.join.empty? == true
            fail "ADD SOMETHING!"
        else 
            list = @list_of_tasks.join(", ")
            return "TO DO: #{list}"     
        end
    end 


end



