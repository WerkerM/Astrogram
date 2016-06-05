module ApplicationHelper
  def navbar_logged_in
    if logged_in?
      "<span class='pull-right'>#{link_to(@current_user.name, @current_user)} | #{link_to('Log Out', '/logout', method: 'delete')}</span>".html_safe
    else
      "<span class='pull-right'>#{link_to('Sign In', '/login')}</span>".html_safe
    end
  end
end
