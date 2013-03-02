class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.reference :user
      t.reference :topic

      t.timestamps
    end
  end
end
