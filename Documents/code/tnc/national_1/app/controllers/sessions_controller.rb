class SessionsController < ApplicationController
  # env['omniauth.auth'] we have this omniauth hash

  def create
    auth = env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth['provider'], auth['uid']) || User.create_with_omniauth(auth)

    #back to controller now that we have a user we can sign him in by storing his user id and his session
    session[:user_id] = user.id
    redirect_to :inicio_index , notice: 'signed in'
  end


  # def create
  #   @user = User.find_or_create_from_auth_hash(auth_hash)
  #   self.current_user = @user
  #   redirect_to '/'
  # end

  # protected

  # def auth_hash
  #   request.env['omniauth.auth']
  # end


  # def create
  #   raise request.env["omniauth.auth"].to_yaml
  # end

end
