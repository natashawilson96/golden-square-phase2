require "challenge_todo_list"

RSpec.describe TodoList2 do
    context "when nothing is added to the list" do 
        it "returns an empty array" do 
            to_do_list = TodoList2.new
            expect(to_do_list.incomplete).to eq []
            expect(to_do_list.complete).to eq []
        end 

        it "raises an error for give_up!" do 
            to_do_list = TodoList2.new
            expect { to_do_list.give_up! }.to raise_error "NO TASKS TO MARK AS COMPLETE"
        end 

    end

end
