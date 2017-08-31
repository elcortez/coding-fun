# given a race with v1 speed and v2 speed
# v1 took the lead and ran g distance in advance
# how long will v2 take to catch up with v1?
def race(v1, v2, g)
   sec = (g * 3600 / (v2 - v1))
   [sec / 3600,  (sec / 60) % 60, sec % 60] if v2 > v1
end
