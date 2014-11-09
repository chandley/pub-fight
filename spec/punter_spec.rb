require 'punter'

describe Punter do
	
	let(:punter){Punter.new}
	let(:pint){double :pint}
	let(:pub) {double :pub}

	def down_double_pint 
		expect(pint).to receive(:drink!)
		punter.down(pint)
	end


	it "should not be drunk" do
		expect(punter).not_to be_drunk	
	end

	it "should be able to drink a pint" do
		down_double_pint
	end

	it "should increase intoxication after drinking a pint" do
		down_double_pint
		expect(punter.pint_count).to eq 1
	end

	it "should be able to get drunk" do
		10.times{down_double_pint}
		expect(punter).to be_drunk
	end

	it "should be able to get paralytic" do
		20.times{down_double_pint}
		expect(punter).to be_paralytic
	end

	it "should be able to enter a pub" do
		expect(pub).to receive(:accept)
		punter.enter(pub)
	end

	it "should be able to go from one pub to another" do 
		other_pub = double :pub
		allow(other_pub).to receive(:accept)
		expect(pub).to receive(:expel)
		punter.move(pub, other_pub)
	end

	it "should be able to glass other punters" do
		victim = Punter.new
		punter.glass(victim)
		expect(victim.wounds).to eq 1
	end

	it "should be hospitalised after 3 blows" do 
		victim = Punter.new
		allow(pub).to receive(:expel)
		3.times {punter.glass(victim)}
		expect(victim).to be_hospitalised
	end

	# it "should be expelled from the pub after causing GBH" do 
	# 	punter1 = Punter.new
	# 	punter2 = Punter.new
	# 	expect(pub).to receive(:expel)
	# 	3.times {punter1.glass(punter2)}
	# end

	
end