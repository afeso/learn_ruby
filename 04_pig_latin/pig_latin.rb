def translate(word)
  pig_latined = []
  multi_word_array = word.split(' ')

  multi_word_array.each do |call_piggy|
    temp_variable = piggy(call_piggy)
    # puts "temp var is #{temp_variable}"
    pig_latined.push(temp_variable)
  end
  # puts "pig_latined is #{pig_latined}"
  return pig_latined.join(' ')
end

def piggy(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  phoneme = ['qu']
  empty_array = []
  word_array = word.split('')

  if vowels.include?(word_array[0])
    return (word_array.join('') + 'ay')
  else
    while (!vowels.include?(word_array[0]))
      if phoneme.include?(word_array.slice(0,2).join(''))
        2.times do
          empty_array.push(word_array.shift())
        end
      else
        empty_array.push(word_array.shift())
      end

    end
    return (word_array.join('') + empty_array.join('') + 'ay')
  end
end
