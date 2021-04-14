dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
phrase = "Howdy partner, sit down! How's it going?"

def sub_strings(string, array)
  splited_phrase = string.downcase.split(' ')
  new_array = []
  array.each do | word |
    splited_phrase.each do | item |
      if (item.include?(word))
        new_array.push(word)
      end
    end
  end
  return new_array.tally
end

p sub_strings('below', dictionary);
p sub_strings(phrase, dictionary);
