require_relative '../lib/scrap_crypto'
describe "the crypto_scrapper method " do
	it "should return an array with hashes" do
		expect(crypto_scrapper).not_to be_empty
	end
end
