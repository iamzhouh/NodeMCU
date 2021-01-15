pin=4
gpio.mode(pin, gpio.OUTPUT) 

wifi.setmode(wifi.STATION)
wifi.sta.config("ZHOU","ZHOU13815623789")
wifi.sta.connect()

tmr.alarm(0, 5000, 1, function() 
    print(wifi.sta.getip())
end )

sv=net.createServer(net.TCP,30)
sv:listen(80,function(c)
    c:on("receive",function(c,msg)
        print(msg)
        if(msg=="1")then
            gpio.write(pin, gpio.LOW)  
            print("yes")
        elseif(msg=="0")then
            gpio.write(pin, gpio.HIGH)  
            print("yes")
        end
    end)
    c:send("server:connect success!")
end)

