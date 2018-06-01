require 'word_kata'

describe "The wrap function" do
	it "returns empty string when called with nothing" do
		expect(wrap("", 1)).to eq("")
	end
end