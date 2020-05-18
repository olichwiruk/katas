# frozen_string_literal: true

class PricingRules
  def initialize
    @rules = {
      ItemCode.new('A') => Money.new(50),
      ItemCode.new('B') => Money.new(30)
    }
  end

  def item_code_scanned(item_code, total_money)
    item_price = @rules.fetch(item_code)
    total_money.add(item_price)
  end
end
