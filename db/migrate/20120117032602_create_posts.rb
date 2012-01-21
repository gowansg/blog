class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.int :id
      t.string :title
      t.boolean :published
      t.datetime :published_at
      t.boolean :comments_allowed
      t.text :content

      t.timestamps
    end
  end
end
