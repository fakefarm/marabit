module Race
  class Rush < ActiveRecord::Base
    has_many :numeric_updates, dependent: :destroy
    validates_presence_of :name
  end
end
