class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.reference :user

      t.timestamps
    end
  end
end
