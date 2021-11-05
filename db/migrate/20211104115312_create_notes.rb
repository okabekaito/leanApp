class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title     null: false
      t.string :author    null: false
      t.text :Content     null: false

      t.timestamps
    end
  end
end
