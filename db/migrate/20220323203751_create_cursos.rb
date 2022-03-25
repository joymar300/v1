class CreateCursos < ActiveRecord::Migration[7.0]
  def change
    create_table :cursos do |t|
      t.references :area, null: false, foreign_key: true
      t.string :nombre_curso
      t.text :des_curso

      t.timestamps
    end
  end
end
