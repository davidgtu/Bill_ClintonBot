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
				    "I did not have sexual relations with that woman",
				    "That depends on what your definition of \'is\'' is"]
	@billQuotes = @saxQuotes + @burgerQuotes
	@selection = Random.new
	end
	def update(burgers, saxes)
		@billQuotes = (@saxQuotes*saxes) + (@burgerQuotes*burgers)
	end
	def quote
	@billQuotes[@selection.rand(@billQuotes.length - 1)]
	end
end

end