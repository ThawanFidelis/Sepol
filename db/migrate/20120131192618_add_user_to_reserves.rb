class AddUserToReserves < ActiveRecord::Migration
  def change
    add_column :reserves, :user_id, :integer
  end
end

