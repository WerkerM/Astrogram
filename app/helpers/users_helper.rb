module UsersHelper
  def render_follow_button(astronaut, user)
    if astronaut.astronaut? && astronaut != current_user
      if astronaut.followed_by?(user)
        follow_button_markup(following, astronaut).html_safe
      else
        follow_button_markup(follow, astronaut).html_safe
      end
    end
  end

  def follow_button_markup(status, astronaut)
    "<div class='follow' data-astronaut-id='#{astronaut.id}'>
      <div class='btn btn-info btn-lg follow-button' data-astronaut-id='#{astronaut.id}'>#{status}</div>
    </div>"
  end

  def following
    "following"
  end

  def follow
    "+ follow"
  end

  def view_if_astronaut(user)
    if user.astronaut?
      agency_domain = user.email.split('@')[1]
      render_astronaut_badge(agency_domain)
    else
      render_puny_earthling
    end
  end

  def render_astronaut_badge(agency_domain)
    "<div class='space-badge'>#{image_tag(agency_domain + '.jpg')}
    </div>".html_safe
  end

  def render_puny_earthling
    "<div class='earthling-badge'>#{image_tag('earth.png')}
    </div>".html_safe
  end
end
