class AddAttributesToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :password, :string
    add_column :authors, :website, :string
    add_column :authors, :bio, :text
    add_column :authors, :twitter, :string 
  end
end
