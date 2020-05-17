# frozen_string_literal: true

require 'rspec'
require 'checkout'
require 'money'

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
end
