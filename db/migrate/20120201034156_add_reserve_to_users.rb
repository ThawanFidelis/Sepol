class AddReserveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reserve_id, :integer
  end
end

