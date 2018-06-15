require 'word_kata'

describe "The wrap function" do
	
	it "returns empty string when called with nothing" do
		expect(wrap("", 1)).to eq("")
	end

	 it "returns a word if shorter than the length" do
	 	expect(wrap("word", 5)).to eq("word")
	 end 

	 it "splits a long world on the lenght of the column" do 
	 	expect(wrap("longword", 4)).to eq("long\nword")
	 end

	 it "splits a really long world on the length of the column" do 
	 	expect(wrap("longlongword", 4)).to eq("long\nlong\nword")
	 end

	 it "splits a word on a whitespace" do 
	 	expect(wrap("long word", 5)).to eq("long\nword")
	 end	 

	 it "splits a word on a whitespace thats after the column" do 
	 	expect(wrap("long word", 4)).to eq("long\nword")
	 end

	 it "splits a word on a whitespace thats before the column" do 
	 	expect(wrap("long word", 6)).to eq("long\nword")
	 end

	 it "keeps as many words on one lines as possible" do 
	 	expect(wrap("long long long word", 10)).to eq("long long\nlong word")
	 end
end
