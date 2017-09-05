
#User Story

# As a bank account holder, I should be able to make deposits to my account.
# This should increase my account balance.

#
require './lib/account.rb'

new_account = Account.new
new_account.deposit(1000)
new_account.withdraw(500)
new_account.printer
