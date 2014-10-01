require 'pub'

describe Pub do 

	let(:pub){Pub.new}
	let(:punter){double :punter, :sobriety => true}
	let(:pint){double :pint}

	it "should be empty" do
		expect(pub.punter_count).to eq(0)
	end

	it "should have no pints in stock" do
		expect(pub.pint_count).to eq(0)
	end

	it "should stock a pint" do
		pub.stock(pint)
		expect(pub.pint_count).to eq 1
	end

	it "should serve a pint" do
		pub.stock(pint)
		pub.serve(pint)
		expect(pub.pint_count).to eq(0)
	end

	it "should accept a punter into a pub" do
		expect{pub.accept(punter)}.to change{pub.punter_count}.by 1
	end

	it "should not accept punter if he is drunk" do
		10.times{allow(punter).to receive(:down){pint}}
		expect{pub.accept(punter)}.to raise_error "You're too pissed. You're not coming in!"

	end
end