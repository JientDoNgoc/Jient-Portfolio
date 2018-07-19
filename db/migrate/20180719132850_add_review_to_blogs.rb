class AddReviewToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :post_review, :text
  end
end
