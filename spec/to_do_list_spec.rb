require "to_do_list"

RSpec.describe TodoList do  
    it "when no task is added" do 
        to_do_list = TodoList.new
        to_do_list.add("")
        expect {to_do_list.display}.to raise_error "ADD SOMETHING!" 
    end
    it "adds tasks to do and dsiplay tasks" do 
        to_do_list = TodoList.new
        to_do_list.add("Walk the dog")
        to_do_list.add("Go for a jogging")
        expect(to_do_list.display).to eq "Walk the dog, Go for a jogging"
    end 

end
