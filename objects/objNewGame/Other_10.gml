for (var i=1;i<4;i++) {
    if !file_exists("slot"+string(i)+".lsd") or name[i] = "" or level[i] = 0 {
        if file_exists("slot"+string(i)+".lsd") {
            file_delete("slot"+string(i)+".lsd")
        }
        text[i] = string(i)+": "+"Start New Game"
        game[i] = 0
    } else {
        text[i] = string(i)+": "+name[i]+" - "+"Level"+": "+string(level[i])//+"#           Location: "+place[i]+" - Time playing: "+string(floor(time[i]/3600))+":"+string(floor((time[i]/60) mod 60))+":"+string(time[i] mod 60)
        game[i] = 1
    }
}

