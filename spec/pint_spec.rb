require 'pint'

describe Pint do

let(:pint){Pint.new("stella")}

	it "should be full" do
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
end
