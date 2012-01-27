class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.datetime :inicio
      t.datetime :termino

      t.timestamps
    end
  end
end

