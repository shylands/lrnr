class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.column :post_id, :integer
      t.column :title, :string
      t.timestamps
    end
  end
end
