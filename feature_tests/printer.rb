require './lib/printer.rb'

myprinter = Printer.new
history = [["04-09-17", "1000.00", "", "1000.00"], ["04-09-17", "", "500.00", "500.00"]]
myprinter.print_statement(history)
