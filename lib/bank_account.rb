require "pry"
class BankAccount
  
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  
  def display_balance
    "Your balance is $#{self.balance}."
  end
  
  def valid?
    case balance 
    when self.balance <= 0 
      false 
    end
    case status 
    
  end


def close_account 
  self.status = 'closed'
end


end
