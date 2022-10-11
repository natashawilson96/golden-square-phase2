require "diary"
require "diary_entry2"

RSpec.describe "Diary integration" do
    context "after adding some diary entries" do
        it "gets all diary entries" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
            entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich " * 20)
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.all).to eq [entry_1, entry_2]
        end

        describe "#count_words" do 
            it "counts the words of contents in diary entries" do
                diary = Diary.new
                entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
                entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich " * 20)
                diary.add(entry_1)
                diary.add(entry_2)
                expect(diary.count_words).to eq 200
            end     
        end

        describe "#reading_time" do
            it "fails when wpm is 0" do
                diary = Diary.new
                entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
                diary.add(entry_1)
                expect { diary.reading_time(0) }.to raise_error ("WPM must be positive")
            end 





            it "returns integer for the reading time in minutes" do 
                diary = Diary.new
                entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
                entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich " * 20)
                diary.add(entry_1)
                diary.add(entry_2)
                expect(diary.reading_time(25)).to eq 8
            end
        end

        describe "#find_best_entry_for_reading_time" do
            context "we have one entry and it is below the possible amount of words to read in given time" do
                it "returns the entry" do 
                    diary = Diary.new
                    entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
                    diary.add(entry_1)
                    result = diary.find_best_entry_for_reading_time(25, 9)
                    expect(result).to eq entry_1
                end
            end

            context "we have one entry and it is unreadable in the time" do
                it "returns nil" do
                    diary = Diary.new
                    entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
                    diary.add(entry_1)
                    result = diary.find_best_entry_for_reading_time(25, 2)
                    expect(result).to eq nil
                end
            end

            context "we have more than one entry" do
                it "returns instance of diary entry which is closest in length to possible amount of text for given wpm and minutes" do
                    diary = Diary.new
                    best_entry = DiaryEntry.new("Wednesday 13th November", "Hi " * 110)
                    entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
                    entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich " * 20)
                    entry_3 = DiaryEntry.new("Tuesday 9th November", "I cried " * 20)
                    diary.add(entry_1)
                    diary.add(entry_2)
                    diary.add(entry_3)
                    diary.add(best_entry)
                    result = diary.find_best_entry_for_reading_time(25, 4.5)
                    expect(result).to eq best_entry
                end 
            end

        end

    end
    
end
