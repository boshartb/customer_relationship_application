require_relative './rolodex.rb'
require_relative './contact.rb'

class CRM
  attr_reader :name

  def initialize(name)
    @name = name
    @rolodex = Rolodex.new
  end

  def self.run(name)
    crm = CRM.new(name)
    crm.main_menu
  end
  
  def print_main_menu
    puts "[1] Add a contact"
    puts "[2] Modify a contact"
    puts "[3] Display a contacts"
    puts "[4] Display all contact"
    puts "[5] Display an attribute"
    puts "[6] Delete a contact"
    puts "[7] Exit"
    puts "Enter a number:"
  end

  def main_menu
    puts "Welcome to #{@name}"

    while true
      print_main_menu
      input = gets.chomp.to_i # => 4
      choose_option(input)
      return if input == 7
    end
  end

  def choose_option(option)
    case option
    when 1 then add_contact
    when 2 then modify_contact
    when 3 then display_contact
    when 4 then display_all
    when 5 then display_attribute
    when 6 then delete_contact
    when 7
      puts "Goodbye!"
      return
    else
      puts "Incorrect option, try again."
    end
  end

  def add_contact
    puts "Provide Contact Details"

    print "First Name: "
    first_name = gets.chomp

    print "Last Name: "
    last_name = gets.chomp

    print "Email: "
    email = gets.chomp

    print "Note: "
    note = gets.chomp

    new_contact = Contact.new(first_name, last_name, email, note)
    @rolodex.add_contact(new_contact)
  end

	def modify_contact
		print "Which Contact would you like to edit?"
		@contact = gets.chomp
		print "Is  the info you want to modify?"
		if yes = gets.chomp
			 puts "Change Made"
			elsif no = gets.chomp
						puts "Item unchanged"
		else  puts 'ANSWER THE DAMN QUESTION'
					return
		end 
	end
	

	def display_contact
		print "contact"
	end

	def display_all
		print "ALL"
	end

	def display_attribute
		print "attributes"
	end

	def delete_contact
		print "Which contact would you like to detete?"
		note = gets.chomp
		puts  "SLAM DUNK!"
	end
end

bitmaker = CRM.new("Bitmaker LABS CRM")
bitmaker.main_menu
