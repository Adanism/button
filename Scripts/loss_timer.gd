extends Timer
var losstimeleft:int
signal emittingtime(losstimeleft)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	emit_signal("emittingtime",time_left)
