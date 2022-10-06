#User story
# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

#Design Class Interface
class MusicTracker
    def initialize
        @list_of_tracks = []
    end

    def add(track)
        @list_of_tracks << track
    end

    def display 
        return @list_of_tracks.join(", ")
    end
end

#Examples

# music_tracker = MusicTracker.new
# # music_tracker.display => []

# music_tracker = MusicTracker.new
# music_tracker.add("Highway to Hell")
# music_tracker.add("Sunday Girl")
# music_tracker.display => "Highway to Hell, Sunday Girl"





