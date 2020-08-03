class RelationshipsController < ApplicationController
    def follow
        current_user.follow(params[:id])
        redirect_to request.referer
    end
    
    def unfollow
        current_user.unfollow(params[:id])
        redirect_to request.referer
    end

    def show_follower
        @user = current_user
        @users = @user.follower_user
    end
    def show_following
        @user = current_user
        @users = @user.following_user
    end

end
