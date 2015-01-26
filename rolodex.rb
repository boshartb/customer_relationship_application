class Rolodex
  @@ids = 1001

  def initialize
    @contacts = []
  end

  def contacts
  	@contacts
  end
  
  def add_contact(contact)
    contact.id = @@ids
    @contacts << contact
    @@ids += 1
    contact
  end
end