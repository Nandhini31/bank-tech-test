class Account

attr_reader :balance,  :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance +=amount
    # puts "You have deposited £#{amount} in your account"
    @history << [date,float(amount),"",float(@balance)]

  end

  def withdraw(amount)
    @balance -=amount
    # puts "You have withdrawn £#{amount} in your account"
    @history << [date,"",float(amount),float(@balance)]
  end


  def statement


  end  

  private

  def date
    Time.now.strftime("%d-%m-%y")
  end

  def float(number)
    sprintf('%.2f', number)
  end

end
