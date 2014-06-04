$ ->
  $('.move-btn').click ->
    parent = $(this).parent().parent()
    next = parent.next()
    parent.hide()
    next.addClass('animated-two fadeInRight').show()
    next.find('.fa-new-rush').addClass('animated-two')
    parent.removeClass('fadeInLeft')


  $('.back-btn').click ->
    parent = $(this).parent().parent()
    prev = parent.prev()
    parent.hide()
    prev.show()

  $('#grab-content').click ->
    inputs = $('.stage')
    name = inputs.find('input').eq(0).val()
    metric = inputs.find('input').eq(1).val()
    desc = inputs.find('textarea').val()
    $('#name').html(name)
    $('#metric').html(metric)
    $('#desc').html(desc)




