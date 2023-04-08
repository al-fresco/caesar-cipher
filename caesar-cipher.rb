require 'pry-byebug'

alphabet = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz'.chars
#lowercase letters codepoint range: 97-122
#uppercase letters codepoint range: 65-90

def caesar_cipher(text, shift)
    text.codepoints.map do |codepoint|
        if alphabet.includes?(codepoint)
            (codepoint + shift).chr
        else
            codepoint
        end
    end
end

puts "Enter text to be encrypted:"

text = gets.chomp

puts "Enter shift factor of encryption:"

shift = gets.chomp.to_i

caesar_cipher(text, shift)