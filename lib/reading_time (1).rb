# 1- Porblem decomposition
#As a user
#So that I can manage my time
#I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

#2- design the method signature
def reading_time(text)
    list = text.split(/ /)
    words = list.length
    if words == 0
        fail "ERROR NO TEXT HAS BEEN GIVEN"
    elsif words <= 200
    return "The estimated reading time is 1 min"

    else
        return "The estimated reading time is #{words/200} min"
    end
end

#3 create exemples as tests




