CODE = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
}.freeze

def get_code(character)
    CODE[character]
end

def decode_msg(msg)
    result = ''
    msg.split('   ').each { |word|
        word.split(' ').each { |chr| 
            result = result + get_code(chr)
        }
        result = result + ' '
    }
    return result
end

puts decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# This will output: "A BOX FULL OF RUBIES".
puts decode_msg('-- -.--   -. .- -- .')  
# This will output: "MY NAME"
