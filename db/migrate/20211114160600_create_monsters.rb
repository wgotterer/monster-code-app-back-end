class CreateMonsters < ActiveRecord::Migration[6.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :image_url
      t.integer :level_id
    end
  end
end
