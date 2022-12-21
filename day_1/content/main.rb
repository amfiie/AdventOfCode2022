#!/usr/bin/ruby -w

file_path = '../input/input1.txt'
f = open file_path
sum = 0
sums = []
f.each do |line|
    if line.chomp.empty?
        sums.append(sum)
        sum = 0
    else
        sum += line.to_i
    end
end
f.close

sums.sort!

puts "The Elf carrying the most calories is : #{sums[-1]}\n"
puts "The top three Elfs are carrying in total : #{sums[-1] + sums[-2] + sums[-3]} calories\n"
