class Punter

	attr_accessor :sobriety, :drunk

def initialize
	@sobriety = []
end

def drunk?
	if sobriety.count == 10
		drunk = true
	else
		drunk = false
	end
end

def down(pint)
	self.sobriety << pint
end

def pint_count
	self.sobriety.count
end

def served?
	@served = true
end

def order(pint)
	end
end