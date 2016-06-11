 module ApplicationHelper
  def navbar_logged_in
    if logged_in?
      "<div>#{link_to(@current_user.name, @current_user)} | #{link_to('Log Out', '/logout', method: 'delete')}</div>".html_safe
    else
      "<div>#{link_to('Sign Up', '/signup')} | #{link_to('Sign In', '/login')}</div>".html_safe
    end
  end

  def people_links
    "<div class='pull-right'>#{link_to('Astronauts', astronauts_path)} | #{link_to('Earthlings', earthlings_path)}</div>".html_safe
  end
end
