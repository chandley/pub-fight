class Pub

attr_accessor :pint, :punter

def initialize
	@punter = []
	@pint = []
end

def punter_count
	self.punter.count
	end

def stock(pint)
	self.pint << pint
end

def pint_count
	self.pint.count
	end

def serve(pint)
	self.pint.delete(pint)
	end

def accept(punter)
	self.punter << punter
	end
end