# Obs.: the method shifts only to the "right" along the alphabet
def caesar_cipher(message, shift_factor)
  encrypted_message = ''
  upcase_ascii_code_range = (65..90)
  downcase_ascii_code_range = (97..122)
  message.each_char do |char|
    char = change_to_standard_letter(char)
    if char.between?('A', 'z')
      ascii_code = char.ord
      if upcase_ascii_code_range.include?(ascii_code)
        shifted_number = keep_inside_limits(ascii_code, upcase_ascii_code_range, shift_factor)
      elsif downcase_ascii_code_range.include?(ascii_code)
        shifted_number = keep_inside_limits(ascii_code, downcase_ascii_code_range, shift_factor)
      end
      encrypted_message << shifted_number.chr
    else
      encrypted_message << char
    end
  end
  encrypted_message
end

def keep_inside_limits(number, range, shift_factor)
  upper_limit = range.last
  length = range.count
  shifted_num = number + shift_factor
  if shifted_num > upper_limit
    shifted_num = shifted_num - length
  end
  shifted_num
end

def change_to_standard_letter(character)
  if 'àãáâä'.include?(character)
    character = 'a'
  elsif 'éèêë'.include?(character)
    character = 'e'
  elsif 'íìîï'.include?(character)
    character = 'i'
  elsif 'òóôõö'.include?(character)
    character = 'o'
  elsif 'ùúûü'.include?(character)
    character = 'u'
  elsif character == 'ç'
    character = 'c'
  elsif 'ÀÃÁÂÄ'.include?(character)
    character = 'A'
  elsif 'ÈÉÊË'.include?(character)
    character = 'E'
  elsif 'ÍÌÏÎ'.include?(character)
    character = 'I'
  elsif 'ÒÓÖÔÕ'.include?(character)
    character = 'O'
  elsif 'ÙÚÜÛ'.include?(character)
    character = 'U'
  elsif character == 'Ç'
    character = 'C'
  end
  character
end

msg = '"Löffel" means "spoon" in german!'
f = 5
enc_msg = caesar_cipher(msg, f)
puts enc_msg