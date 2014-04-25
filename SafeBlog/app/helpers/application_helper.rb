module ApplicationHelper

  def user_logged_in?
    !session[:user_id].nil?
  end

end
