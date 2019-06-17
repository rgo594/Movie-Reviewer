class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]
  skip_before_action :verify_authenticity_token

    def create
      # byebug
      @user = User.find_by(username: user_login_params[:username])
      #User#authenticate comes from BCrypt
      # byebug
      if @user && @user.authenticate(user_login_params[:password])
        token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end

    private

    def user_login_params
      # byebug
      # params { user: {username: 'Chandler Bing', password: 'hi' } }
      params.require(:user).permit(:username, :password)
    end
end
