def sum(n, curr=0)
  if n == 1
    return curr + n
  else
    sum(n - 1, curr + n)
  end
end

puts sum(1) == 1
puts sum(2) == 3
puts sum(3) == 6
