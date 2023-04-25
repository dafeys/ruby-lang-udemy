class BankAccount

  def initialize
    @amount = 5000
  end

  # prefore instance method to instance variables
  def status
    "You has #{amount}" # ref to def amount, not @amount
  end

  private

  def amount
    @amount / 100
  end

end

ba = BankAccount.new
p ba.status