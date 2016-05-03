containerHeight = $('.imagen-hoy-content').height()
$text = $('.imagen-hoy-content p')
while $text.outerHeight() > containerHeight
  $text.text (index, text) ->
    text.replace /\W*\s(\S)*$/, '...'
