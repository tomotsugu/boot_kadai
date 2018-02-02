class CreateBsBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :bs_blogs do |t|
      t.string :title
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
