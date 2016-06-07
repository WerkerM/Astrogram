$(document).on('ready', function() {
  updateFollows()
})

function updateFollows() {
  $('.follow-button').on('click', function(event) {
    var path = $('.follow').attr(href)
    $.ajax ({
      type: 'POST',
      url: path
    }).done(function() {
      alert(response)
    })
  })
}
