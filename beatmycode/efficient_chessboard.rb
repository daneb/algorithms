$colorToPrint = "w"
$n = 64 

def flip()
	$colorToPrint = ($colorToPrint == "w" ?  "b" : "w")
end

(1...$n).each { |i| 
    
	print $colorToPrint	

	if i.%(Math.sqrt($n)).zero?
	 puts "\n" 
	else
	 flip()
	end
}

print $colorToPrint
puts "\n"
