require "diary_entry"

RSpec.describe DiaryEntry do
    it "constructs" do 
        diary_entry = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
        expect(diary_entry.title).to eq "Monday 11th November"
        expect(diary_entry.contents).to eq ("Today I went to the beach! " * 20)
    end

    describe "#count_words" do
        it "returns 0 if no contents is added" do
            diary_entry = DiaryEntry.new("Monday 11th November", "")
            expect(diary_entry.count_words).to eq 0
        end
        
        it "counts the number of words of the content" do
            diary_entry = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
            expect(diary_entry.count_words).to eq 120
        end
    end

    describe "#reading_time" do
        it "calculates reading time in minutes for contents at given wpm" do
            diary_entry = DiaryEntry.new("Monday 11th November", "Today I went to the beach! " * 20)
            expect(diary_entry.reading_time(25)).to eq 5
        end
    end





end 