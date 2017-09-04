require 'printer'

describe Printer do
  let(:history) {[["04-09-17", "1000.00", "", "1000.00"]]}
  subject(:printer) {described_class.new(history)}


  it 'prints the history' do
    expect(printer.print_history(history)).to eq("date || credit || debit || balance" + "\n" + "04-09-17, 1000.00, , 1000.00" )

  end
end
