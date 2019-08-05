# Your Code Here
def map(source_array)
  new = []
  i = 0 
  while i < source_array.length do
    new << yield(source_array[i])
    i += 1
  end
  return new
end
  
  
  
def reduce(source_array, starting_point=nil)
 if starting_point = nil
   i = 1
   new = source_array[i]
 else
   i = 0
   new = starting_point
 end
  while i < source_array.length do 
   new = yield(new, source_array[i])
   i += 1 
 end
 return new
 end