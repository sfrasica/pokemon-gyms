class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :poke_type
      #image st00f.
      t.string :sprite
      t.string :big_img
      t.string :attack
      t.string :background

      t.timestamps
    end
  end
end
