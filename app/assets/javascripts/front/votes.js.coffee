$(document).ready ->
  alert(current_controller)
  if current_controller == 'votes'

    $(".add").click ->
      add_button = $(this).parent().closest("tr").find("#vote_count")
      box_value_as_int = parseInt(add_button.val())
      add_button.val box_value_as_int += 1
      false

    $(".remove").click ->
      remove_button = $(this).parent().closest("tr").find("#vote_count")
      box_value_as_int = parseInt(remove_button.val())
      remove_button.val box_value_as_int -= 1
      false