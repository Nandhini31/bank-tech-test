class Account

attr_reader :balance,  :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance +=amount
    # @history << [@balance,Time.now]
  end

end
