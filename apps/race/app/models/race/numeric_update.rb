module Race
  class NumericUpdate < ActiveRecord::Base
    belongs_to :rush
    validates_presence_of :quantity
  end
end
