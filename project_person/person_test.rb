require 'minitest/autorun'
require_relative 'person'

class TestPerson < MiniTest::Unit::TestCase
    
  def test_full_name
  	person = Person.new("John", "Snow")
  	person.set_first_name("Mark")
  	full_name = person.full_name
    assert_equal('Mark Snow', full_name)
  end
  
end
