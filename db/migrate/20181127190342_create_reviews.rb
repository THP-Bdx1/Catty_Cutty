class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :item, index: true
      t.references :order, index: true
      t.text :content
      t.integer :star
      t.timestamps
    end
  end
end
