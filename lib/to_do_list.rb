class TodoList

    def initialize
        @to_do_list = []
    end

    def add(task)
        @to_do_list << task

    end 

    def display
        if @to_do_list.join.empty? == true
            fail "ADD SOMETHING!"
        else 
            return @to_do_list.join(", ")
        end
    end
end
    
to_do_list = TodoList.new
to_do_list.add("Walk the dog")
to_do_list.add("Go for a jogging")
to_do_list.display

