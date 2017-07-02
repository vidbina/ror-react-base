require 'rails_helper'

RSpec.feature "ContinuousIntegrations", type: :feature do
  describe 'comparison' do
    it 'of booleans' do
      expect(true).not_to be false
    end

    it 'of integers' do
      expect(1).to be > 0
      expect(0).to be < 1
    end
  end
end
