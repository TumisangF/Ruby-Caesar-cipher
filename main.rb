def caesar_cipher (string, number)
    caesar_string = ""

    string.each_char do |letter|                   #iterate over each character
      if ("a".."z").include? (letter.downcase)     #identify letters only.
        number.times {letter = letter.next}        #shift the letter "number" of times
      end
      caesar_string << letter[-1]                  #append the character to the string "caesar_string"
    end
    return caesar_string
end

puts "What would you like to encrypt?"
text = gets.chomp

puts caesar_cipher( text, 5 )
