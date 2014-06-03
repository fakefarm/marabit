$ ->
  $('.move-btn').click ->
    parent = $(this).parent()
    next = parent.next()
    parent.addClass('animated').hide()
    next.addClass('animated-two fadeInLeft').show()

  $('#grab-content').click ->
    # inputs = $('.stage')
    # name = inputs.find('input').eq(0).val()
    # metric = inputs.find('input').eq(1).val()
    # desc = inputs.find('textarea').val()
    # $('#name').html(name)
    # $('#metric').html(metric)
    # $('#desc').html(desc)

  # $('.back-btn').click ->
  #   parent = $(this).parents().eq(2)
  #   prev = parent.prev()
  #   parent.hide()
  #   prev.show()



