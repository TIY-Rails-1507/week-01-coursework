require_relative '../lib/account'
user_acc = Account.new(100)

print "Hi. You have #{user_acc.balance} in your account. "
loop do
print "Would you like to make a deposit or a withdrawal? "
ans = gets.chomp.downcase
break if ans == "no" || ans == "n"	
	if ans == "deposit" || ans == "d"
		print "How much to deposit? "
		dep = gets.chomp.to_i
		user_acc.deposit(dep)
		puts "Your current balance is now #{user_acc.balance}."
	elsif ans == "withdrawal" || ans == "w"
		print "How much to withdraw? "
		wit = gets.chomp.to_i
		if
			wit > user_acc.balance
			puts "You cannot withdraw more than your current balance."
		else
			user_acc.withdraw(wit)
			puts "Your current balance is now #{user_acc.balance}."
		end
	else
		puts "Unrecognised command. Try again please." 
	end
end
puts "Thank you. Goodbye."

#Now, how do I get it to display a mini-statement?