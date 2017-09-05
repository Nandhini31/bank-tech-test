require_relative 'printer'

class Account

  attr_reader :balance,:history

  def initialize(printer = Printer.new)
    @balance = 0
    @history = []
    @printer = printer
  end

  def deposit(amount)
    @balance +=amount
    @history << [date,float(amount),"",float(@balance)]
  end

  def withdraw(amount)
    @balance -=amount
    @history << [date,"",float(amount),float(@balance)]
  end

  def printer
    @printer.print_statement(@history)
  end

  private

  def date
    Time.now.strftime("%d/%m/%y")
  end

  def float(number)
    sprintf('%.2f', number)
  end
end
