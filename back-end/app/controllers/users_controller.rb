class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  # def create
  #   # params: {username '', password ''}
  #   User.create(user_params)
  #   if is_valid
  #     # payload ={ user.id: user.id }
  #
  #     token = JWT.encode payload, 'otters', 'HS256'
  #
  #     render json: { token: encode_token(user_payload(user)) }
  #   else
  #     render json: { errors: user.errors.full_messages }
  #   end
  # end
  #
  # def profile
  #   # user = User.find(current_user.id)
  #
  #   render json: current_user
  # end
  #
  #
  # private
  #
  # def user_params
  #   params.permit(:username, :password)
  # end

  def create
  # params: { username: '', password: '' }

  user = User.create(user_params)

  is_valid = user.valid?

  if is_valid
    render json: { token: encode_token(user) }
  else
    render json: { errors: user.errors.full_messages }
  end
end



  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

private

def user_params
  params.permit(:username, :password)
end
end
