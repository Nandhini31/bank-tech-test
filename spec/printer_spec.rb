require 'printer'
describe Printer do
  let(:history) { [['04-09-17', '1000.00', '', '1000.00']] }
  subject(:printer) { described_class.new }

  it 'returns history' do
    expect { printer.print_statement(history) }.to output("date || credit || debit || balance\n04-09-17 || 1000.00 ||  || 1000.00\n").to_stdout
  end
end
