class CreatePosters < ActiveRecord::Migration[6.0]
  def change
    create_table :posters do |t|
      t.string :name
      t.string :imgprofile
      t.string :overview

      t.timestamps
    end
  end
end
