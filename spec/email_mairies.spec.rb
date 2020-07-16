require_relative '../lib/email_mairies'
describe "get_townhall_email " do
	it "should return an array with hashes" do
		expect(get_townhall_email).not_to be_empty
	end
end