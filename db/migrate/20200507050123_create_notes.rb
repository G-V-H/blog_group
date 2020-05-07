class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.references :user, foreign_key: true
      t.references :blog, foreign_key: true
      t.text :text_field

      t.timestamps
    end
  end
end
