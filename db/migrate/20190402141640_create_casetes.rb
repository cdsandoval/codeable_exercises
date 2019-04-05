class CreateCasetes < ActiveRecord::Migration[5.2]
  def change
    create_table :casetes do |t|
      t.string :formato
      t.references :pelicula, foreign_key: true

      t.timestamps
    end
  end
end
