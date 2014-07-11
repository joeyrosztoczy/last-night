class CreateLastNights < ActiveRecord::Migration
  def change
    create_table :last_nights do |b|
      b.integer :party_id
      b.integer :user_id
      b.integer :brew_count, default: 0
      b.timestamps
    end
  end
end
