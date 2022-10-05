require 'DiaryEntry'

RSpec.describe DiaryEntry do
    it "returns the title of the book as a string" do
        entry = DiaryEntry.new("The five people you meet in heaven", "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so excited seeing the rides. My parents and brother liked the Thunderfall ride. My favorite rides were Water Splash, Caterpillar Ride, Wave Pool and Pirate Ship. After a couple of hours, we had our lunch. In the afternoon we had the scariest ride that is the Space Gun. We got back to our home in the evening. It was a great day and I enjoyed a lot. Sammy.")
        result = entry.title
        expect(result).to eq "The five people you meet in heaven"   
    end

    it "returns the contents of the diary as a string" do
        entry = DiaryEntry.new("The five people you meet in heaven", "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so excited seeing the rides. My parents and brother liked the Thunderfall ride. My favorite rides were Water Splash, Caterpillar Ride, Wave Pool and Pirate Ship. After a couple of hours, we had our lunch. In the afternoon we had the scariest ride that is the Space Gun. We got back to our home in the evening. It was a great day and I enjoyed a lot. Sammy.")
        result = entry.contents
        expect(result).to eq "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so excited seeing the rides. My parents and brother liked the Thunderfall ride. My favorite rides were Water Splash, Caterpillar Ride, Wave Pool and Pirate Ship. After a couple of hours, we had our lunch. In the afternoon we had the scariest ride that is the Space Gun. We got back to our home in the evening. It was a great day and I enjoyed a lot. Sammy."
    end

    it "calculates and returns the number of words in contents as an integer" do
        entry = DiaryEntry.new("The five people you meet in heaven", "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so excited seeing the rides. My parents and brother liked the Thunderfall ride. My favorite rides were Water Splash, Caterpillar Ride, Wave Pool and Pirate Ship. After a couple of hours, we had our lunch. In the afternoon we had the scariest ride that is the Space Gun. We got back to our home in the evening. It was a great day and I enjoyed a lot. Sammy.")
        result = entry.count_words
        expect(result).to eq 117
    end

    it "returns reading time in minutes for contents at given wpm" do
        entry = DiaryEntry.new("The five people you meet in heaven", "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so excited seeing the rides. My parents and brother liked the Thunderfall ride. My favorite rides were Water Splash, Caterpillar Ride, Wave Pool and Pirate Ship. After a couple of hours, we had our lunch. In the afternoon we had the scariest ride that is the Space Gun. We got back to our home in the evening. It was a great day and I enjoyed a lot. Sammy.")
        result = entry.reading_time(100)
        expect(result).to eq 1.17
    end

    it "returns string of contents user can read in given number of minutes" do
        entry = DiaryEntry.new("The five people you meet in heaven", "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so excited seeing the rides. My parents and brother liked the Thunderfall ride. My favorite rides were Water Splash, Caterpillar Ride, Wave Pool and Pirate Ship. After a couple of hours, we had our lunch. In the afternoon we had the scariest ride that is the Space Gun. We got back to our home in the evening. It was a great day and I enjoyed a lot. Sammy.")
        result = entry.reading_chunk(100, 0.5)
        expect(result).to eq "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so"
        result = entry.reading_chunk(100, 0.5)
        expect(result).to eq "excited seeing the rides. My parents and brother liked the Thunderfall ride. My favorite rides were Water Splash, Caterpillar Ride, Wave Pool and Pirate Ship. After a couple of hours, we had our lunch. In the afternoon we had the scariest ride that is the Space Gun. We got back"
        result = entry.reading_chunk(100, 0.5)
        expect(result).to eq " to our home in the evening. It was a great day and I enjoyed a lot. Sammy."
        result = entry.reading_chunk(100, 0.5)
        expect(result).to eq "Dear Diary, I woke up at 6 oclock in the morning. We had breakfast and dressed up. Today we all went to Fantasize Amusement park near Pune. We started from home at 7 oclock. As soon as we reached there, we bought our tickets and went inside. I was so"
    end
end
