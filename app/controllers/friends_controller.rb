class FriendsController < ApplicationController
  def index
    friends = Friend.all.order(:id)
    render json: friends
  end
end
