require 'pint'

describe Pint do

let(:pint){Pint.new("stella")}
let(:punter){double :punter}

	it "should not be broken" do
		expect(pint).not_to be_broken
	end

	it "should start off full" do
		expect(pint).to be_full
	end

	it "should have a name" do
		expect(pint.name).to eq ("stella")
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
		pint.break!
		expect(pint).to be_broken
	end
end
