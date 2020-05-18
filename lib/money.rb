# frozen_string_literal: true

class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def eql?(other)
    amount == other.amount
  end

  def add(item_price)
    @amount += item_price.amount
  end
end
