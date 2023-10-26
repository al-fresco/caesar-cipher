#lowercase letters codepoint range: 97-122
#uppercase letters codepoint range: 65-90

def caesar_cipher(text, shift = 1)
    utf = text.codepoints
    encrypted_int_array = utf.map do |codepoint|
        if codepoint.between?(97, 122) # checks for lowercase letters
            lowercase_shifted = codepoint + shift
            if lowercase_shifted > 122
                difference = lowercase_shifted - 122
                96 + difference
            end
        elsif codepoint.between?(65, 90) # checks for uppercase letters
            uppercase_shifted = codepoint + shift
            if uppercase_shifted > 90
                difference = uppercase_shifted - 90
                64 + difference
            end
        end
    end
    encrypted_chr_array = encrypted_int_array.map do |codepoint|
        codepoint.chr
    end
    encrypted_chr_array.join('')
end
