module Race
  class Rush < ActiveRecord::Base
    validates_presence_of :name
  end
end
