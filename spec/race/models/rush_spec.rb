require 'spec_helper'

describe Race::Rush do
  context 'setup tests' do
    it 'show a Rush can be created' do
      rush = Rush.new
      expect(rush).to be_an_instance_of(Rush)
    end
  end
end
