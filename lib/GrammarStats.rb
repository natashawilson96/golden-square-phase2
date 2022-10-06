class GrammarStats
    def initialize
        @bank_of_texts_all = []
        @bank_of_texts_passed = []
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      @bank_of_texts_all << text
      checked_text = text.start_with?(text[0].upcase) && text.end_with?(".", "!", "?")

      if (checked_text == true)
          @bank_of_texts_passed << text
      else  
      end
      
      return checked_text
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      percentage_text = (@bank_of_texts_passed.length / @bank_of_texts_all.length.to_f)*100    
    end
  end

  grammar_stat = GrammarStats.new
  grammar_stat.check("Potato head.")
  grammar_stat.check("fail")
  grammar_stat.percentage_good
