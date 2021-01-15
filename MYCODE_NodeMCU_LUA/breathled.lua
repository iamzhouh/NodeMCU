pin=4
pwm.setup(pin,1000,500)
pwm.start(pin)
while true do
    for var = 0,1023,1 do
        pwm.setduty(pin,var)
        tmr.delay(750)
        tmr.wdclr()
    end
    for var = 1023,0,-1 do
        pwm.setduty(pin,var)
        tmr.delay(750)
        tmr.wdclr()
    end
    tmr.wdclr()
end