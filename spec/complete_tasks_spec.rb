require "complete_tasks"

RSpec.describe CompleteTasks do
    it "when no task is added" do 
        complete_tasks = CompleteTasks.new
        complete_tasks.add("")
        expect {complete_tasks.display}.to raise_error "ADD SOMETHING!" 
        expect {complete_tasks.remove_completed("telephone Mum")}.to raise_error "NO TASK TO DELETE"
    end


    it "adds tasks and displays tasks" do
        complete_tasks = CompleteTasks.new
        complete_tasks.add("Grocery shopping")
        complete_tasks.add("Clean")
        expect(complete_tasks.display).to eq "TO DO: Grocery shopping, Clean"
    end

    it "removes completed tasks from list and returns updated list" do 
        complete_tasks = CompleteTasks.new
        complete_tasks.add("Grocery shopping")
        complete_tasks.add("Clean")
        complete_tasks.remove_completed("Grocery shopping")
        expect(complete_tasks.display). to eq "TO DO: Clean"
    end 

end