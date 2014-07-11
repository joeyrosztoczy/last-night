class LastNight < ActiveRecord::Base
  belongs_to :drinker, class_name: 'User', foreign_key: :user_id
  belongs_to :party
  # Remember to create a migration!
end
