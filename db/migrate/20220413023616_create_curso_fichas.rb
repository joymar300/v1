class CreateCursoFichas < ActiveRecord::Migration[7.0]
  def change
    create_table :curso_fichas do |t|
      t.references :curso, null: false, foreign_key: true
      t.references :ficha, null: false, foreign_key: true

      t.timestamps
    end
  end
end
