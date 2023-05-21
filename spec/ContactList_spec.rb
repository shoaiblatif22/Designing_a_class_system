require "ContactList"

RSpec.describe ContactList do
  let(:contacts) { ContactList.new }

  describe "#add_contacts" do
    it "adds a new contact to the contact list" do
      contacts.add_contact("John Doe", "1234567890")
      expect(contacts.mobile_numbers.size).to eq(1)
    end
  end

  describe "#mobile_numbers" do
    it "returns all the mobile numbers in the contact list" do
      contacts.add_contact("John Doe", "1234567890")
      contacts.add_contact("Jane Smith", "9876543210")
      expect(contacts.mobile_numbers).to match_array(["1234567890", "9876543210"])
    end
  end
end