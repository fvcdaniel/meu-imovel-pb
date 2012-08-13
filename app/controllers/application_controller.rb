class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :banners
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  def banners
    @banners = Banner.where(:ativo => true)
  end
  
end
