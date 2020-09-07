class LikesController < ApplicationController
  before_action :authenticate_user!

  def save_like
    @like = Like.new(post_id: params[:post_id], user_id: current_user.id)
    @post_id = params[:post_id]
    # exisiting_like = Like.where(post_id: params[:post_id], user_id: current_user.id).any?
   #  @post.user_id = current_user.id
  


      respond_to do |format|
        format.js{
          # if existinng_like.any?
            #Like alreeady exists for post by this user
            # exisiting_like.first.destrop

          #Like alreeady exists for post by this user
            # @success = false
          if @like.save
             @success = true 
          else
             @success = false 
          end
           render "posts/like"
        }
    end
  end
end
