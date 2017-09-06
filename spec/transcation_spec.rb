require 'transaction'

describe Transaction do

  let(:amount){500}
  let(:balance){1000}
  subject(:transaction) { described_class.new('deposit', amount,balance) }
  subject(:transaction_withdraw) { described_class.new("withdraw", amount,balance) }

  it 'returns initializes with transaction type' do
    expect(transaction.transaction_type).to eq('deposit')
  end

  it 'returns an array for the deposits' do
    expect(transaction.list).to eq([Time.now.strftime('%d/%m/%y'), '500.00', '', '1000.00'])
  end

  it 'returns an array for the withdraw' do
    expect(transaction_withdraw.list).to eq([Time.now.strftime('%d/%m/%y'), '', '500.00', '1000.00'])
  end
end
