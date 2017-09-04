require 'account'

describe Account do
  subject(:account) {described_class.new}

  describe '#initialize' do
    it 'starts with a  balance of 0' do
      expect(account.balance).to eq(0)
    end

    it 'starts with en empty history' do
      expect(account.history).to eq []
    end



  describe '#deposit' do
    it 'Account holder can deposit money into account' do
      expect{account.deposit 50}.to change {account.balance}.from(0).to(50)
    end

    it 'adds the deposit transaction into history' do
      account.deposit(50)
      expect(account.history).to include([Time.now.strftime("%d-%m-%y"),"50.00","","50.00"])
    end

  end


  describe '#withdrawal' do
    it 'Account holder can deposit money into account' do
      account.deposit(50)
      expect{account.withdraw 50}.to change {account.balance}.from(50).to(0)
    end

    it 'adds the deposit transaction into history' do
      account.deposit(100)
      account.withdraw(50)
      expect(account.history).to include([Time.now.strftime("%d-%m-%y"),"","50.00","50.00"])
    end

  end
  end
end
