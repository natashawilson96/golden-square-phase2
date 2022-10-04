require 'makesnippet'

RSpec.describe "make_snippet method" do
    it "check the makesnippet method returns expected outcome" do
        result = make_snippet("hello")
        expect(result). to eq "hello"
        result = make_snippet("hellopotato")
        expect(result). to eq "hello..."
       
    end

end
