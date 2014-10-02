class Punter

	attr_accessor :intoxication, :drunk

def initialize
	@intoxication = []
end

def drunk?
	if intoxication.count == 10
		drunk = true
	else
		drunk = false
	end
end

def down(pint)
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

end