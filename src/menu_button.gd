extends Button

func _on_mouse_entered() -> void:
    if not button_pressed:
        $Hover.visible = true

func _on_mouse_exited() -> void:
    $Hover.visible = false

func _on_button_down() -> void:
    $Hover.visible = false
    $Down.visible = true

func _on_button_up() -> void:
    $Down.visible = false
    if is_hovered():
        $Hover.visible = true
