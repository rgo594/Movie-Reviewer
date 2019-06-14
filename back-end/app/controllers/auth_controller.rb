class AuthController < ApplicationController
  def login
    #params: {username '', password ''}
    #find the user by username
    #authenticate the user
    #log in the user
    user = User.find_by(username: params["username"])

    puts is_authenticated = user.authenticate(params["password"])

    if is_authenticated

      # payload ={ user.id: user.id }
      # token = JWT.encode payload, 'otters', 'HS256'

      render json: { token: encode_token(user)}
    else
      render json: { error: "Wrong username or password"}
    end
  end
end
