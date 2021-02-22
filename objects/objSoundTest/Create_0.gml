init_jukebox()

ok = 0
arm_angle_start = 234
arm_angle_final = 205
arm_angle = arm_angle_start
record_angle = 0
audio_length = 0
audio_position = 0
now_playing = 0
now_playing_id = 0
now_playing_audio = 0
pause = 0
restarting = 0

ini_open(global.config_fname)
last_chapter_unlocked = ini_read_real("Settings","last",0)
ini_close()

//Select by chapter
max_song_id = 13

alarm[0] = 1

