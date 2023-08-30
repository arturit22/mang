extends Control

var coins = 0
var label

func _ready():
	label = get_node("Label")

func GetCoin():
		coins +=1
		$Label.text = "coins: " + str(coins)
		
