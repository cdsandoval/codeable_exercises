class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :nombre
      t.string :nombre_real
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
