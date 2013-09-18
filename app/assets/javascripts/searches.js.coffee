# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  hands = $('#search_hand_id').html();
  grips = $('#search_grip_id').html();
  spins = $('#search_spin_id').html();
  #console.log(grips)
  $('#search_shot_id').change ->
    shot = $('#search_shot_id :selected').text()
    console.log(shot)
    emptyOption = $('<option />').attr('value', '');
    emptyOption.text("None")
    hand_options = $(hands).filter("optgroup[label='#{shot}']").prepend(emptyOption).html()
    grip_options = $(grips).filter("optgroup[label='#{shot}']").prepend(emptyOption).html()
    spin_options = $(spins).filter("optgroup[label='#{shot}']").prepend(emptyOption).html()
   #console.log(hand_options)
    if hand_options
      $('#search_hand_id').html(hand_options)
      $('#search_hand_id').parent().show()
    else
      $('#search_hand_id').empty()
      $('#search_hand_id').parent().hide()
    if grip_options
      $('#search_grip_id').html(grip_options)
      $('#search_grip_id').parent().show()
    else
      $('#search_grip_id').empty()
      $('#search_grip_id').parent().hide()
    if spin_options
      $('#search_spin_id').html(spin_options)
      $('#search_spin_id').parent().show()
    else
      $('#search_spin_id').empty()
      $('#search_spin_id').parent().hide()