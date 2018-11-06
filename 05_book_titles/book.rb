class Book
# write your code here
attr_accessor :title

  def title
    articles = ['the', 'and', 'of', 'in', 'a', 'an']
    # @title.split.map.each(&:capitalize).join(' ')

    words_from_title = @title.split()
    found_articles = []

    if articles.include?(words_from_title.first)
      # @title.split.map.each(&:capitalize).join(' ')
      found_articles.push(words_from_title.first)
      words_from_title = words_from_title.reverse
      words_from_title.pop

      # value = words_from_title.map.each(&:capitalize).reverse.join(' ') + ' ' + found_articles.join.capitalize
      # value.reverse
      value = found_articles.join.capitalize
      value_1 = value + ' ' + words_from_title.each{|i| i.capitalize! if ! articles.include? i }.reverse.join(' ')
    else

      @title.split(' ').each{|i| i.capitalize! if ! articles.include? i }.join(' ')
    end
  end

end
