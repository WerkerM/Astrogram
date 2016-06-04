module PostHelper

  def video_id(post)
    post.video_url.gsub("https://www.youtube.com/watch?v=", "")
  end

  def video_embed_code(post)
    "<iframe width='560' height='315' src='https://www.youtube.com/embed/" +
     self.video_id(post) + "' frameborder='0' allowfullscreen></iframe>"
  end
end
