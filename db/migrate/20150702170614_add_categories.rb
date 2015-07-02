class AddCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
    end

    create_table :repositories do |t|
      t.integer :category_id
      t.string :repo_name
      t.string :repo_url
    end
  end
end
