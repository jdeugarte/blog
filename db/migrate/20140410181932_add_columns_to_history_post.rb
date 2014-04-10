class AddColumnsToHistoryPost < ActiveRecord::Migration
  def change
  	  add_column :history_posts, :title, :string
		add_column :history_posts, :text, :string
		add_column :history_posts, :post_id, :integer, references: :posts
  end
end
