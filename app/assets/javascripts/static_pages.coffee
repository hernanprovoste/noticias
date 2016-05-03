containerHeight = $('#hoy-content').height()
$text = $('#hoy-content p')
while $text.outerHeight() > containerHeight
  $text.text (index, text) ->
    text.replace /\W*\s(\S)*$/, '...'
