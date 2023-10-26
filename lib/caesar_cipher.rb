# lowercase letters codepoint range: 97-122
# uppercase letters codepoint range: 65-90

def caesar_cipher(text, shift = 1)
  shifted = text.codepoints.map do |codepoint|
    new_codepoint = codepoint + shift

    if (97..122).cover?(codepoint)
      if new_codepoint > 122
        96 + (new_codepoint - 122)
      else
        new_codepoint
      end
    elsif (65..90).cover?(codepoint)
      if new_codepoint > 90
        64 + (new_codepoint - 90)
      else
        new_codepoint
      end
    else
      codepoint
    end
  end

  shifted.map { |codepoint| codepoint.chr }.join
end
