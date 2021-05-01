class CreatePersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :personajes do |t|
      t.string :nombre
      t.numeric :edad
      t.numeric :peso
      t.string :historia
      t.string :peliculas_serie_relacionada
      t.string :image

      t.timestamps
    end
  end
end
