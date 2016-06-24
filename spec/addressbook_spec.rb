require 'person_helper'

describe "AddressBook class" do 
	it  "should store all details of users in the address book" do 
		ab = AddressBook.new
		ab.load_yaml ('contactbook')
		expect (ab.entries.sie).to eq 1
		expect(ab.last).to be_a Person
		expect(ab.last.fullname) .to eq "Sara Lowe"
		expect(ab.last.emails.first).to eq "sarah@gmail.com"
	end 
end 

		