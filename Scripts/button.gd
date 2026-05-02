extends Node2D
@onready var press_timer: Timer = $PressTimer
@onready var sprite_2d: Sprite2D = $Sprite2D
var currentpresscount:int
signal presscount(currentpresscount)
var mouse_is_inside:bool
var speed = 300
var velocity = Vector2(1, 1).normalized() * speed
func CENTERBUTTON():
	var XVIEWPORT = get_viewport().size.x 
	var YVIEWPORT = get_viewport().size.y
	var CENTERVIEWPORT = Vector2((XVIEWPORT/2),(YVIEWPORT/2))
	print(CENTERVIEWPORT)
	position = CENTERVIEWPORT
func _ready() -> void:
	CENTERBUTTON()
func PRESSACTION():
	if mouse_is_inside == true:
		if Input.is_action_just_pressed("Press"):
			currentpresscount += 1
			emit_signal("presscount",currentpresscount)
			print("should emit")
func _on_area_2d_mouse_entered() -> void:
	mouse_is_inside = true
	# I used press because I want to make to a challenge by randomly chaning the inputs
func _on_area_2d_mouse_exited() -> void:
	mouse_is_inside = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func DVD_SCREEN_MOVEMENT(delta:float):
	position += velocity * delta
	
	var screen_size = get_viewport_rect().size
	var sprite_size = sprite_2d.texture.get_size() * scale / 2 

	if position.x + sprite_size.x >= screen_size.x or position.x - sprite_size.x <= 0:
		velocity.x *= -1
		modulate = Color(randf(), randf(), randf())
		
	if position.y + sprite_size.y >= screen_size.y or position.y - sprite_size.y <= 0:
		velocity.y *= -1
		modulate = Color(randf(), randf(), randf())
func _process(delta: float) -> void:
	PRESSACTION()
	DVD_SCREEN_MOVEMENT(delta)

	
