class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    # params: {username '', password ''}
    User.create(user_params)
    if is_valid
      # payload ={ user.id: user.id }

      token = JWT.encode payload, 'otters', 'HS256'

      render json: { token: encode_token(user_payload(user)) }
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def profile
    user = User.find(user_id)

    render json: user
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.permits(:username, :password)
  end
end
