# Open file with code block
File::open('test.txt', 'w') do |f|
  f << 'YOU ARE BEAUTIFUL!'
end

# Open file without code block
newFile = File::open('test2.txt', 'w')
newFile << 'YOU ARE SMART!'
newFile.close

# Print the contents of an array with 16 numbers.
# Print 4 numbers at a time using each
ary = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
ary.each {|f| print (ary.index(f) + 1) % 4 !=  0 ? f.to_s + ' ' : f.to_s + "\r\n" }

puts "-------------------------------------------------------------"
# Print again using each_slice
ary.each_slice(4) {|f| print f}
