class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :avatar_id
      t.integer :level_id
      t.timestamps
    end
  end
end
