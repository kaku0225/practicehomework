RSpec.describe ATM do
  context "存錢功能" do
    it "可以存錢" do
      atm = ATM.new(10)
      atm.savemoney(5)
      expect(atm.balance).to be 15

      class ATM
        def initialize(nowmoney)
          @nowmoney = nowmoney
        end

        def savemoney (add_money)
          @nowmoney = @nowmoney + add_money
        end

        def balance
          @nowmoney
        end
      end
      
    end
    it "存超過0元" do
      atm = ATM.new(10)
      atm.add_money(-3)
      expect(atm.balance)to be 10

      class ATM
        def initialize(nowmoney)
          @nowmoney = nowmoney
        end
        def add_money
          
        end
      end
    end
  end
end