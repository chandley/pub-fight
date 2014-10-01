require 'pint'

describe Pint do

let(:pint){Pint.new("stella")}
let(:punter){double :punter}

	it "should not be broken" do
		expect(pint.broken?).to eq false
	end

	it "should not be full" do
		expect(pint.full?).to eq true
	end


	it "should have a name" do
		lager = Pint.new("stella")
		expect(lager.name).to eq ("stella")
	end

	it "should be a stella pint" do
		stella = Pint.stella
		expect(stella.name).to eq ("stella")
	end

	it "should be a Kronenberg" do
		kronenberg = Pint.kronenberg
		expect(kronenberg.name).to eq ("kronenberg")
	end

	it "should be able to break" do
		allow(punter).to receive(:break) { pint }
		expect(pint.break).to eq true
	end
end
