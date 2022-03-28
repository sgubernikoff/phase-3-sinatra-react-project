class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :date
      t.string :genre
      t.string :venue
      t.boolean :favorite_concert
    end
  end
end
