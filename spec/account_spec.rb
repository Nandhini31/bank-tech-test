require 'account'

describe Account do
  subject(:account) {described_class.new}

  describe '#initialize' do
    it 'starts with a  balance of 0' do
      expect(account.balance).to eq(0)
    end
  end

  describe 'deposits' do
    it 'Account holder can deposit money into account' do 
      expect{account.deposit 50}.to change {account.balance}.from(0).to(50)
    end
  end

end
