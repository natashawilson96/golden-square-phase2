require "challenge_todo"

RSpec.describe Todo2 do
    context "when no task is added" do
        it "returns empty string" do
            task_1 = Todo2.new("")
            expect(task_1.task).to eq ""
        end

        it "raises error to done? method" do
            task_1 = Todo2.new("")
            expect { task_1.done? }.to raise_error "NO TASK ADDED"
        end
    
    end


    context "when task is marked as done" do 
        it "returns true in done? method" do
            task_1 = Todo2.new("Walk the dog")
            task_2 = Todo2.new("Water the plants")
            task_1.mark_done!
            expect(task_1.done?). to eq true 
            expect(task_2.done?). to eq false
        end
    end

    context "when task is not marked as done" do 
        it "returns false in done? method" do
            task_1 = Todo2.new("Walk the dog")
            task_2 = Todo2.new("Water the plants")
            expect(task_1.done?). to eq false 
            expect(task_2.done?). to eq false
        end
    end



end