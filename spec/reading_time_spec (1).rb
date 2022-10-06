require "reading_time"

RSpec.describe "method reading time" do
context "When the text is two hundreds words" do 
    it "returns one" do
        result = reading_time("one " * 200)
        expect(result).to eq "The estimated reading time is 1 min"
    end 
end 


context "When the text is one word" do
    it "returns one " do
        result = reading_time("one")
        expect(result).to eq "The estimated reading time is 1 min"
    end 
end 

context "when the text is above 600" do
    it "returns 3" do
        result = reading_time("one " * 600)
        expect(result).to eq "The estimated reading time is 3 min"
    end 
end

context "when empty string" do
    it "returns an error" do
        expect {reading_time("")}.to raise_error "ERROR NO TEXT HAS BEEN GIVEN"
    end
end
end


