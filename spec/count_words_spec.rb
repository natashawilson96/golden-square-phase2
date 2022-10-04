require 'count_words'

RSpec.describe "count words method" do
    it "takes string as arg and return number of words in string" do
        result = count_words("hello potato")
        expect(result).to eq 2


    end


end