require "Contact"

RSpec.describe Contact do
  let(:name) { "John Doe"}
  let(:mobile_numer) { "1234567890" }
  subject { Contact.new(name, mobile_numer) }

  describe "#name" do
    it "returns the name of the contact" do
      expect(subject.name).to eq(name)
    end
  end
end