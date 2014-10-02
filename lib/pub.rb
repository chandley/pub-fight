require_relative 'punter'

class Pub

attr_accessor :pint, :punter, :drunk

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
	raise "You're too pissed. You're not coming in!" if punter.drunk
	self.punter << punter
	end

	def expel(punter)
		@punter.delete(punter)
	end
end