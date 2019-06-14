class ApplicationController < ActionController::Base
  def user_payload(user)
    { user_id: user.id }
  end

  def encode_token(user)
    JWT.encode(user_payload(user), 'otters', 'HS256')
  end

  
end
