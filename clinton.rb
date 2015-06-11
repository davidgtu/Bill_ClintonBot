## Clinton Bot

require_relative "Bill_ClintonModule.rb"
include ClintonModule

bill = Bill_Clinton.new

puts "Welcome to the Bill Clinton simulator 1.0 !"
puts "\nYou can ask him questions by typing them into the commandline"
puts "\nYou can feed him burgers by typing 'eat burger'"
puts "\nOr you can ask him to play the sax for you by typing 'play sax'"
puts "\nIf you want to leave at anytime just type \'bye Bill\' or \'quit\' "

	loop do

		puts 

		choice = gets.chomp.upcase

		if choice.include?("BURGER")
			bill.eat_burger
		elsif choice.include?("SAX")
			bill.play_sax
		elsif (choice.include?("BYE") or choice.include?("QUIT"))
			puts "Bye now sugar pie\n"
			puts
			break
		else
			bill.speak
		end

		puts 

	end	