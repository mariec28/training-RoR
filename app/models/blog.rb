class Blog < ApplicationRecord
  enum status: {draft:0, publised: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged 

  validates_presence_of :title, :body

  belongs_to :topic

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
end
 