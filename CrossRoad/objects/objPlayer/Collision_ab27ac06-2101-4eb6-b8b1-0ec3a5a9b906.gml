touched += 1;
goDown += 1;
objMiniChild.setNew = false;
scrDownPosition();
instance_destroy(other);
shake = true;
alarm[0] = shakeTime;

if (objSound.soundEffects = 1) {
	audio_play_sound(soundHit,1,false);
}