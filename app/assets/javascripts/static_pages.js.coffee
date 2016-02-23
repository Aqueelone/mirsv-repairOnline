# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

setActive = (obj) ->
  $('.topmenu a.active').removeClass 'active'
  $(obj).addClass 'active'
  return

$ ->
  $('.topmenu a').each ->
    if $(this).attr('href') == $(location).attr('pathname')
      setActive this
    return
  return