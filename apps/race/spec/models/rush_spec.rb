require 'spec_helper'

describe Race::Rush do
  context 'setup tests' do
    it 'show a Rush can be created' do
      rush = Race::Rush.new
      expect(rush).to be_an_instance_of(Race::Rush)
    end
  end
  describe 'validations' do
    it 'on name attributes' do
      rush = Race::Rush.create
      expect(rush.persisted?).to be false
    end

    it 'on name attributes' do
      rush = Race::Rush.create(name: 'walk 500 miles')
      expect(rush.persisted?).to be true
    end
  end
end
