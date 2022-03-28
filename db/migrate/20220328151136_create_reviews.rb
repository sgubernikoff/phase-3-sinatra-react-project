class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :concert_id
      t.integer :concert_rating
      t.string :comment
    end
  end
end
