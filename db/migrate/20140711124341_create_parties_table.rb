class CreatePartiesTable < ActiveRecord::Migration
  def change
    create_table :parties do |b|
      b.string :name
      b.string :location
      b.timestamps
    end
  end
end
