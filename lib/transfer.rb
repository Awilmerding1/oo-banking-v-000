class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver 
  @status = 'pending'
  @amount = amount
  end
  
  def valid?
    @sender.valid?
    @receiver.valid?
  end
  
  def execute_transaction
  check_valid = @sender.valid?
  if check_valid == true
    new_receiver_balance = @receiver.balance - @amount
    new_sender_balance = @sender.balance - @amount 
    self.status = "complete"
    elsif @sender.valid? == false 
      "Transaction rejected. Please check your account balance."
    end
  end
  
end
