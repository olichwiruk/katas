# frozen_string_literal: true

require 'money'
require 'item_code'
require 'pricing_rules'

class Checkout
  def initialize
    @total_money = Money.new(0)
    @pricing_rules = PricingRules.new
    @scanned_items = []
  end

  def total
    @total_money
  end

  def scan(item_code)
    @scanned_items << item_code
    @pricing_rules.item_code_scanned(item_code, @total_money, @scanned_items)
  end
end
