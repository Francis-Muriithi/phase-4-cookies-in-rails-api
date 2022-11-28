class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "World"
    cookies[:cookies_hello] ||= "Worlder"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
