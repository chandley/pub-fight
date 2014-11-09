require 'pint'

describe Pint do

let(:pint){Pint.new("stella")}

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

	it "is empty if broken" do
		pint.break!
		expect(pint).not_to be_full
	end

	it 'is empty after being drunk' do
		pint.drink!
		expect(pint).to_not be_full
	end

	it "can't be drunk if already empty" do
		pint.drink!
		expect(lambda {pint.drink!}).to raise_error(RuntimeError)
	end
end

