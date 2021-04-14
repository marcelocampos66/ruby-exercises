def caesar_cipher_encode(string, number)
  alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  new_array = []
  splited_string = string.downcase.split('')
  splited_string.map { | letter |
    if letter == ' ' || alphabet.include?(letter) == false
      new_array.push(letter)
    elsif (alphabet.find_index(letter) + number) > (alphabet.length - 1)
      new_array.push((alphabet.find_index(letter) + number) - alphabet.length)
    else
      new_array.push((alphabet.find_index(letter) + number))
    end
  }
  encode = []
  new_array.map { | number |
    if number.is_a?(Numeric) == false
      encode.push(number)
    else 
      encode.push(alphabet[number])
    end
  }
  return encode.join('')
end

p caesar_cipher_encode('metal zoa eh uma carta de yu-gi-oh', 5);
