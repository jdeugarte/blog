class Post < ActiveRecord::Base
	has_many :comments
	has_many :history_posts
	validates :title, presence: true 
	validates :text , presence: true
	validates :category, presence: true

end
