extends CharacterBody2D 

# 🛑 CRITICAL LINE 1: The Link (The Reference)
# This creates a variable that links directly to your message node.
# NOTE: This path (../HintMessage) assumes the HintMessage node is a sibling
# to the Player node in the main scene tree. CHANGE "HintMessage" 
# to the EXACT name of your TextureRect node.
@onready var message_element = $"../HintMessage" 


# -------------------------------------------------------------
# 🛑 CRITICAL LINE 2: The Instructions (Connected via Signal)
# This function runs when the "DetectionArea" sensor touches a TileMap.
# (This function was auto-created when you connected the 'body_entered' signal)
func _on_detection_area_body_entered(body: Node2D) -> void:
	
	# Check if the thing we touched is the TileMap.
	if body is TileMap:
		
		# Tell the linked message node to show itself.
		message_element.show() 


# -------------------------------------------------------------
# 🛑 CRITICAL LINE 3: The Instructions (Connected via Signal)
# This function runs when the "DetectionArea" sensor leaves the TileMap.
# (This function was auto-created when you connected the 'body_exited' signal)
func _on_detection_area_body_exited(body: Node2D) -> void:
	
	# Check if the thing we left is the TileMap.
	if body is TileMap:
		
		# Tell the linked message node to hide itself.
		message_element.hide()
