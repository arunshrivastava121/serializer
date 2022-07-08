class Api::UsersController < ApplicationController
  def index 
    @users = User.all 

    # Note that, if you want to render a collection of resources, you need to use each_serializer: instead of serializer:.
    # render json: @users, each_serializer: SenderSerializer
    render json: @users, status: :ok
  end
end
