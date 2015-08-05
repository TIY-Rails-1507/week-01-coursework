require_relative 'person'

print "Hi, your first name is: "
a = gets.chomp
print "...and your last name? "
b = gets.chomp
person = Person.new(a,b)
print "Hi #{person.full_name}! \n"
