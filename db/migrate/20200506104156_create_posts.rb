class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :post_typle
      t.string :post_url
      t.references :posters, null: false, foreign_key: true

      t.timestamps
    end
  end
end
