class AddOriginalContentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :original, :boolean
    add_column :posts, :agreement, :boolean
  end
end
