class ApplicationController < ActionController::Base
  protect_from_forgery

  def initialize
  	Nombres.new
  end

end
