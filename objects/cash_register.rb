#!/usr/bin/env ruby

# Setting up CashRegister object to keep running total,
# add up purchases, and take payment
class CashRegister
  # Set initial value of transaction to $0.00

  def initialize
    @total = 0.0
  end

  # Keep track of the transaction total

  def total
    currency(@total)
    puts @total
  end

  # Add the item's price to the transaction total

  def purchase(item_price)
    @total += item_price
    total
  end

  # Transaction total minus amount paid
  # If difference is positive, more money needed
  # If difference is negative, change is owed and transaction is ended

  def pay(amount_paid)
    remaining_total = @total - amount_paid
    if remaining_total == remaining_total.abs
      puts "Your new total is $#{currency(remaining_total)}."
      @total -= amount_paid
    else
      change_due = remaining_total.abs
      puts "Your change is $#{currency(change_due)}."
      @total = 0.0
    end
  end

  # Convert values into positive numbers and round to 2 decimal places

  def currency(number)
    currency = number.abs.round(2)

    # Check number of digits after decimal point and add 0 if necessary

    decimal_check = currency.to_s.slice(-2)
    if decimal_check.start_with?('.')
      currency.to_s + '0'
    else
      currency
    end
  end
end

register = CashRegister.new
register.total
register.purchase(3.78)
register.purchase(5.22)
register.total
register.pay(5)
register.total
register.pay(5)
register.total
