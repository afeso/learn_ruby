#write your code here
# sumed = 0

def add a,b
  a + b
end

def subtract c,d
  c - d
end

def sum array
  sumed = 0
    array.each do |array_value| # => this becomes the current array value
      sumed += array_value
    end
  sumed
end


def multiply(e)
  msum = 1
    e.each do |this|
      msum = msum * this
    end
  msum
end

def power(num, pwr)
  num ** pwr
end

def factorial(n)
  tempArray = []
  if n == 0
    1
  else
    temp = n
    while temp != 0
      tempArray.push(temp)
      temp -= 1
    end
    fsum = 1 # => since its going to be multiplication, factorial sum initializes as 1
    if tempArray.length > 0 then
      tempArray.each do |this|
        fsum *= this
      end
    end
    fsum
  end
end
