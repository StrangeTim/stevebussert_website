class CreatePostsComments < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :body
    end

    create_table :comments do |t|
      t.integer :post_id
      t.string :text
    end
  end
end
