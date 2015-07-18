# Write a recursive function that finds and returns the minimum element in an array, where the array and its size are given as parameters.
# //return the minimum element in a[]
# int findmin(int a[], int n)

def findmin(arr, arr_size)
  if arr_size == 1
    return arr.first
  else
    if arr.last < arr.first
      arr.shift
      findmin(arr, arr_size - 1)
    else
      arr.pop
      findmin(arr, arr_size - 1)
    end
  end
end

puts findmin([3, 5, 1], 3) == 1
puts findmin([100, 2, -99], 3) == -99


def generate_random_array
  (1..10).map {|i| rand(100) }
end

def random_checker
  (0..20).each {|_|
    random_array = generate_random_array
    puts findmin(random_array, random_array.size) == random_array.min
  }
end

random_checker
