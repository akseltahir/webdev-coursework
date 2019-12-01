class AddUserIdToEchos < ActiveRecord::Migration[5.2]
  def change
    add_column :echos, :user_id, :integer
    add_index :echos, :user_id
  end
end
