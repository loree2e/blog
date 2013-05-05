class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :img
      t.text :description
      t.references :author
      t.references :imageable

      t.timestamps
    end
    add_index :images, :author_id
    add_index :images, :imageable_id
  end
end
