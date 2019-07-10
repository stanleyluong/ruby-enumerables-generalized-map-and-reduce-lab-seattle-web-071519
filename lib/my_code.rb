# Your Code Here
def map(array)
  return array.map do |n|
     yield n
  end
end

def reduce(array, memo = 0)
  i = 0 
  while i < array.length do 
    memo = yield memo, array[i]
    i += 1
  end
  return memo
end

# def add(x,y)
#   x + y
# end

# 1+= 1
