def dump_it(customers_array)
  for customer in customers_array do    
    puts "#{customer[:name]}"
  end

  for customer in customers_array do
    puts "#{customer[:country]}"
  end
end