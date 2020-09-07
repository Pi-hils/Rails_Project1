class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_uniqueness_of :post_id, scope: :user_id 

  after_create :increase_post_like_counter
  after_destroy :decrease_post_like_counter

  private
  def increase_post_like_counter
    Post.find(self.post_id).increment(:total_likes_count).savve
  end

  def decrease_post_like_counter
    Post.find(self.post_id).decrement(:total_likes_count).savve
  end

end