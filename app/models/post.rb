class Post < ActiveRecord::Base

	validates :title, presence: true
	validates :title, length: { maximum: 100 }
	validates :body, presence: true
	validates :body, length: { minimum: 10 }
end
