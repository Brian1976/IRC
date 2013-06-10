require "socket"

server = "chat.freenode.net"
port = "6667"
nick = "BrianBot"
channel = "#bitmaker"

irc_server = TCPSocket.open(server,port)
print("addr: ", irc_server.addr.join(":"), "\n")
print("peer: ", irc_server.peeraddr.join(":"), "\n")
irc_server.puts "USER testing 0 * Testing"
irc_server.puts "NICK #{nick}"
irc_server.puts "JOIN #{channel}"
irc_server.puts "PRIVMSG #{channel} :Hello from BrianBot"


until irc_server.eof? do
  msg = irc_server.gets.chomp
  puts msg
  if (msg.eql?("Hello BrianBot"))
  	irc_server.puts "PRIVMSG #{channel} :the bot says hello to BrianBot"
  end
end