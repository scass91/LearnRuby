=begin
August 7th 2018
Banking on ruby
=end

class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

   def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
   def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end


  private
  def pin
  @pin = 1234
	end

	def pin_error()
	return "Access denied: incorrect PIN."
	end
end

checking_account = Account.new("Simon", 0)
checking_account.withdraw(11, 500_000)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 400_000)
checking_account.display_balance(1234)
