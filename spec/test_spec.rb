# frozen_string_literal: true

require 'rspec'

RSpec.describe 'FirstTest' do
  context 'when running test' do
    it 'pass' do
      expect(true).to be_truthy
    end
  end
end
