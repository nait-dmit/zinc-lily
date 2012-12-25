module ApplicationHelper

  def printable_view?
    (params[:action] == 'show' && params[:controller] == 'proposals')
  end

  def admin?
    session[:lock_opened] == true
  end

  def asset_url(asset)
    "#{request.protocol}#{request.host_with_port}#{asset_path(asset)}"
  end


end
