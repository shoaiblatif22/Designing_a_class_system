class ContactList
  def initialize
    @contacts = []
  end

  def add_contact(name, mobile_number)
    contact = Contact.new(name, mobile_number)
    @contacts << contact
  end

  def mobile_numbers
    @contacts.map(&:mobile_number)
  end
end
