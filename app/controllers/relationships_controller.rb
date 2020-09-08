class RelationshipsController < ApplicationController
  def create
    user = User.find(params[:follow_id])
    following = current_user.follow(user)
    following.save
      redirect_to request.referrer
  end

  def destroy
    user = User.find(params[:id])
    following = current_user.unfollow(user)
    following.destroy
      redirect_to request.referrer
  end
end
