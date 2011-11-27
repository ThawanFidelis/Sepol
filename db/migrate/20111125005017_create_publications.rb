class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.text :titulo
      t.text :abstract
      t.string :link

      t.timestamps
    end
  end
  def self.down
    remove_column :publications
  end
end

