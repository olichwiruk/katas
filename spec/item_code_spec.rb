# frozen_string_literal: true

require 'rspec'
require 'item_code'

RSpec.describe ItemCode do
  describe '#eql?' do
    let(:item_code1) { described_class.new(item_code1) }
    let(:item_code2) { described_class.new(item_code2) }

    context 'when both item_code objects have equal codes' do
      let(:item_code1) { 'A' }
      let(:item_code2) { 'A' }

      it 'returns true' do
        result = item_code1.eql?(item_code2)
        expect(result).to be_truthy
      end
    end

    context 'when item_code objects have different codes' do
      let(:item_code1) { 'A' }
      let(:item_code2) { 'B' }

      it 'returns false' do
        result = item_code1.eql?(item_code2)
        expect(result).to be_falsy
      end
    end
  end
end
