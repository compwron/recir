# Write a recursive function that determines whether an array is a palindrome, where the array and its size are given as parameters.
# //returns 1 if a[] is a palindrome, 0 otherwise
# int ispalindrome(char a[], int n)

def ispalindrome(arr, arr_size)
  if [0, 1].include? arr_size
    return 1
  else
    first = arr.shift
    last = arr.pop
    if first == last
      ispalindrome(arr, arr_size - 2)
    else
      return 0
    end
  end
end

puts ispalindrome([], 0) == 1
puts ispalindrome(['a'], 1) == 1
puts ispalindrome(['a', 'b'], 2) == 0
puts ispalindrome(['a', 'b', 'a'], 3) == 1
puts ispalindrome(['a', 'b', 'b', 'a'], 4) == 1
puts ispalindrome(['a', 'b', 'b', 'c'], 4) == 0
