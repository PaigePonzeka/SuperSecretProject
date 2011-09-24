$(document).ready ->
  alert(current_controller)
  if current_controller == 'votes'
    (($) ->
      $(document).ready ->
        $(".add").click ->
          add_button = $(this).parent().closest("tr").find("#vote_count")
          $(this).parent().closest("tr").css "color", "#f00"
          box_value_as_int = parseInt(add_button.val())
          add_button.val box_value_as_int += 1
          false

        $(".remove").click ->
          alert "Remove 1 from the parent"
    ) jQuery