lower_case_alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
upper_case_alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
def encrypt(string, shift_factor)
    # pass a string
    # convert string to array
    # convert each character to the letter of the alphabet that is 'shift_factor' spaces ahead of it
    # return encrypted string
    encrypted_string = ''
    string_as_array = string.chars



