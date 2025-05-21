extends Sprite2D


@onready var myPlatformRef : Sprite2D = $"../Platoform"

# tracks our total number of frames
var countUp : int = 0


func _ready():
	
	var maggieIntro : String = "Hi! This is Maggie :D "
	print(maggieIntro)
	
	
	$"../Text_CountUp".text = maggieIntro





func _process(delta: float) -> void:
	
	# Increment this every single frame. 
	countUp = countUp + 1
	
	
	
	myPlatformRef.scale.x = (countUp * 0.02)
	myPlatformRef.scale.y = (countUp * 0.001)
	
	position.x += 1
	
	
	
	## Detects if we just input LEFT
	if Input.is_action_just_pressed("ui_left"):
		print("Left was just pressed!!!!")
