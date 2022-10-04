def make_snippet(string)
    if string.length <= 5
        return string
    else 
        return string[0,5] + "..."
    end
end