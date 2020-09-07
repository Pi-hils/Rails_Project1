class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  belongs_to :user
  validates :title, presence: true,
             length: { minimum: 5 }

  
             before_create :set_active

  scope :active, -> { where active: true }

  def total_likes
    0
  end

  private
 def set_active
  self.active = true
 end
end
