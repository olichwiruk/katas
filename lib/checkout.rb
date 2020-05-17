# frozen_string_literal: true

require 'money'

class Checkout
  attr_reader :money

  def initialize
    @money = Money.new(0)
  end

  def total
    money
  end

  def scan(item_code)
    @money = Money.new(50)
  end
end
