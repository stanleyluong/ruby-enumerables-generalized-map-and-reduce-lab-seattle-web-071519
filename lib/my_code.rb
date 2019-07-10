# Your Code Here
def map(array)
  return array.map do |n|
     yield n
  end
end

def reduce(array, memo = nil)
  if memo
    i = 0 
  else
    memo = array[0]
    i = 1
  end
  while i < array.length do 
    memo = yield memo, array[i]
    i += 1
  end
  return memo
end