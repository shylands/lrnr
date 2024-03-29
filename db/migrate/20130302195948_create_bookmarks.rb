class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :post
      t.references :user

      t.timestamps
    end
    add_index :bookmarks, :post_id
    add_index :bookmarks, :user_id
  end
end
