module Race
  class NumericUpdate < ActiveRecord::Base

    scope :race_total, ->(race) { where("rush_id = ?", race) }

    belongs_to :rush

    validates_presence_of :quantity
  end
end
