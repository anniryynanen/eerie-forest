extends TileMap
## For hex guide and algorithms, see https://www.redblobgames.com/grids/hexagons/

var tiles: Array[Vector2i] = []


func _ready() -> void:
    # Center map on its anchor
    @warning_ignore("integer_division")
    position = Vector2i(
        -1 * tile_set.tile_size.x / 2,
        -1 * tile_set.tile_size.y / 2)

    # Add a square of tiles to the map
    var radius: int = 14
    # Enumerate tiles in radius
    for q in range(-radius, radius + 1):
        for r in range(maxi(-radius, -q - radius), mini(radius, -q + radius) + 1):
            # Cut off top and bottom corner
            var s: int = -q - r
            if absi(r) + absi(s) > radius + 1:
                continue

            tiles.append(Vector2i(q, r))

    # Fill map with dirt and grass
    for pos in tiles:
        if randf() < 0.3:
            set_sprite(pos, Sprites.DIRT)
        else:
            set_sprite(pos, Sprites.GRASS)


func set_sprite(pos: Vector2i, sprite: Vector2i) -> void:
    set_cell(0, axial_to_offset(pos), 0, sprite)


func axial_to_offset(pos: Vector2i) -> Vector2i:
    @warning_ignore("integer_division")
    return Vector2i(pos.x, pos.y + (pos.x - (pos.x & 1)) / 2)
