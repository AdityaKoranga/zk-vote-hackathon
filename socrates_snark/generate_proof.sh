#!/bin/bash
# Serial number: 4fc7eede 15c80b26 bebd637f b992cfb9
# Secret:        4844d41c d43b2cdf d106b186 7408e1ee
zokrates compute-witness --verbose -a \
    $(printf "%u" $((16#4fc7eede))) \
    $(printf "%u" $((16#15c80b26))) \
    $(printf "%u" $((16#bebd637f))) \
    $(printf "%u" $((16#b992cfb9))) \
    $(printf "%u" $((16#4844d41c))) \
    $(printf "%u" $((16#d43b2cdf))) \
    $(printf "%u" $((16#d106b186))) \
    $(printf "%u" $((16#7408e1ee)))
    1
zokrates generate-proof
#### Pedersen:
# Yes vote: ["3663108286","398046313","1647531929","2006957770","2363872401","3235013187","3137272298","406301144"]
#### Sha256
# Hash of zeros(python): [947010094, 1586108330, 2035342336, 2181665870, 2307877287, 3171983932, 2208117790, 2472531402]
# Hash of zeros: ["1753322530","427712285","3703720195","2823132263","2087222896","476200146","2194495960","3856981803"]
# hash of 512-bit zeros: ["3663108286","398046313","1647531929","2006957770","2363872401","3235013187","3137272298","406301144"]
# hash of 512-bit zeros (python): [4121296194, 3513393200, 664334190, 3540621211, 1124089123, 551153896, 3935842729, 660208459]
# Should be: [2816824897, 2903176066, 2757160102, 2930689890, 3768105123, 2340501511, 1945890080, 3605001572]
# Is: ["721339692","2658122526","2418469568","1861650459","853455251","1734448545","2688138279","2588973068"]

zokrates inspect

#rm out.wtns witness

zokrates verify