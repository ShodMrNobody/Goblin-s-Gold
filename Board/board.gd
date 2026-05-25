extends TileMapLayer

@onready var unit = $Sprite2D
var current_tile
var next_tile
func _ready() -> void:
	current_tile = self.local_to_map(unit.location)
#	next_tile = self.local_to_map(unit.moveup.location)
	print(unit.location)
	print(current_tile)
	print(next_tile)
	var is_water = self.get_cell_tile_data(current_tile)
	
	
func _process(delta: float) -> void:
	if Input.is_action_just_released("select"):
		unit.position = self.local_to_map(unit.move_location)
