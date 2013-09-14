# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  grips = $('#grip').html();
  console.log(grips)
  $('#shot').change ->
    shot = $('#shot :selected').text()
    grip_options = $(grips).filter("optgroup[label='#{shot}']").html()
    if grip_options
      $('#grip').html(grip_options)
    else
      $('#grip').empty()

