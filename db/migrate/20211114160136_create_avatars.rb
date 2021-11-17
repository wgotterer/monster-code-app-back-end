class CreateAvatars < ActiveRecord::Migration[6.1]
  def change
    create_table :avatars do |t|
      t.string :image_url
      t.string :name
      t.string :meta
      t.string :description
    end
  end
end
