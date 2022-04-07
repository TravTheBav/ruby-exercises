def caesar_cipher(str, shift_factor)
  chars = str.split('')
  chars.each_with_index do |char, idx|
    if ('a'..'z').include?(char)
      char_code = ((char.ord - 97 + shift_factor) % 26) + 97
    elsif ('A'..'Z').include?(char)
      char_code = ((char.ord - 65 + shift_factor) % 26) + 65
    else
      char_code = char.ord
    end
    chars[idx] = char_code.chr
  end
  chars.join
end
