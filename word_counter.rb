def word_counter
  puts "Hello, please input a string for data purposes"
  user_input = gets.chomp

  counter_hash = Hash.new(0)
  words = user_input.split
  words.each do |word|
    counter_hash[word] += 1
  end
  counter_hash = counter_hash.sort_by { |key, value| value }
  counter_hash.reverse.each {|key, value | puts key + " " + value.to_s}
end

p word_counter
