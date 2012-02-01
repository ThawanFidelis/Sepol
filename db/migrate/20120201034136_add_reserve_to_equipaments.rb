class AddReserveToEquipaments < ActiveRecord::Migration
  def change
    add_column :equipaments, :reserve_id, :integer
  end
end

