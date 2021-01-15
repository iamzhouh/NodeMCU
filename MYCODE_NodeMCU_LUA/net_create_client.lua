wifi.setmode(wifi.SOFTAP)

cfg={}
cfg.ssid="NODEMCU"
cfg.pwd="11111111"
wifi.ap.config(cfg)

print(wifi.ap.getip())

sk=net.createConnection(net.TCP, 0)
sk:connect(2346,"192.168.4.2")
sk:on("receive",  function(sv, c) 
    print(c)
end )
sk:send("i am client")