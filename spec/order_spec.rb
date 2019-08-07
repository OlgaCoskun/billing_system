require 'spec_helper'

describe Order do
  describe '#initializing' do
    it 'should work fine if source is valid' do
      expect { Order.new(quantity: 10, source_name: "ACompany") }.not_to raise_error
    end
    it 'raises an error if source is invalid' do
      expect { Order.new(quantity: 10, source_name: "invalid") }.to raise_error Exception
    end
  end
end
