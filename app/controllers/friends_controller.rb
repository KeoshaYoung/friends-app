class FriendsController < ApplicationController
  def index
    friends = Friend.all.order(:id)
    render json: friends
  end

  def create
    friend = Friend.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      twitter: params[:twitter],
    )
    if friend.save
      render json: friend
    else
      render json: { errors: friend.errors.full_messages },
             status: :bad_request
    end
  end
end
