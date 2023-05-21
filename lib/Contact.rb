class Contact
  attr_reader :name, :mobile_number

  def initialize(name, mobile_number)
    @name = name
    @mobile_number = mobile_number
  end
end