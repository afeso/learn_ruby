#write your code here
# require 'active_support/core_ext'

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times=1)
  if times == 1 then
    word + ' ' + word
  else
    words = (' ' + word) * (times - 1)
    word + words
  end
end

def start_of_word(word,num)
  # word_var = word
  index = num - 1
  if num == 1
    word[index]
  else
    word[0..index]
  end
end

def first_word(word)
  word_array = word.split
  word_array[0]
end

def titleize(string)
  # word.split(/ |\_|\-\"and"/).map(&:capitalize).join(" ")
  # word.titleize
  title_array = string.split
  # title_array.collect do |this|
  #   letters = word.split('')
  #   letters[2].downcase!
  #   letters.join
  # end
  # nocaps = ["and", "the", "over"]
  # nocaps.each do |item|
  #   if title_array.first == "and"
  #     title_array.collect do |this|
  #       letters = string.split('')
  #       letters.first.upcase!
  #       letters.join
  #     end
  #   end
  # end
  little_words = %w(end over and the)
  string.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
  end
  
  # string.split(" ").map { |word| nocaps.include?(word) ? word : word.capitalize }.join(" ")

end
