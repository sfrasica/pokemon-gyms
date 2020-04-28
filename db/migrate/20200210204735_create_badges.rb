class CreateBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :badges do |t|
      t.belongs_to :trainer, foreign_key: true
      t.belongs_to :gymleader, foreign_key: true
      t.timestamps
    end
  end
end
