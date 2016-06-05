$(document).ready(function() {
  inputHandler()
})

function inputHandler() {
  $('#post_image_url').on('keyup', function(event) {
    if (event.keyCode == 86) {
      var imageUrl = $('#post_image_url').val()
      $('media-preview').html('')
      $('.media-preview').html('<img src=' + imageUrl + '>')
    }
  })

  $('#post_video_url').on('keyup', function(event) {
    if (event.keyCode == 86) {
      var videoUrl = $('#post_video_url').val()
      var videoId = parseVideoUrl(videoUrl)
      $('media-preview').html('')
      $('.media-preview').html("<iframe width='560' height='315' src='https://www.youtube.com/embed/" + videoId + "?autoplay=1&enablejsapi=1' frameborder='0' allowfullscreen></iframe>")
    }
  })
}

function parseVideoUrl(videoUrl) {
  var id = videoUrl.replace("https://www.youtube.com/watch?v=", "")
  return id
}
