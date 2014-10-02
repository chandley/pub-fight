require 'punter'

describe Punter do
	
	let(:punter){Punter.new}
	let(:pint){double :pint}
	let(:pub) {double :pub}

	it "should not be drunk" do
		expect(punter.drunk?).to eq(false)
	end

	it "should be able to drink a pint" do
		punter.down(pint)
		expect(punter.pint_count).to eq 1
	end

	it "should be able to get drunk" do
		10.times{punter.down(pint)}
		expect(punter.drunk?).to eq true
	end

	it "should be able to get paralytic" do
		20.times{punter.down(pint)}
		expect(punter.paralytic?).to eq true
	end

	it "should be able to enter a pub" do
		expect(pub).to receive(:accept)
		punter.enter(pub)
	end

	it "should be able to go from one pub to another" do 
		pub1 = double :pub
		pub2 = double :pub
		allow(pub2).to receive(:accept)
		expect(pub1).to receive(:expel)
		punter.move(pub1, pub2)
	end

	
end