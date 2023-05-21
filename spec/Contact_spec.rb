require "Contact"

RSpec.describe Contact do
  let(:name) { "John Doe"}
  let(:mobile_number) { "1234567890" }
  subject { Contact.new(name, mobile_number) }

  describe "#name" do
    it "returns the name of the contact" do
      expect(subject.name).to eq(name)
    end
  end

  describe "#mobile_number" do
    it "returns the mobile number of the contact" do
      expect(subject.mobile_number).to eq(mobile_number)
    end
  end
end