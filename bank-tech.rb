class CashMachine
  def initialize
    @balance = 0
    @statement = []
    @time = Time.new
    @date = "#{@time.day}/#{@time.month}/#{@time.year}"
  end

  def deposit(amount)
    @balance += amount
    @statement << {date: @date, deposit: amount, balance: @balance}
  end

  def withdraw(amount)
    @balance -= amount
  end


end