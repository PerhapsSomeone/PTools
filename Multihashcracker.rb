#Built by PrivateGER
#github.com/PerhapsSomeone/PTools
require 'digest'
if ARGV.empty?
hashes = []
puts "Multi-Hashcracker \n"
puts "Currently supported hashes: MD5"
puts "One hashtype at a time."
print "Enter first hash: "
hashes[0] = gets.chomp.downcase
print "Enter second hash: "
hashes[1] = gets.chomp.downcase
print "Hashtype: "
Mode = gets.chomp
else 
Mode = "MD5"
hashes = ARGV
puts hashes
end

counter = 0
    case Mode
    when "MD5"
        puts "Starting MD5 Cracker"
        sleep(1)
        while true do
          tryhash = Digest::MD5.hexdigest(counter.to_s)
            if (hashes[0].to_s == tryhash.to_s)
              puts "Match for #{hashes[0]} found! #{counter}"
              matchfound = true
            end
        counter += 1
        counter = 0 if matchfound
        if matchfound == true
           hashes.delete_at(0)
           #puts "ArrDel"
           matchfound = false
        end
        exit if hashes.empty?
        #puts "#{hashes[0]} #{counter} "
        end
    end



