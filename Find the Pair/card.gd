extends StaticBody2D

signal open

func _process(delta):
	if Input.is_action_just_released("Mouse"): #Если нажал мышкой
		if $Back.get_rect().has_point(get_local_mouse_position()): #Если нажатие произошло внутри спрайта
			if self not in get_parent().finded_pair: #Если данная карта не входит в список карт, у которых были найдены пары
				if len(get_parent().opened_cards)<2: #Если на данный момент открыто менее двух карт (т.е. можно открыть еще одну)
					$Back.visible = false # То делаем невидимой рубашку карты (что бы пользователь увидел спрайт с картинкой, который находится под ней)
					emit_signal('open') # Посылаем сигнал в родительский скрипт о том, что данная карты была открыта


func close():
	$Back.visible = true
