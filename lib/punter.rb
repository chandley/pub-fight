class Punter

attr_accessor :wounds

def initialize
	@intoxication = 0
	@wounds = 0
end

def drunk?
	@intoxication >= 10 ? true : false
end

def down(pint)
	pint.drink!
	@intoxication += 1
end

def pint_count
	@intoxication
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
	@wounds >= 3
end

# def wound_count
# 	@wounds.count
# 	end

end