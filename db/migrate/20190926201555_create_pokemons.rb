class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image
      t.integer :experience
      t.string :poketype

      t.timestamps
    end
  end
end
