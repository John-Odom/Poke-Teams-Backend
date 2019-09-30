class CreatePoketeams < ActiveRecord::Migration[5.2]
  def change
    create_table :poketeams do |t|
      t.integer :team_id
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
