class AddReserveForeignKeys < ActiveRecord::Migration
  def self.up
    add_column :equipaments, :reserve_id, :integer
    add_column :users, :reserve_id, :integer
  end

  def self.down
    remove_column :equipaments, :reserve_id
    remove_column :users, :reserve_id
  end
end

