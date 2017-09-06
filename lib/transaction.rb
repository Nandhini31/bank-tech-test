
class Transaction

  attr_reader :transaction_type, :balance, :amount

  def initialize(transaction_type,amount,balance)
    @transaction_type = transaction_type
    @amount = amount
    @balance = balance
  end

  def list
    return [date,float(@amount),"",float(@balance)] if @transaction_type ==  "deposit"
    return [date,"",float(@amount),float(@balance)] if @transaction_type ==  "withdraw"
  end

 private
   def date
     Time.now.strftime("%d/%m/%y")
   end

   def float(number)
     sprintf('%.2f', number)
   end
end
