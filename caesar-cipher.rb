require 'pry-byebug'

alphabet = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz'.chars
#lowercase letters codepoint range: 97-122
#uppercase letters codepoint range: 65-90

def caesar_cipher(text, shift)
    utf = text.codepoints
    utf.map do |codepoint|
        if codepoint.between?(97-122) # checks for lowercase letters
            # code
        elsif codepoint.between?(65-90) # checks for uppercase letters
            # code
        end
    end
end

puts "Enter text to be encrypted:"

text = gets.chomp

puts "Enter shift factor of encryption:"

shift = gets.chomp.to_i

caesar_cipher(text, shift)