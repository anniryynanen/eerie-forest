extends Node

func _enter_tree() -> void:
    get_window().min_size = Vector2i(
        ProjectSettings.get_setting("display/window/size/viewport_width"),
        ProjectSettings.get_setting("display/window/size/viewport_height"))
