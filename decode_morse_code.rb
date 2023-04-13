def decode_char(char)
  morse_map = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }

  morse_map[char]
end

def decode_word(string)
  word = ''
  array = string.split
  array.each do |elem|
    word += decode_char(elem)
  end
  word
end

def decode_message(string)
  secret_message = ''
  message_array = string.split('   ')
  message_array.each do |word|
    secret_message += "#{decode_word(word)} "
  end
  puts secret_message
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
