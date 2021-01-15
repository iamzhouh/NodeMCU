wifi.setmode(wifi.STATIONAP)

wifi.sta.config("Z","zhouzhou")

wifi.sta.connect()

tmr.alarm(0, 1000, 1, function() 
    print(wifi.sta.getip())
end )

