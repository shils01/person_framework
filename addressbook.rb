class AddressBook

	def initialize 
		@entries = [] 
	end 

	def load_yaml(contactbook)

		ymlfile = YAML.load(File.open(contactbook))
		ymlfile['person'] .each do |p|
		person= Person.new (p['fname'], p['surname'] , p['dob']
		@entries << person 

	end 














































































































































































































































































































































































































































