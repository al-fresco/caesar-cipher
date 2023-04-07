lower_case_alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
upper_case_alphabet = lower_case_alphabet.upcase
def caesar_cipher(string, shift_factor)
    string_chars = string.chars
    string_chars.each do |char|
        if lower_case_alphabet.includes?(char)
            # do something
        elsif upper_case_alphabet.includes?(char)
            # do something else\
        end
    end
end