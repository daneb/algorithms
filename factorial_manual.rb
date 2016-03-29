def factorial(n)
  result = 1 
  (2..5).step(1) do |x|
    result = result * x
  end
  puts result
end

factorial(5)
