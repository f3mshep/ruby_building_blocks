def silly_substrings(substring, dictionary)
  counter_hash = Hash.new(0)
  words = substring.downcase.split
  words.each do |word|
    dictionary.each do |entry|
      if word.include?(entry)
        counter_hash[entry] += 1
      end
    end
end
  counter_hash
end
