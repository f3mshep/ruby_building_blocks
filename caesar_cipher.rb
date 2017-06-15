
def cipher(string, shift)
  words = string.split
  ascii = []
  res = []
  words.each {|word| ascii << encoder(word)}
  ascii.each {|word| res << decoder(word, shift)}
  res.join(' ')
end


def encoder(word)
  down = ("a".."z").to_a
  up = ("A".."Z").to_a
  alphabet = up + down
  res = []
  word.each_char do |ch|
      if alphabet.include?(ch) == false
        res << ch
      else
      res << alphabet.index(ch)
      end
  end
  res
end

def decoder(word, shift)
  down = ("a".."z").to_a
  up = ("A".."Z").to_a
  punct = "!';,./?"
  res = ''
  alphabet = up + down
  word.each do |ch|
    if punct.include?(ch.to_s)
      res << ch
      next
    end
    if ch > 25
      if shift + ch > 51
        ch = shift + ch % 51
        res << alphabet[ch]
      else
        ch += shift
        res << alphabet[ch]
      end
    elsif ch <= 25
      if shift + ch > 25
        ch = ch % 25
        res << alphabet[ch]
      else
        ch += shift
        res << alphabet[ch]
      end
    end
  end
  res
end

p "Please enter a string to be encoded"
user_input = gets.chomp

p "Please enter an integer for encryption"
encryption = gets.chomp.to_i

results = cipher(user_input, encryption)

p "Encoded message:"
p results
