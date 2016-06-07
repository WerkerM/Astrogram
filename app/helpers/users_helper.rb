module UsersHelper
  def view_if_astronaut(user)
    if user.astronaut?
      email_domain = user.email.split('@')[1]
      "<span data-toggle='tooltip' data-placement='top' title='Verified Astronaut' class='verification pull-right glyphicon glyphicon-ok-circle' aria-hidden='true'></span><div class='verification pull-right'>#{image_tag(email_domain + '.jpg', class: 'space-badge')}</div>".html_safe
    else
      "<div class='verification pull-right'>Earthling</div>".html_safe
    end
  end
end

