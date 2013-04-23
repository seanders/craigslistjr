class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :secret_key
      t.string :title
      t.float :price
      t.string :description
      t.references :category
      t.timestamps

    end
  end
end
