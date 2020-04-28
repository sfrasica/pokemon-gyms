class CreateGymleaders < ActiveRecord::Migration[5.2]
  def change
    create_table :gymleaders do |t|
      t.string :name
      t.string :specialty
      t.string :city

      # image st00f.
      t.string :badge_name
      t.string :badge_img
      
      t.string :portrait
      t.string :headshot
      t.string :sprite
      t.string :fullbody
      t.string :bg
      t.timestamps
    end
  end
end
