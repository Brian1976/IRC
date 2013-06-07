File.open('read_write.txt', 'r') do |f1|
	while line = f1.gets
		puts line
	end
end

File.open('read_write.txt', 'w') do |f2|
	puts "what would you like to write to the file?"
	f2.puts gets.chomp
end