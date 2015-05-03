require 'byebug'

puts "Binary Search"

def binarysearch(primes, target)

  min = 0
  max = primes.length - 1
  index = -1

  while(max > min)
    guess = (max + min) / 2

    if primes[guess] == target then
      index = guess
      break
    elsif primes[guess] < target then
      min = guess + 1
    else
      max = guess - 1
    end
  end

  return -1 if not (primes[index])
  index

end

myarray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
target = 41

result = binarysearch(myarray, target)

puts "Result #{result}"

