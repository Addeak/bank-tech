class CashMachine
  def initialize
    @balance = 0
    @statement = []
    @time = Time.new
    @date = "#{@time.day}/#{@time.month}/#{@time.year}"
  end

  def update_statement(amount, type)
    if type == "deposit"
      @statement << {date: @date, credit: " ", debit: amount, balance: @balance}
    else
      @statement << {date: @date, credit: amount, debit: " ", balance: @balance}
    end
  end

  def deposit(amount)
    @balance += amount
    update_statement(amount, "deposit")
  end

  def withdraw(amount)
    @balance -= amount
    update_statement(amount, "withdraw")
  end

  def print_statement
    puts " date || credit || debit || balance "
    @statement.each { |entry| puts "#{entry[:date]} || #{entry[:credit]} || #{entry[:debit]} || #{entry[:balance]}" }
  end
end