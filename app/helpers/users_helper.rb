module UsersHelper
  def view_if_astronaut(user)
    if user.astronaut?
      agency_domain = user.email.split('@')[1]
      render_astronaut_badge(agency_domain)
    else
      render_puny_earthling
    end
  end

  def render_astronaut_badge(agency_domain)
    "<span data-toggle='tooltip' data-placement='top' title='Verified Astronaut' class='verification pull-right glyphicon glyphicon-ok-circle' aria-hidden='true'>
    </span><div class='verification pull-right'>#{image_tag(agency_domain + '.jpg', class: 'space-badge')}
    </div>".html_safe
  end

  def render_puny_earthling
    "<div class='verification pull-right'>Earthling</div>".html_safe
  end
end

