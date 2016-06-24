class Person 

	attr_reader :dob, :first_name, :surname, :emails, :add_phone, :fullname, :phone
	def initialize(fname, sname, dob = nil)
		@first_name = fname 
		@surname = sname.capitalize
		@dob = Date.parse(dob) if dob 
		@emails = []
		@fullname = []
		@remove_email = []
		@phone= []
	end 

	def fullname
		"#{@first_name} #{@surname}"
	end 

	def add_email(email)
		emails << email 
	end 

	def add_phone(phone_numbers)
		phone << phone_numbers
	end 

	def remove_emails(place)
		@emails.delete_at(place)
	end 

	def remove_phone(place)
		@phone.delete_at(place)
	end 

end 