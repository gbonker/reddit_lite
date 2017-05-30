class AddDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comments_url, :string
    add_column :posts, :number_of_comments, :integer
    add_column :posts, :upvotes, :integer
    add_column :posts, :downvotes, :integer
    add_column :posts, :posted_at, :datetime
    add_column :posts, :author_name, :string
  end
end
