extends Control


func _gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        var button = event as InputEventMouseButton

        if button.pressed and button.button_index == MOUSE_BUTTON_LEFT:
            visible = false
