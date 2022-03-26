INCLUDE kontoret.ink
INCLUDE inventory.ink
INCLUDE villaen.ink
INCLUDE avisa.ink

LIST inv = (mobil), visittkort, testamente
VAR puzzle1 = false

// Historia starter på kontoret, så gå dit
->kontoret

=== map
+ [Kontoret mitt] ->kontoret
+ {inv ? visittkort} [Slott Krankelfnaas] ->villaen
+ {puzzle1} [Dagens Tidende] ->avisa 

