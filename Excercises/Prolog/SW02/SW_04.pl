n(red, green).		n(red, yellow).
n(green, red).		n(green, yellow).
n(yellow, red).		n(yellow, green).

colors(LU,NW ,OW, SZ, UR, ZG) :-UR = yellow, SZ=red,
    n(ZG, SZ),n(ZG,LU),
    n(SZ,UR), n(SZ,NW),
    n(UR,NW), n(UR,OW),
    n(NW,OW), n(NW,LU),
    n(OW,LU),
    n(LU,SZ).

