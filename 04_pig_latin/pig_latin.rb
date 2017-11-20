# #write your code here
# iterate = Proc.new do
#   vowels = ['a','e','i','o','u']
#   vowels.length.times do |x|
#     vowels[x]
#   end
# end

def translate(word)
  vowels = ['a','e','i','o','u']
  result = []
  word_array = word.split('') # => create an array from the word variable
  loop_array = word_array.reverse

  multi_word_array = word.split

  phoneme = ['qu']

  auto_hash = ['a','b','c','d','e']
  auto_empty_hash = ['a1','b1','c1','d1','e1']

  empty_hash = {} # => for auto generation of array to hold the reverse value of each word
  blank_hash = {} # => for auto genaration of empty arrays
  temp_count = 0
  temp_count2 = 0

  auto_hash.each do |this_thing|
    break if temp_count == (multi_word_array.length)
    blank_hash[this_thing] = multi_word_array[temp_count].split('').reverse
    temp_count += 1
  end

  auto_empty_hash.each do |another_thing|
    empty_hash[another_thing] = []
    temp_count2 += 1
    break if temp_count2 == (auto_empty_hash.length - 1)
  end

  vowels.each do |temp_vowel|

    if multi_word_array.length >=3 then
      # $pig = 'ethay ickquay ownbray oxfay'

    if vowels.include?(blank_hash['a'].last)
      if blank_hash['a'].length == 0
        $empty0 = "#{blank_hash['a'].reverse.join}ay"
      else
        $empty0 = "#{blank_hash['a'].reverse.join}#{empty_hash['a1'].join}ay"
      end
    else #if blank_hash['a'].last != temp_vowel
      if phoneme.include?(blank_hash['b'].join[-2..-1].reverse)
        2.times do
          empty_hash['b1'].push(blank_hash['b'].last)
          blank_hash['b'].pop
        end
      end
      until vowels.include?(blank_hash['a'].last)
        empty_hash['a1'].push(blank_hash['a'].last)
        blank_hash['a'].pop
      end
      # $empty0 = "#{blank_hash['a'].reverse.join}#{empty_hash['a1'].join}ay"
      # break if vowels.include?(blank_hash['a'].last)
    end

    if vowels.include?(blank_hash['b'].last)
      if blank_hash['b'].length == 0
        $empty1 = "#{blank_hash['b'].reverse.join}ay"
      else
        $empty1 = "#{blank_hash['b'].reverse.join}#{empty_hash['b1'].join}ay"
      end
      # $empty1 = "#{blank_hash['b'].reverse.join}ay"
    else  #if blank_hash['b'].last != temp_vowel
      if phoneme.include?(blank_hash['b'].join[-2..-1].reverse)
        2.times do
          empty_hash['b1'].push(blank_hash['b'].last)
          blank_hash['b'].pop
        end
      end

      until vowels.include?(blank_hash['b'].last)
        empty_hash['b1'].push(blank_hash['b'].last)
        blank_hash['b'].pop
      end
      # $empty1 = "#{blank_hash['b'].reverse.join}#{empty_hash['b1'].join}ay"
      # break if vowels.include?(blank_hash['b'].last)
    end

    if vowels.include?(blank_hash['c'].last)
      if blank_hash['c'].length == 0
        $empty2 = "#{blank_hash['c'].reverse.join}ay"
      else
        $empty2 = "#{blank_hash['c'].reverse.join}#{empty_hash['c1'].join}ay"
      end

    else #if blank_hash['c'].last != temp_vowel
      if phoneme.include?(blank_hash['b'].join[-2..-1].reverse)
        2.times do
          empty_hash['b1'].push(blank_hash['b'].last)
          blank_hash['b'].pop
        end
      end
      until vowels.include?(blank_hash['c'].last)
        empty_hash['c1'].push(blank_hash['c'].last)
        blank_hash['c'].pop
      end
      # $empty2 = "#{blank_hash['c'].reverse.join}#{empty_hash['c1'].join}ay"
      # break if vowels.include?(blank_hash['c'].last)
    end

    if vowels.include?(blank_hash['d'].last)
      if blank_hash['d'].length == 0
        $empty3 = "#{blank_hash['d'].reverse.join}ay"
      else
        $empty3 = "#{blank_hash['d'].reverse.join}#{empty_hash['d1'].join}ay"
      end

    else #if blank_hash['d'].last != temp_vowel
      if phoneme.include?(blank_hash['b'].join[-2..-1].reverse)
        2.times do
          empty_hash['b1'].push(blank_hash['b'].last)
          blank_hash['b'].pop
        end
      end

      until vowels.include?(blank_hash['d'].last)
        empty_hash['d1'].push(blank_hash['d'].last)
        blank_hash['d'].pop
      end
      # $empty3 = "#{blank_hash['d'].reverse.join}#{empty_hash['d1'].join}ay"
      # break if vowels.include?(blank_hash['d'].last)
    end

    $pig = "#{$empty0} #{$empty1} #{$empty2} #{$empty3}"

      #####################################



    elsif multi_word_array.length > 1 then
      m0 = multi_word_array[0].split('').reverse
      m0_blank = []
      m1 = multi_word_array[1].split('').reverse
      m1_blank = []

      if vowels.include?(m0.last)
        $multi0 = "#{m0.reverse.join}ay"
      elsif m0.last != temp_vowel
        m0_blank.push(m0.last)
        m0.pop
        $multi0 = "#{m0.reverse.join}#{m0_blank.join}ay"
        # break if vowels.include?(m0.last)
      end

      if vowels.include?(m1.last)
        $multi1 = "#{m1.reverse.join}ay"
      elsif m1.last != temp_vowel
        m1_blank.push(m1.last)
        m1.pop
        $multi1 = "#{m1.reverse.join}#{m1_blank.join}ay"
        # break if vowels.include?(m1.last)
      end

    $pig = $multi0 + ' ' +$multi1
    # break
    else

      if vowels.include?(loop_array.last)
        $pig = "#{loop_array.reverse.join}ay"
        # break
      else #if loop_array.last != temp_vowel
        if phoneme.include?(loop_array.join[-2..-1].reverse)
          2.times do
            result.push(loop_array.last)
            loop_array.pop
          end
          $pig = "#{loop_array.reverse.join}#{result.join}ay"
          break #if vowels.include?(loop_array.last)
        end

        result.push(loop_array.last)
        loop_array.pop
        $pig = "#{loop_array.reverse.join}#{result.join}ay"
        break if vowels.include?(loop_array.last)
      end
    end


  end
  return $pig

end
