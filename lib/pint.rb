class Pint

attr_accessor :name

def initialize(name)
	@name = name
	end

def full?
	@full = true
	end

def self.stella
	new("stella")
end

def self.kronenberg
	new("kronenberg")
	end
end