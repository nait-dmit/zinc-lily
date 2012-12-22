module ApplicationHelper

  def printable_view?
    (params[:action] == 'show' && params[:controller] == 'proposals')
  end

  def admin?
    session[:lock_opened] == true
  end


end
