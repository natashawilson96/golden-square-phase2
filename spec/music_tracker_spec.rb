require "music_tracker"

RSpec.describe MusicTracker do 
    it "no tracks are added it should have an empty list" do
        music_tracker = MusicTracker.new
        expect(music_tracker.display).to eq ""
    end

    it "adds one track to list and displays it" do
        music_tracker = MusicTracker.new
        music_tracker.add("Highway to Hell")
        expect(music_tracker.display).to eq "Highway to Hell"
    end

    it "adds multiple tracks to list and displays them" do
        music_tracker = MusicTracker.new
        music_tracker.add("Highway to Hell")
        music_tracker.add("Sunday Girl")
        expect(music_tracker.display).to eq "Highway to Hell, Sunday Girl"
    end


end