switch (objPlayer.touched) {
	case 0: image_index = 0;	
}


touched = objPlayer.touched;
if (touched > 3) {
	objControl.finalScore = objPlayer.movedUp;
	objControl.CoinsCollected = objPlayer.coin;
	room_goto(roomOverview);
}
image_index = touched;