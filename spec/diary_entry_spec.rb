require "diary_entry"

RSpec.describe DiaryEntry do
    it " Calling class DiaryEntry" do 
        diary_entry = DiaryEntry.new("Monday 11th June", "swim " * 200)
        expect(diary_entry.title).to eq "Monday 11th June"
        expect(diary_entry.contents).to eq ("swim " * 200)
        expect(diary_entry.count_words).to eq 200
        expect(diary_entry.reading_time(25)).to eq 8
        expect(diary_entry.reading_chunk(25, 5)).to eq ("swim " * 125)
    end

end 