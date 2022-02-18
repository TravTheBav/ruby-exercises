def substrings(str, dictionary)
    substrings = Hash.new(0)
    words = str.split(" ") # handles multiple word strings
    words.each do |word|
        chars = word.split("")
        chars.each_with_index do |char, start_idx|
            end_idx = word.length - 1
            while end_idx >= start_idx # includes substrings of length 1
                substring = chars[start_idx..end_idx].join.downcase
                if dictionary.include?(substring)
                    substrings[substring] += 1
                end
                end_idx -= 1
            end
        end
    end
    substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
