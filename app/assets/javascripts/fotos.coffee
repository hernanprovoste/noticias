# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $slideshow = $('.gallery ul')
  $slideactive = $slideshow.find('li.each').first().addClass('active').show()
  $('.direction .next').click ->
    $slideactive = $slideshow.find('li.active').next()
    if !$slideactive.size()
      $slideactive = $slideshow.find('li.each').first()
    $slideshow.find('li.active').removeClass 'active'
    $slideactive.addClass 'active'
    return
  return
