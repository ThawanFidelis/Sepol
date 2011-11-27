class CreateResearchers < ActiveRecord::Migration
  def change
    create_table :researchers do |t|
      t.string :nome
      t.string :email
      t.string :cargo
      t.string :lattes

      t.timestamps
    end
  end

  def self.down
    drop_table :researchers
  end
end

