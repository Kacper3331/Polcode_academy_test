$ ->
  name = $("#welcome").data("name")
  if name
    alert "Welcome " + name
  else
    alert "Welcome stranger"
