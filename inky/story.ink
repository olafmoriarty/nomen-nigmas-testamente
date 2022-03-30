INCLUDE kontoret.ink
INCLUDE inventory.ink
INCLUDE villaen.ink
INCLUDE avisa.ink

LIST inv = (mobil), visittkort, testamente
LIST flags = gittButlerenBrevet, spurtEtterRedaktoren

VAR playerName = ""
VAR playerPronoun = "hen"
VAR puzzle1 = false

// Historia starter på kontoret, så gå dit
->kontoret

=== map
+ [Kontoret mitt] ->kontoret
+ {inv ? visittkort} [Slott Krankelfnaas] ->villaen
+ {puzzle1} [Dagens Nyhende] ->avisa 

