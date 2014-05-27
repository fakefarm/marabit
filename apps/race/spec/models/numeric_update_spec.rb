require 'spec_helper'

describe Race::NumericUpdate do
  context 'setup tests' do
    it 'a numeric update can be created' do
      update = Race::NumericUpdate.new
      expect(update).to be_an_instance_of(Race::NumericUpdate)
    end
  end
  describe 'validations' do
    it 'on entry attributes' do
      rush = Race::NumericUpdate.create
      expect(rush.persisted?).to be false
    end

    it 'on entry attributes' do
      rush = Race::NumericUpdate.create(entry: 'walk 500 miles')
      expect(rush.persisted?).to be true
    end
  end
end
