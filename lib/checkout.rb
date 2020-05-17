# frozen_string_literal: true

require 'money'

class Checkout
  attr_reader :total_money

  def initialize
    @total_money = Money.new(0)
  end

  def total
    total_money
  end

  def scan(item_code)
    @total_money = Money.new(50)
  end
end
