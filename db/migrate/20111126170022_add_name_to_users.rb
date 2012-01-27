class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
  end

  def self.down
    remove_column :users, :name
  end
end

