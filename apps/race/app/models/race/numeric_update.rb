module Race
  class NumericUpdate < ActiveRecord::Base
    validates_presence_of :entry
  end
end
