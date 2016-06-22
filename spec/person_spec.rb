require 'person_helper'

describe "Person class" do
   it 'should store and return personal information' do
   	person = Person.new("Joe", "bloggs", "1 Jan 1990")

   	expect(person.dob).to eq Date.new(1990,01,01)
   	expect(person.first_name).to eq "Joe"
   	expect(person.surname).to eq "Bloggs"
   	expect(person.fullname).to eq "Joe Bloggs"
   end 
   		
   it 'should have a optional date of birth' do 
   	person = Person.new("Joe", "Bloggs")
   	expect(person.dob).to be_nil
   end 

   it 'should put emails in a array' do
   	person = Person.new("Joe", "Bloggs")
   	person.add_email('Sud@gmail.com')
   end

   it 'should put phone numbers in a array' do 
   	person = Person.new("Joe", "Bloggs")
   	person.add_phone('079 999 99999')
   end 

   it 'should present the fullname of the user' do 
   	person = Person.new("Joe", "Bloggs")
   	expect(person.to_s)
   end

   it 'should remove the email' do 
   	person = Person.new("Joe", "Bloggs")
   	person.add_email('Sud@gmail.com')
   	person.remove_emails(0)
   	expect(person.emails).to be_empty 
   	end 

   	it 'should remove phone numbers' do
   		person = Person.new("Joe", "Bloggs")
   		person.add_phone('07999999999')
   		person.remove_phone (0)
   		expect(person.phone).to be_empty
   	end 
end