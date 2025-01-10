extends Node


func display_a_tile(tile_width, tile_offset_x):

    var tile_offset_y = 200

    var texture_rect = TextureRect.new()
    texture_rect.offset_top    = tile_offset_y - (0.5 * tile_width)
    texture_rect.offset_left   = tile_offset_x - (0.5 * tile_width)
    texture_rect.offset_right  = tile_offset_x + (0.5 * tile_width)
    texture_rect.offset_bottom = tile_offset_y + (0.5 * tile_width)
    texture_rect.texture = load('red_arrows_tile.png')

    add_child(texture_rect)


func _ready():

    var tile_width
    var tile_offset_x

    tile_width = 50
    tile_offset_x = 300
    display_a_tile(tile_width, tile_offset_x)

    tile_width = 100
    tile_offset_x = 600
    display_a_tile(tile_width, tile_offset_x)

    tile_width = 200
    tile_offset_x = 900
    display_a_tile(tile_width, tile_offset_x)