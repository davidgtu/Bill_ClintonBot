## SmoothTalkable Module

module SmoothTalkable

class VocalChords
	def initialize
	@saxQuotes = [ "If you live long enough, you'll make mistakes. But if you learn from them, you'll be a better person. It's how you handle adversity, not how it affects you. The main thing is never quit, never quit, never quit.",
				   "When times are tough, constant conflict may be good politics but in the real world, cooperation works better. After all, nobody's right all the time, and a broken clock is right twice a day.",
				   "Promising too much can be as cruel as caring too little.",
				   "If you live long enough, you'll make mistakes. But if you learn from them, you'll be a better person. It's how you handle adversity, not how it affects you. The main thing is never quit, never quit, never quit.",
				   "We cannot build our own future without helping others to build theirs.",
				   "The best social program is a good job.",
				   "The future is not an inheritance, it is an opportunity and an obligation.",
				   "I still believe in a place called Hope, a place called America."]

	@burgerQuotes = ["Sometimes when people are under stress, they hate to think, and it's the time when they most need to think.",
					"Character is a journey, not a destination.",
				    "There is nothing wrong with America that cannot be cured with what is right in America.",
				    "You can put wings on a pig, but you don't make it an eagle.",
				    "Being president is like running a cemetery: you've got a lot of people under you and nobody's listening.",
				    "That depends on what your definition of \'is\'' is"]

	@wild_clinton = ["I did not have sexual relations with that woman.",
					  "These allegations are false!",
					  "I need to go back to work for ther American people",
					  "I thought the definition included any activity by [me], where [I] was the actor and came in contact with those parts of the bodies",
					  "Alright girls, I turned off the AC. First one to have a bead of neck sweat reach their butt crack wins.",
					  "You know where I got that nipple ring? Old straddlin' Madeline Albright gave it to me.",
					  "Now that's a cankle! Where does the calf fat end and the ankle fat begin? Who knows? That's the fuuuuun"]




	@billQuotes = @saxQuotes + @burgerQuotes 
	@selection = Random.new
	end
	def update(burgers, saxes)
		@billQuotes = (@saxQuotes*saxes) + (@burgerQuotes*burgers)
	end
	def quote
		@billQuotes[@selection.rand(@billQuotes.length - 1)]
	end
	def wild_quote
		@wild_clinton[@selection.rand(@wild_clinton.length - 1)]
	end
end

end