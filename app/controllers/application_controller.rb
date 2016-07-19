class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Coming Soon: Sports_App"
  end
  
end
