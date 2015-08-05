require 'minitest/autorun'

#require_relative 'test_helper'
# require_relative 'account_test'
require_relative '../lib/account'
require_relative '../lib/bank'

class TestBank < MiniTest::Unit::TestCase
    
  def test_transfer_from_an_account_to_another
    current_account = Account.new(100)
    savings_account = Account.new(500)
    new_bank = Bank.new(current_account, savings_account)
    new_bank.transfer(current_account, savings_account, 20)
    assert_equal(80, current_account.balance)
    assert_equal(520, savings_account.balance)   
  end

end