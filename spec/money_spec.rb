# frozen_string_literal: true

require 'rspec'
require 'money'

RSpec.describe Money do
  describe '#eql?' do
    let(:money1) { described_class.new(amount1) }
    let(:money2) { described_class.new(amount2) }

    context 'when monay objects have different amounts' do
      let(:amount1) { 1 }
      let(:amount2) { 2 }

      it 'returns false' do
        result = money1.eql?(money2)
        expect(result).to be_falsy
      end
    end

    context 'when both money objects have equal amounts' do
      let(:amount1) { 1 }
      let(:amount2) { 1 }

      it 'returns true' do
        result = money1.eql?(money2)
        expect(result).to be_truthy
      end
    end
  end
end
