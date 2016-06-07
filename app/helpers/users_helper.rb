module UsersHelper
  def view_if_astronaut
    if @current_user.astronaut?
      email_domain = @current_user.email.split('@')[1]
      "<div class='verification pull-right'>Verified Astronaut #{image_tag(email_domain + '.jpg', class: 'space-badge')}</div>".html_safe
    else
      "<div class='verification pull-right'>Earthling</div>".html_safe
    end
  end
end
