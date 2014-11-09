class Punter

	attr_accessor :intoxication, :drunk, :wounds

def initialize
	@intoxication = []
	@wounds = 0
end

def drunk?
	if intoxication.count >= 10
		drunk = true
	else
		drunk = false
	end
end

def down(pint)
	pint.drink!
	self.intoxication << pint
end

def pint_count
	self.intoxication.count
end

def served?
	@served = true
end

def paralytic?
	@paralytic = true
 end

def enter(pub)
	pub.accept(self)
end

def move(pub1, pub2)
	pub1.expel(self)
	pub2.accept(self)
end

def glass(punter)
	punter.wounds += 1
	# pub.expel(self) if punter.wounds >= 3
	end

def hospitalised?
	self.wounds >= 3
end

# def wound_count
# 	@wounds.count
# 	end

end