class AddImageuserToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :imageuser, :string
  end
end
