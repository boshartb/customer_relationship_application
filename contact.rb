class Contact
  attr_accessor :id, :first_name, :last_name, :email, :note

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

  def contacts
    @contacts
  end

  def add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end
end
