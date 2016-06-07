module UsersHelper
  def render_follow_button(astronaut, user)
    if astronaut.followed_by?(user)
      follow_button_markup(following).html_safe
    else
      follow_button_markup(follow).html_safe
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
end
