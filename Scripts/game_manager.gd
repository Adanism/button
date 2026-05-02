extends Node2D

@onready var loss_screen: CanvasLayer = $"../Loss_Screen"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_loss_timer_timeout() -> void:
	loss_screen.visible = true
	
