class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories

  validates :title, presence: true
  validates :content, presence: true
  validates :categories, presence: true
  
  scope :newest_first, lambda { order("articles.created_at DESC") }
  
end
