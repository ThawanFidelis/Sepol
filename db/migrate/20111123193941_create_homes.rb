class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :titulo
      t.text :texto

      t.timestamps
    end
  end
end

