require 'pry-byebug'
alphabet_string = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz'
alphabet_array = alphabet_string.chars
binding.pry
def caesar_cipher(string, key)