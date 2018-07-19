class AddMainImageToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :main_img, :text
  end
end
