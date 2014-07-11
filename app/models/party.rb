class Party < ActiveRecord::Base
  has_many :last_nights
  has_many :drinkers, through: :last_nights
  # Remember to create a migration!
end
