require "challenge_todo_list"
require "challenge_todo"

RSpec.describe "To Do integration" do
    context "after adding some entries" do
        it "gets all entries" do
            to_do_list = TodoList2.new
            task_1 = Todo2.new("Walk the dog")
            task_2 = Todo2.new("Water the plants")
            to_do_list.add(task_1)
            to_do_list.add(task_2)
            expect(to_do_list.incomplete).to eq([task_1, task_2])
        end

        context "#give_up!" do
            it "marks all tasks as completed" do
                to_do_list = TodoList2.new
                task_1 = Todo2.new("Walk the dog")
                task_2 = Todo2.new("Water the plants")
                task_1.mark_done!
                task_1.done?
                task_2.done?
                to_do_list.add(task_1)
                to_do_list.add(task_2)
                to_do_list.give_up!
                expect(to_do_list.complete).to eq([task_1, task_2])
                expect(to_do_list.incomplete).to eq([])

            end

            context "when all tasks are already completed" do
                it "raises error" do
                    to_do_list = TodoList2.new
                    task_1 = Todo2.new("Walk the dog")
                    task_2 = Todo2.new("Water the plants")
                    task_1.mark_done!
                    task_2.mark_done!
                    to_do_list.add(task_1)
                    to_do_list.add(task_2)
                    expect { to_do_list.give_up! }.to raise_error "TASKS ARE ALREADY ALL COMPLETED"
                end 
            end
                    
        end







        
    end
end