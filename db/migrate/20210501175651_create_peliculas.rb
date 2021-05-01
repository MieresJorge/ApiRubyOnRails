class CreatePeliculas < ActiveRecord::Migration[6.1]
  def change
    create_table :peliculas do |t|
      t.string :titulos
      t.numeric :fecha
      t.string :image

      t.timestamps
    end
  end
end
