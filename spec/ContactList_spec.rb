require "ContactList"

RSpec.describe ContactList do
  let(:contacts) { ContactList.new }

  describe "#add_contacts" do
    it "adds a new contact to the contact list" do
      contacts.add_contact("John Doe", "1234567890")
      expect(contacts.mobile_numbers.size).to eq(1)
    end
  end
end