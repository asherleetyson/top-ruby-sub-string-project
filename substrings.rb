def substrings (input, dictionary)
    result = Hash.new(0)
    lowered_text = input.downcase

    dictionary.each do |word|
        matches = lowered_text.scan(word).length
        result[word] = matches unless matches == 0
    end

    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Hello go sit down", dictionary)