extends Node


func _enter_tree() -> void:
    get_window().min_size = Vector2i(
        ProjectSettings.get_setting("display/window/size/viewport_width"),
        ProjectSettings.get_setting("display/window/size/viewport_height"))


func _shortcut_input(event: InputEvent) -> void:
    if event.is_action_pressed("ui_cancel"):
        $EscMenu.visible = not $EscMenu.visible
        get_viewport().set_input_as_handled()


func _on_menu_button_pressed() -> void:
    $EscMenu.visible = not $EscMenu.visible
