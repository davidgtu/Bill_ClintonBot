
module ClintonModule
class Bill_Clinton

	require_relative "SmoothTalkable.rb"
	include SmoothTalkable

	def initialize
		@vocal_chords = VocalChords.new
		@burgers_eaten = 0
		@saxes_played = 0
		@wild_bar = 0
	end

	def speak
		puts
		print @vocal_chords.quote
	end
	def digest
		@vocal_chords.update(@burgers_eaten, @saxes_played)
	end

	def eat_burger
		

		@burgers_eaten += 1
		puts
		puts "I haven't eaten at a McDonald's since I became President.  Burger Count: #{@burgers_eaten}"
		
		if @burgers_eaten > 5 
			puts "\nWarning: You\'re feeding Bill too many burgers!"
		end

		if @burgers_eaten > 8 
			raise "Bill is dead.\n You fed him too many burgers and he had a massive coronary and died\n Happy??"
		end

		digest
	end

	def play_sax

		@saxes_played += 1
		puts
		puts "Well sure thing sugar pie.  Sax Count: #{@saxes_played}"
		if @saxes_played > 5 
			puts "\nWarning: Bill\'s tired he can't keep playing sax like this!"
		end

		if @saxes_played > 8 
			raise "During the greatest 80\'s style sax solo, Bill unfortunately suffered a massive coronary and died, we will miss him dearly."
		end

		digest
	end

	def wild_clinton
		@wild_bar += 1
		puts
		print @vocal_chords.wild_quote
		puts
		puts "WILD COUNT: #{@wild_bar}"
		if @wild_bar > 5
			puts "I think you should tone it down..."
		end

		if @wild_bar > 8
			raise "BILL NEED SLEEP. GOODBYE."
		end
		
	end


end

end