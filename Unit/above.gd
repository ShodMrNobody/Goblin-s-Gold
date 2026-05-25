extends Area2D
@onready var collision = self.get_child(0)
signal clicked (location:Vector2i)
var x_change = 80
var y_change = 40

var location

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	
		pass
	

	

	
	
	
func move_up():
	position.y = position.y - (y_change)
	position.x = position.x + (x_change)
	pass
func move_down():
	position.y = position.y + (y_change)
	position.x = position.x - (x_change)
	pass
func move_left ():
	position.y = position.y - (y_change)
	position.x = position.x - (x_change)
	pass
func move_right():
	position.y = position.y + (y_change)
	position.x = position.x + (x_change)
	pass


func _on_click(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_released("select") :
		location = Vector2i(position.x,position.y)
		print(self)
		print(location)
		clicked.emit(location)
	pass # Replace with function body.
