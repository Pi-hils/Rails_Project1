class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  validates :title, presence: true,
             length: { minimum: 5 }

  

  def total_likes
    0
  end

  private
 def set_active
  self.active = true
 end
end
