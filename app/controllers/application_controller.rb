class ApplicationController < ActionController::Base
  protect_from_forgery

  WillPaginate.per_page=45

end
