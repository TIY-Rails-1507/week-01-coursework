require 'minitest/autorun'
require_relative '../lib/account'

class TestAccount < MiniTest::Unit::TestCase
    
  def test_account_is_created_with_an_opening_balance
    opening_balance = 50
    account = Account.new(opening_balance)
    assert_equal(opening_balance, account.balance)
  end

  def test_withdrawing_reduces_the_balance   
    account = Account.new(100)
    account.withdraw(30)
    assert_equal(70, account.balance())
  end

  def test_depositing_increases_the_balance
    account = Account.new(200)
    account.deposit(80)
    assert_equal(280, account.balance())
  end
  
end