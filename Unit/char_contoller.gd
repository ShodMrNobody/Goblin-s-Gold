extends Sprite2D
var movement_scene = load("res://Unit/movement.tscn")

@onready var body = $CharacterBody2D/CollisionShape2D
#y-change 80
#x-change 160


var has_moved := true
var location
var cur_movement := 1
var movement := 3
var root_1
var root_2
var root_3
var root_4
var move_location

func _ready() -> void:
	location = Vector2i(self.position.x,self.position.y)
	root_1 = movement_scene.instantiate()
	root_2 = movement_scene.instantiate()
	root_3 = movement_scene.instantiate()
	root_4 = movement_scene.instantiate()
	
	
	self.add_child(root_1)
	self.add_child(root_2)
	self.add_child(root_3)
	self.add_child(root_4)
	root_2.move_right()
	root_2.move_down()
	root_3.move_left()
	root_3.move_down()
	root_4.move_down()
	root_4.move_down()
	place_movement()
	
	for t in self.get_children():
		t.clicked.connect(move)
	
	
func move(x):
	print(x)
	move_location = x
	pass
	
func move_up():
	position.y -= 4
	position.x += 8
func move_down():
	position.y += 4 
	position.x -= 8
func move_left():
	position.y -= 4
	position.x -= 8
func move_right():
	position.y += 4
	position.x += 8
	
func _process(delta: float) -> void:
	if Input.is_action_just_released("up"):
		move_up()
	if Input.is_action_just_released("down"):
		move_down()
	if Input.is_action_just_released("left"):
		move_left()
	if Input.is_action_just_released("right"):
		move_right()


#func move_click(viewport: Node, event: InputEvent, shape_idx: int) -> void:
#	if Input.is_action_just_released("select"):
#		print(self.location)
	pass # Replace with function body.
	
func place_movement():
	while cur_movement < movement:
		var new_node = movement_scene.instantiate()
		if cur_movement == 1:
			print(new_node.location)
		cur_movement+=1
