
class Printer

  def print_statement(history)
    header
    transactions(history)
  end


  private

  def header
     puts 'date || credit || debit || balance'
  end

  def transactions(history)
    history.each do |outer_array|
         puts outer_array.each { |item| item}.join(" || ")
    end
  end
end
