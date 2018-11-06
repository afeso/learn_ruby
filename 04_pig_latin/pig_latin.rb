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
  shifted_phoneme_array = []
  word_array = word.split('')

  if vowels.include?(word_array[0])
    return (word_array.join('') + 'ay')
  else
    while (!vowels.include?(word_array[0]))
      if phoneme.include?(word_array.slice(0,2).join(''))
        2.times do
          shifted_phoneme_array.push(word_array.shift())
        end
      else
        shifted_phoneme_array.push(word_array.shift())
      end

    end

    latined = (word_array.join('') + shifted_phoneme_array.join('') + 'ay').downcase
    latined = retain_punctuation(retain_capitalization(word, latined))
    return latined
    # return (word_array.join('') + shifted_phoneme_array.join('') + 'ay')
  end
end

def retain_capitalization(initial_word, latined_word)
  initial_letters = initial_word.split('')
  latined_letters = latined_word.split('')

  initial_letters.length.times do |index|
    if initial_letters[index] == initial_letters[index].upcase then
      latined_letters[index] = latined_letters[index].upcase
    end

    return latined_letters.join()
  end
end

def retain_punctuation word
  punctuation = %w(. , ? !)
  letters = word.split('')
  has_punctuation = false
  found_punctuation = ''

  letters.each_with_index do |current_letter, index|
    if punctuation.include?(current_letter) then
      has_punctuation = true
      found_punctuation = letters.delete_at(index)
      # leters -= current_letter
    end
  end

  if has_punctuation
    return letters.join('') + found_punctuation
  else
    return letters.join
  end

end
