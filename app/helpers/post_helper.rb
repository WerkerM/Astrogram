module PostHelper

  def unitsOfDistance
    %w(km Mkm LY)
  end

  def relationalBodies
    ["Mercury", "Venus", "Earth", "Moon", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto", "Eris", "Ceres", "Haumea", "Makemake", "Solar Center", "Proxima Centurai", "Galactic Center"]
  end

  def render_post_form
    if current_user && current_user.astronaut?
      render 'posts/form'
    end
  end

  def render_image(post)
    if post.image_url.present?
      image_tag(post.image_url)
    end
  end

  def render_video(post)
    if post.video_url.present?
      video_embed_code(post).html_safe
    end
  end

  def video_embed_code(post)
    "<iframe width='560' height='315' src='https://www.youtube.com/embed/" +
    self.video_id(post) + "?autoplay=1&enablejsapi=1' frameborder='0' allowfullscreen></iframe>"
  end

  def video_id(post)
    post.video_url.gsub("https://www.youtube.com/watch?v=", "")
  end

  def format_stardate_and_space_tag(post)
    "#{space_tag(post)}".html_safe if post.space_tag.x
  end

  def star_date(post)
    if post.created_at
      date = post.created_at
      stardate = "#{date.year - 1900}#{date.month.to_s.rjust(2, "0")}.#{date.day.to_s.rjust(2, "0")}"
      "#{stardate}"
    end
  end

  def space_tag(post)
    if post.space_tag
      space_tag = post.space_tag
      units = space_tag.units

      "<div class='space-tag'>on <div class='space-tag-strong'>#{star_date(post)}</div>
      while orbiting <div class='space-tag-strong'>#{space_tag.relational_body}</div></br>
      <div class='space-tag-coords'>#{space_tag.x} #{units},  #{space_tag.y} #{units},  #{space_tag.z} #{units}</div></div>".html_safe
    end
  end
end
