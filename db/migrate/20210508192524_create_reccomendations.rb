class CreateReccomendations < ActiveRecord::Migration[6.0]
  def change
    create_table :reccomendations do |t|
      t.string :title
      t.string :creator
      t.string :media
      t.string :description

      t.timestamps
    end
  end
end
