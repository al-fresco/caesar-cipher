require 'pry-byebug'

alphabet = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz'.chars
#lowercase letters codepoint range: 97-122
#uppercase letters codepoint range: 65-90

def caesar_cipher(text, shift)
    utf = text.codepoints
    encrypted_int_array = utf.map do |codepoint|
        if codepoint.between?(97, 122) # checks for lowercase letters
            codepoint + shift
        elsif codepoint.between?(65, 90) # checks for uppercase letters
            codepoint + shift
        end
    end
    encrypted_chr_array = encrypted_int_array.map do |codepoint|
        codepoint.chr
    end
    encrypted_chr_array.join('')
end

puts "Enter text to be encrypted:"

text = gets.chomp

puts "Enter shift factor of encryption:"

shift = gets.chomp.to_i

p caesar_cipher(text, shift)