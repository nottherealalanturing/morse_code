@alpha_to_morse = {
    'a' => '.-',
    'b' => '-...',
    'c' => '-.-.',
    'd' => '-..',
    'e' => '.',
    'f' => '..-.',
    'g' => '--.',
    'h' => '....',
    'i' => '..',
    'j' => '.---',
    'k' => '-.-',
    'l' => '.-..',
    'm' => '--',
    'n' => '-.',
    'o' => '---',
    'p' => '.--.',
    'q' => '--.-',
    'r' => '.-.',
    's' => '...',
    't' => '-',
    'u' => '..-',
    'v' => '...-',
    'w' => '.--',
    'x' => '-..-',
    'y' => '-.--',
    'z' => '--..',
    '1' => '.----',
    '2' => '..---',
    '3' => '...--',
    '4' => '....-',
    '5' => '.....',
    '6' => '-....',
    '7' => '--...',
    '8' => '---..',
    '9' => '----.',
    '0' => '-----',
    ' ' => '/'
  }
  
  def decode_char(character)
    @alpha_to_morse.keys.each do |x|
      return x if @alpha_to_morse[x] == character
    end
  end
  
  def decode_word(str)
    str.split.map { |char| decode_char(char) }.join
  end
  
  def morse_to_alpha(str)
    str.split('   ').map { |word| decode_word(word) }.join(' ')
  end
  
  puts(morse_to_alpha('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
  