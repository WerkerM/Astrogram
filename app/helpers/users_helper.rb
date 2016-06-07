module UsersHelper
  def render_follow_button(astronaut, user)
    if astronaut.astronaut? && astronaut != current_user
      if astronaut.followed_by?(user)
        follow_button_markup(following).html_safe
      else
        follow_button_markup(follow).html_safe
      end
    end
  end

  def follow_button_markup(status)
    "<div class='follow' astronaut_id='#{@user.id}'>
      <div class='btn btn-info btn-lg follow-button'>#{status}</div>
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
      email_domain = user.email.split('@')[1]
      "<span data-toggle='tooltip' data-placement='top' title='Verified Astronaut' class='verification pull-right glyphicon glyphicon-ok-circle' aria-hidden='true'></span><div class='verification pull-right'>#{image_tag(email_domain + '.jpg', class: 'space-badge')}</div>".html_safe
    else
      "<div class='verification pull-right'>Earthling</div>".html_safe
    end
  end
end
