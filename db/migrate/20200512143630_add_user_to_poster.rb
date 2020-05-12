class AddUserToPoster < ActiveRecord::Migration[6.0]
  def change
    add_reference :posters, :user, null: false, foreign_key: true
  end
end
