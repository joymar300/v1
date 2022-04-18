class CreateFichas < ActiveRecord::Migration[7.0]
  def change
    create_table :fichas do |t|
      t.integer :num_ficha

      t.timestamps
    end
  end
end
