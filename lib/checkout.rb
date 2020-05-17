# frozen_string_literal: true

require 'money'
require 'item_code'

class Checkout
  def initialize
    @total_money = Money.new(0)
  end

  def total
    @total_money
  end

  def scan(item_code)
    return @total_money = Money.new(50) if item_code.eql?(ItemCode.new('A'))

    @total_money = Money.new(30)
  end
end
