INCLUDE kontoret.ink
INCLUDE inventory.ink
INCLUDE villaen.ink
INCLUDE avisa.ink

LIST inv = (mobil), visittkort, testamente, oppgaveark
LIST flags = gittButlerenBrevet, spurtEtterRedaktoren, veitOmUno, veitOmApebildet, settTwistVedVillaen, harAstridsTillit

VAR playerName = ""
VAR playerPronoun = "hen"
VAR playerPronounCap = "Hen"

VAR puzzle1 = 0
VAR puzzle2 = 0

// Historia starter på kontoret, så gå dit
->kontoret

=== map
+ [Kontoret mitt] ->kontoret
+ {inv ? visittkort} [Slott Krankelfnaas] ->villaen
+ {puzzle1} [Dagens Nyhende] ->avisa 

