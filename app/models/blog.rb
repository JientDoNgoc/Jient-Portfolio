class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1}
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  validates_presence_of :title, :body, :topic_id
  
  mount_uploader :thumb_img, BlogUploader
  mount_uploader :main_img, BlogUploader
  
  belongs_to :topic
  
  has_many :comments, dependent: :destroy
  
  def self.special_blogs
    all
  end  
  
  def self.featured_blogs
    limit(2)
  end

  def self.recent
    order("created_at DESC")
  end
end
