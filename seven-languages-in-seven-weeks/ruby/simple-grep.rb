word = "Liz"
file = File::open('test.txt')
file_data = file.readlines.map(&:chomp)
file_data.each {|value| puts value if (value.include? word)}
file.close
