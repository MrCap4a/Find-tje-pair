extends Node2D

var finded_pair = []
var opened_cards = []
var positions = []
var timer = false
var score = 0


func _ready():
	update_score(0)
	var cards = [$Card, $Card2, $Card3, $Card4, $Card5, $Card6, $Card7, $Card8]
	for i in range(320, 771, 450):
		for j in range(180, 1081, 300):
			positions.append(Vector2(j , i))
	for card in cards:
		var pos_idx = randi_range(0, len(positions)-1)
		card.position = positions[pos_idx]
		positions.pop_at(pos_idx)
	opened_cards = ['1', '2']


func update_score(up):
	score += up
	$Score_label.text = 'Score: ' + str(score)
	if score == 4:
		$Won_label.visible = true

func _process(delta):
	if len(opened_cards) == 2:
		if $Card in opened_cards and $Card2 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card)
			finded_pair.append($Card2)
		elif $Card3 in opened_cards and $Card4 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card3)
			finded_pair.append($Card4)
		elif $Card5 in opened_cards and $Card6 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card5)
			finded_pair.append($Card6)
		elif $Card7 in opened_cards and $Card8 in opened_cards:
			opened_cards = []
			update_score(1)
			finded_pair.append($Card7)
			finded_pair.append($Card8)
		else:
			if not timer:
				$Timer.start(1)
				timer = true


func _on_card_open():
	if $Card not in opened_cards:
		opened_cards.append($Card)
func _on_card_2_open():
	if $Card2 not in opened_cards:
		opened_cards.append($Card2)
func _on_card_3_open():
	if $Card3 not in opened_cards:
		opened_cards.append($Card3)
func _on_card_4_open():
	if $Card4 not in opened_cards:
		opened_cards.append($Card4)
func _on_card_5_open():
	if $Card5 not in opened_cards:
		opened_cards.append($Card5)
func _on_card_6_open():
	if $Card6 not in opened_cards:
		opened_cards.append($Card6)
func _on_card_7_open():
	if $Card7 not in opened_cards:
		opened_cards.append($Card7)
func _on_card_8_open():
	if $Card8 not in opened_cards:
		opened_cards.append($Card8)


func _on_timer_timeout():
	for card in opened_cards:
		if not (card is String):
			card.close()
	opened_cards = []
	timer = false


func _on_home_button_pressed():
	get_tree().change_scene_to_file('res://main_menu.tscn')
