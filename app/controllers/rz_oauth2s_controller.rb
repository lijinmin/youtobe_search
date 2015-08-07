class RzOauth2sController < ApplicationController
  def rz_xieye
    @auth_uri = RzOauth2.get_auth_uri
  end
  def oauth2callback
    RzOauth2.save_oauth_code(params[:code])
    @token_hash = RzOauth2.get_access_token
  end
end
