class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :item, index: true
      t.references :order, index: true
      t.text :review
      t.integer :stars
      t.timestamps
    end
  end
end
