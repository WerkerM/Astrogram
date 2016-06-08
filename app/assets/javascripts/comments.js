$(document).on('ready', function() {
  $('.new-comment').on('ajax:success', postComment)
})

function postComment(e, data) {
  $(this).parent().find('.new-comment').before(data.comment)
  $(this).find('#comment_content').val('')
}
