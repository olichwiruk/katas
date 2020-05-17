# frozen_string_literal: true

require 'rspec'
require 'checkout'
require 'money'
require 'item_code'

RSpec.describe Checkout do
  subject do
    described_class.new
  end

  context 'when checkout with no scanned items' do
    it 'total is zero' do
      expected_total = Money.new(0)
      actual_total = subject.total

      expect(actual_total).to eql(expected_total)
    end
  end

  context 'when checkout with scanned A item' do
    it 'total is fifty' do
      expected_total = Money.new(50)
      subject.scan(ItemCode.new('A'))
      actual_total = subject.total

      expect(actual_total).to eql(expected_total)
    end
  end

  context 'when checkout with scanned B item' do
    it 'total is thirty' do
      expected_total = Money.new(30)
      subject.scan(ItemCode.new('B'))
      actual_total = subject.total

      expect(actual_total).to eql(expected_total)
    end
  end
end
