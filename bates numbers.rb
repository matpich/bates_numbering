def bates(num, total_length = num.to_s.length, part_size = 3) #num is the number to convert, total_length is the number of characters in a final bates string, user can define the length of string but if the length of an input number is greater script ignore user input, part_size defines the length of number parts

	if num.to_s.length > total_length # this part of code is responsible for checking if the length of input is greater than defined length of final output, if it does it assign input length to total_length
		total_length = num.to_s.length
	end
	if (total_length%part_size) != 0 # this statement just increase total_length if needed (to get proper bates number it is necessary to all parts to be equal size
		total_length -= (total_length%part_size)
		total_length += part_size
	end
	leading_zeros = ("0"*(total_length-num.to_s.length) + num.to_s).split('') #this assignment is responsible for adding leading_zeros
	bates_num = ''
	counter = 0
	leading_zeros.each do |element| #this loop is spiting the number in defined part_size
		counter +=1
		if counter == part_size
			bates_num += element + " "
			counter = 0
		else
			bates_num += element
		end
	end
	bates_num
end

puts bates(15472384,9)
	