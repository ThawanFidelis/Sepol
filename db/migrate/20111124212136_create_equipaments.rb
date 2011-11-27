class CreateEquipaments < ActiveRecord::Migration
  def change
    create_table :equipaments do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    remove_column :equipaments
  end
end

