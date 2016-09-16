class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.text :codigo
      t.text :nombre
      t.integer :creditos

      t.timestamps null: false
    end
  end
end
