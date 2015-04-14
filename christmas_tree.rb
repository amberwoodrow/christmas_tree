def intro
	puts "Hello! This little program helps you grow a christmas tree of a size of your choosing!"
	puts "Please enter a number below that is even and greater or equal to the number 4."
	@num = gets.chomp
	print_tree @num.to_i
end
def print_tree height
	if height >= 4 && height % 2 == 0 && height <= 90
		height.times do |i|
			if i == 0 || i == height - 1
				(height - 2).times { print " " }
				puts "*"
		  elsif i == height - 2 
		  	(height - 1).times { print "* " }
		  	puts "\n"
		  else
		  	((height - i) - 2).times { print " " }
		  	print "*"
		    ((i * 2) - 1).times { print " " }
		  	puts "*"
			end
		end
	else
    puts "The number you entered was not valid"
    intro
	end
end
intro