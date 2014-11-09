class Pint

attr_accessor :name

def initialize(name = "carling")
	@name = name
  @full = true
  @broken = false
end

def broken?
	@broken
end

def full?
	@full
end

def break!
	@broken = true
  @full = false
end

def drink!
  raise "Can't drink empty pint" unless @full
  @full = false
end
	
def self.stella
	new("stella")
end

def self.kronenberg
	new("kronenberg")
  end

end