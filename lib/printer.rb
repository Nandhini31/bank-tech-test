class Printer

  attr_reader :history

  def initialize(history)
    @history  = history
  end


  def print_history(history)
    puts "date || credit || debit || balance" + "\n"
    @history.each do |outer_array|
         puts outer_array.each { |item| item}.join(" || ")
    end
  end

end
