extends Sprite2D


@onready var myPlatformRef : Sprite2D = $"../Platoform"
@onready var uiLabelRef : Label = $"../Text_CountUp"

# tracks our total number of frames
var countUp : int = 0


func _ready():
	var maggieIntro : String = "Hi! This is Maggie :D "
	print(maggieIntro)
	$"../Text_CountUp".text = maggieIntro



func _process(delta: float) -> void:	
	# Increment this every single frame. 
	
	
	countUp = _superWickedCountingMachine(countUp, 1)
	
	uiLabelRef.text = str(countUp)
	
	
	position.x += 1
	
	## Detects if we just input LEFT
	if Input.is_action_just_pressed("ui_left"):
		print("Left was just pressed!!!!")




func _superWickedCountingMachine(baseValue : int, valueToAdd : int):
	return baseValue + valueToAdd
