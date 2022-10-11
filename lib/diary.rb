
class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) 
      @entries << entry
    end
  
    def all
      return @entries 
    end
  
    def count_words
        
        return @entries.map do |entry|
            entry.count_words
        end.sum
      
    end
  
    def reading_time(wpm) 
      fail "WPM must be positive" unless wpm.positive?
      return (count_words / wpm.to_f).ceil
  
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)

      possible_number_of_words = wpm * minutes

      readable_entries = @entries.filter do |entry|
        entry.count_words <= possible_number_of_words
      end 

      sorted_by_longest = readable_entries.sort_by do |entry| 
         entry.count_words
      end
      
      if (readable_entries == nil)
        return nil
      else 
      sorted_by_longest.last
      end 

    end
end
  
# #gets all entries
# diary = Diary.new
# entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach!" * 20)
# entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich" * 20)
# diary.add(entry_1)
# diary.add(entry_2)
# diary.all # => [entry_1, entry_2]

# #counts words in entries
# diary = Diary.new
# entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach!" * 20)
# entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich" * 20)
# diary.add(entry_1)
# diary.add(entry_2)
# diary.count_words # => [120, 80]

# #reading time for all entries
# diary = Diary.new
# entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach!" * 20)
# entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich" * 20)
# diary.add(entry_1)
# diary.add(entry_2)
# entry_1.reading_time(25)
# entry_2.reading_time(25)
# diary.reading_time(25) # => [entry_1.reading_time + entry_2.reading_time]

# #finds best entry for reading time
# diary = Diary.new
# entry_1 = DiaryEntry.new("Monday 11th November", "Today I went to the beach!" * 20)
# entry_2 = DiaryEntry.new("Tuesday 12th November", "I ate a sandwich" * 20)
# diary.add(entry_1)
# diary.add(entry_2)
# diary.find_best_entry_for_reading_time(25, 5) # => [entry_1]
