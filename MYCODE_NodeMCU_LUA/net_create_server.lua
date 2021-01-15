wifi.setmode(wifi.SOFTAP)

cfg={}
cfg.ssid="NODEMCU"
cfg.pwd="11111111"
wifi.ap.config(cfg)

print(wifi.ap.getip())

sv=net.createServer(net.TCP,30)
sv:listen(80,function(c)
    c:on("receive",function(c,msg)
        print(msg)
    end)
    c:send("i am server!")
end)