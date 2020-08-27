class UsersController < ApplicationController
  before_action :authenticate_user!
  # user_signed_in?
  # current_user
  # user_session

  def Index
    #users feed
  end

  def show
    #users post
  end
end
