module ApplicationHelper

  def printable_view?
    (params[:action] == 'show' && params[:controller] == 'proposals')

  end


end
