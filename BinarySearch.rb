puts 'Binary Search'

def binary_search(primes, target)

  min = 0
  max = primes.length - 1
  index = -1

  while max > min
    guess = (max + min) / 2

    if primes[guess] == target
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

my_array = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
target = 41

result = binary_search(my_array, target)

puts "Result #{result}"

