
module ClintonIsTheException
class TooManyBurgers < Exception
end
raise TooManyBurgers, "You\'re feeding Bill too many burgers!"

class TooMuchSax < Exception
end
raise TooMuchSax, "Bill's tired he can't keep playing sax like this!"

class BillIsDead <Exception
end
raise BillIsDead, "You killed Bill, happy??"
end