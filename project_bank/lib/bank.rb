class Bank

	def initialize(current_balance, savings_balance)
		@current_balance = current_balance
		@savings_balance = savings_balance
	end


	def transfer(from_account, to_account, amount_to_transfer)
	    from_account.withdraw(amount_to_transfer)
	    to_account.deposit(amount_to_transfer)
	end

end