# frozen_string_literal: true

class PricingRules
  def initialize
    @rules = {
      ItemCode.new('A') => Money.new(50),
      ItemCode.new('B') => Money.new(30)
    }
    @special_offers = [
      {
        item_code: ItemCode.new('A'),
        amount: 3,
        price: Money.new(30)
      }
    ]
  end

  def item_code_scanned(item_code, total_money, scanned_items)
    item_unit_price = @rules.fetch(item_code)

    item_special_offer = @special_offers.find do |special_offer|
      special_offer[:item_code].eql?(item_code)
    end

    if item_special_offer && scanned_items.select { |si| si.eql? item_code }.count.modulo(item_special_offer[:amount]).zero?
      return total_money.add(item_special_offer[:price])
    end

    total_money.add(item_unit_price)
  end
end
