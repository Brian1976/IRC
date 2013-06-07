
@greeting = "hello"


require "socket"
#config = {:nick => "Brian1976"}

server = "chat.freenode.net"
port = "6667"
nick = "Brian1976"
channel = "#bitmaker"

irc_server = TCPSocket.open(server,port)
print("addr: ", irc_server.addr.join(":"), "\n")
print("peer: ", irc_server.peeraddr.join(":"), "\n")
irc_server.puts "USER testing 0 * Testing"
irc_server.puts "NICK #{nick}"
irc_server.puts "JOIN #{channel}"
irc_server.puts "PRIVMSG #{channel} :Hello from IRB Bot"
ans = gets.chomp

if (a = "hi Brian1976")
	irc_server.puts "how are you?"





=begin
File.open("hangman_runner.rb", 'r') do |f1|
	while line = stdin do
		hangman_runner.rb
	end
end

target.close

=begin
file_path2 = "../hangman_runner.rb"
File.open(file_path2, 'w') do |f2|
	puts f1.gets
	f2.puts gets.chomp
end


until irc_server.eof? do
	msg = irc_server.gets
	puts msg	
end
=end