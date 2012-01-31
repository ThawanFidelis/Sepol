class AddEquipidToReserve < ActiveRecord::Migration
  def change
    add_column :reserves, :equipament_id, :integer
  end
end

