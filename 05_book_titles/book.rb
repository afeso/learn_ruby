class Book
# write your code here
attr_accessor :title

  def title
    articles = ['the', 'and', 'of', 'in', 'a', 'an']
    # @title.split.map.each(&:capitalize).join(' ')

    new_array = @title.split()
    empty_array = []

    if articles.include?(new_array.first)
      # @title.split.map.each(&:capitalize).join(' ')
      empty_array.push(new_array.first)
      new_array = new_array.reverse
      new_array.pop

      # value = new_array.map.each(&:capitalize).reverse.join(' ') + ' ' + empty_array.join.capitalize
      # value.reverse
      value = empty_array.join.capitalize
      value_1 = value + ' ' + new_array.each{|i| i.capitalize! if ! articles.include? i }.reverse.join(' ')
    else

      @title.split(' ').each{|i| i.capitalize! if ! articles.include? i }.join(' ')
    end
  end

end
