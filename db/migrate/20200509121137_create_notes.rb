class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :note_location
      t.string :note_str

      t.timestamps
    end
  end
end
