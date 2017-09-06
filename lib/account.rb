require_relative 'printer'
require_relative 'transaction'

class Account

  attr_reader :balance,:history

  def initialize(printer = Printer.new)
    @balance = 0
    @history = []
    @printer = printer
  end

  def deposit(amount)
    @balance +=amount
    new_transaction = Transaction.new('deposit',amount,balance)
    @history << new_transaction.list
  end

  def withdraw(amount)
    @balance -=amount
    new_transaction = Transaction.new('withdraw',amount,balance)
    @history << new_transaction.list
  end

  def printer
    @printer.print_statement(@history.reverse)
  end

end
