$(document).ready(function() {
  videoHandler()
  $('[data-toggle="tooltip"]').tooltip()
})

function videoHandler() {
  $('#post_video_url').on('paste', function(event) {
    clearMediaPreview()
    hideImageUrl()

    setTimeout(function () {
      var videoUrl = $('#post_video_url').val()
      var videoId = parseVideoUrl(videoUrl)
      showVideoPreview(videoId)
    }, 50);
  })

  $('#post_video_url').on('keyup', function(event) {
    if ($('#post_video_url').val() === "") {
      clearMediaPreview()
      showImageUrl()
    }
  })
}

function clearMediaPreview() {
  $('.media-preview').html('')
}

function showVideoPreview(videoId) {
  $('.media-preview').html("<iframe width='560' height='315' src='https://www.youtube.com/embed/" + videoId + "?autoplay=1&enablejsapi=1' frameborder='0' allowfullscreen></iframe>")
}

function showImageUrl() {
  $('#post_image_url').show()
}

function hideImageUrl() {
  $('#post_image_url').hide()
}

function parseVideoUrl(videoUrl) {
  var id = videoUrl.replace("https://www.youtube.com/watch?v=", "")
  return id
}
