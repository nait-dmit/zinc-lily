popupWindow = (url, title, w, h) ->
  left = (screen.width/2)-(w/2)
  top = (screen.height/4)-(h/2)
  return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left)
  NWin.focus() if window.focus


$('.popup').on 'click', ()->
  url = $(this).attr('href')
  popupWindow(url, "Share This Page", 600, 300)

  false
