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
    new_receiver_balance = @receiver.balance - @amount
    new_sender_balance = @sender.balance - @amount 
    self.status = "complete"
    check_valid == false 
      "Transaction rejected. Please check your account balance."
    end
  
  
end
