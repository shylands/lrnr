class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.references :user
      t.references :topic

      t.timestamps
    end
  end
end
