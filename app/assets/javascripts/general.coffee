$(document).keydown (e) ->
  if e.keyCode == 16
    $('.topmenu li.last').toggleClass('last')
    $('.topmenu li').last().toggleClass('last')
    $('.topmenu li.hidden').toggleClass('hidden')
  return
