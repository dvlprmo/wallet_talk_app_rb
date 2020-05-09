class AddDetailsToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :posts, null: false, foreign_key: true
  end
end
