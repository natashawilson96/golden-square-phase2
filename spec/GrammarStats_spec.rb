require 'GrammarStats'

RSpec.describe GrammarStats do
    it "check GrammarStats" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Potato head.")).to eq true 
    end

    it "percentage_good" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Potato head.")
        grammar_stats.check("fail")
        expect(grammar_stats.percentage_good).to eq 50
    end

end