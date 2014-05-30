$ ->
  $('.rush-standings').addClass('animated flipInX')
  $('.rush-update').addClass('animated flipInX')

  $('.big-link a').click (e) ->
    e.preventDefault()

  $(".standing-area").click ->
    $('.rush-standings').toggle()
    $('.rush-update').hide()

  $('.update-area').click ->
    $('.rush-update').toggle()
    $('.rush-standings').hide()


