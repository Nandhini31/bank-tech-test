
class Printer
  def print_statement(history)
    puts "date || credit || debit || balance" + "\n"
    history.each do |outer_array|
         puts outer_array.each { |item| item}.join(" || ")
    end
  end

end
