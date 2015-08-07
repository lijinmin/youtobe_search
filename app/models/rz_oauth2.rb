class RzOauth2 < ActiveRecord::Base
    # def self.init_open_auth
  #   if RzOauth2.where(:id=>1).first == nil
  #     @open_auth = RzOauth2.new
  #     @open_auth.authorization_uri = 'https://accounts.google.com/o/oauth2/auth'
  #     @open_auth.token_credential_uri = 'https://accounts.google.com/o/oauth2/token'
  #     @open_auth.redirect_uri = 'http://wxtest.aggso.com/oauth2callback'
  #     @open_auth.client_id = '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com'
  #     @open_auth.client_secret = 'VhUtzfBcK5s27z9rtkaH12Mz'
  #     @open_auth.scope = 'https://www.google.com/m8/feeds/'
  #     @open_auth.save
  #   end

  # end
  def self.get_auth_uri
    # Oauth2.init_open_auth
    client = Oauth.credentials
    auth_uri = (client.authorization_uri(options={})).to_s
  end
  def self.save_oauth_code(code)
    if RzOauth2.where(id: 1).first == nil
      rz_oauth2 = RzOauth2.new
      rz_oauth2.code = code
      rz_oauth2.save    
    else
      rz_oauth2 = RzOauth2.where(id: 1).first
      rz_oauth2.code = code
      rz_oauth2.save  
    end
  end
  def self.get_access_token
    client = Oauth.credentials
    rz_oauth2= RzOauth2.where(id: 1).first
    client.code= rz_oauth2.code
    token_hash = client.fetch_access_token!
    # if token_hash != nil
    #   open_auth.access_token = token_hash["access_token"]
    #   open_auth.token_type = token_hash["token_type"]
    #   open_auth.expires_in = token_hash["expires_in"]
    #   open_auth.update = Time.now
    #   open_auth.save
    # end
    return token_hash
  end
  # def self.credentials
  #   client = Signet::OAuth2::Client.new(
  #     :authorization_uri => 'https://accounts.google.com/o/oauth2/auth',
  #     :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
  #     :redirect_uri => 'http://wxtest.aggso.com/oauth2callback',
  #     :client_id => '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com',
  #     :client_secret => 'VhUtzfBcK5s27z9rtkaH12Mz',
  #     :scope => 'https://www.google.com/m8/feeds/'
  #     )
  #   return client  
  # end
end
