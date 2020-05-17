# frozen_string_literal: true

require 'money'

class Checkout
  def total
    Money.new(0)
  end
end
