class Person

def initialize(first_name, last_name)
	@first_name = first_name
	@last_name = last_name
end

def full_name
	@first_name + " " + @last_name
end

def set_first_name(first_name)
	@first_name = first_name
end

end
