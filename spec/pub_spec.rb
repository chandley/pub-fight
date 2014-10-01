require 'pub'

describe Pub do 

	let(:pub){Pub.new}
	let(:punter){double :punter}
	let(:pint){double :pint}

	it "should be empty" do
		expect(pub.punter_count).to eq(0)
	end

	it "should have 500 pints to serve" do
		500.times{pub.stock(pint)}
		expect(pub.pint_count).to eq(500)
	end
end