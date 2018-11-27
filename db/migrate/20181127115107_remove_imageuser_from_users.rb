class RemoveImageuserFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :imageuser
  end
end
