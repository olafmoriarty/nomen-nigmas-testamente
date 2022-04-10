INCLUDE kontoret.ink
INCLUDE inventory.ink
INCLUDE villaen.ink
INCLUDE avisa.ink
INCLUDE villa_alle_rom.ink
INCLUDE biblioteket.ink
INCLUDE theodors_kontor.ink
INCLUDE hagen.ink
INCLUDE dagligstua.ink
INCLUDE kjeller.ink
INCLUDE epilog.ink








LIST inv = (mobil), visittkort, testamente, oppgaveark, apeark, diktbok, notehefte, blomsterark, skrinark
LIST flags = gittButlerenBrevet, spurtEtterRedaktoren, veitOmUno, veitOmApebildet, veitAtApaErDov, settTwistVedVillaen, harAstridsTillit, harTilgangTilHuset, harOpnaPengeskapet, harHoyrdOmDaVinci, harSettSkrinet, harRingtPolitiet

VAR playerName = ""
VAR playerPronoun = "hen"
VAR playerPronounCap = "Hen"

VAR puzzle1 = 0
VAR puzzle2 = 0
VAR puzzle3 = 0
VAR puzzle4 = 0
VAR puzzle5 = 0
VAR puzzle6 = 0
VAR puzzle7 = 0
VAR puzzle8 = 0

// Historia starter på kontoret, så gå dit
->kontoret

=== map
+ [Kontoret mitt] ->kontoret
+ {inv ? visittkort} [Slott Krankelfnaas] ->villaen
+ {puzzle1} [Dagens Nyhende] ->avisa 

