# Write a recursive function that computes and returns the sum of all elements in an array, where the array and its size are given as parameters.
# //return the sum of all elements in a[]
# int findsum(int a[], int n)

def findsum(arr, arr_size)
  if arr_size == 1
    return arr.first
  else
    last = arr.pop
    arr[0] += last
    findsum(arr, arr_size - 1)
  end
end

puts findsum([1, 2, 3], 3) == 6
puts findsum([1, 1, 1], 3) == 3
puts findsum([-100, 2], 2) == -98
