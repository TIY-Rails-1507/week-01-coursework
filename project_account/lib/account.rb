class Account

	def initialize(opening_balance)
		@balance = opening_balance
	end

	def balance()
		@balance # in ruby the last line is always returned
	end

	def withdraw(amount)
		@balance = @balance - amount
	end

	def deposit(amount)
		@balance += amount
	end

end