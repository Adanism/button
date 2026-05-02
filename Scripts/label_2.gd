extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_loss_timer_emittingtime(losstimeleft: Variant) -> void:
	var snapped_time = snapped(losstimeleft,0.1)
	text = ("time:" + str(snapped_time))
