#!/usr/bin/ruby -w

File.open("../input/input1.txt", "r") do |input|
	content = input.readlines()

	list = [0]
	
	content.each do |line|
		if !line.chomp.empty?
			list[-1] += line.to_i
		else
			list.push(0)
		end
	end
	
	list.sort!
	
	puts list[-1]
	puts list[-1] + list[-2] + list[-3]
end