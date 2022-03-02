# bank-tech

## How to Use

```
irb -r ./bank-tech.rb

# Initialise Cash Machine
foo = CashMachine.new

# Make a deposit
foo.deposit(*amount to deposit*)

#Make a withdrawal
foo.withdraw(*amount to withdraw*)

#Print bank statement for all transactions
foo.print_statement
```
