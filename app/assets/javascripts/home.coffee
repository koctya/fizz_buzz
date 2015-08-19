# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  for num in [1..100]
    #console.log? num
    $.post "/home/check", {val: num}, (data, status, jqXHR) ->
      $('#results').append "<li> #{data["val"]}  - #{data["result"]} </li>"
      #console.log? @data
    , 'json'
    .fail (jqXHr, textStatus, errorThrown) ->
      console.log? "error: #{textStatus} - #{errorThrown}"
      console.log? jqXHr.responseText
