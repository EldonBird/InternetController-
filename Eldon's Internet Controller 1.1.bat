@ECHO OFF 
:START
CLS

ECHO ==============================================================================================
ECHO                                                                                                \
ECHO  _______   ___       ________  ________  ________           ________  ___  ________  ________   \
ECHO |\  ___ \ |\  \     |\   ___ \|\   __  \|\   ___  \        |\   __  \|\  \|\   __  \|\   ___ \   \ 
ECHO \ \   __/|\ \  \    \ \  \_|\ \ \  \|\  \ \  \\ \  \       \ \  \|\ /\ \  \ \  \|\  \ \  \_|\ \   \
ECHO  \ \  \_|/_\ \  \    \ \  \ \\ \ \  \\\  \ \  \\ \  \       \ \   __  \ \  \ \   _  _\ \  \ \\ \   \
ECHO   \ \  \_|\ \ \  \____\ \  \_\\ \ \  \\\  \ \  \\ \  \       \ \  \|\  \ \  \ \  \\  \\ \  \_\\ \   \
ECHO    \ \_______\ \_______\ \_______\ \_______\ \__\\ \__\       \ \_______\ \__\ \__\\ _\\ \_______\   \
ECHO     \|_______|\|_______|\|_______|\|_______|\|__| \|__|        \|_______|\|__|\|__|\|__|\|_______|    \
ECHO                                                                                                        \
ECHO ========================================================================================================                                                                                  
                                                                                                                                                                                          
ECHO cut - Cut Internet
ECHO new - Renew Internet 
ECHO net - internet conections and dns
SET /P D=TYPE:
If %D%==cut GOTO CUT
If %D%==new GOTO RENEW
If %D%==net GOTO NETWORK

:CUT
ipconfig /release
GOTO START

:RENEW
ipconfig /renew
GOTO START

:NETWORK
CLS
ECHO ------------------------
ECHO NETWORKS AND CONNECTIONS
ECHO ------------------------
ECHO dis - Display dns and connections
ECHO clr - Clear Dns Cache
ECHO hon - Hide on Network
ECHO son - Show on Network
ECHO arp - Arp -a or a ping of networks
Set /P D=Type:
If %D%==dis GOTO Display
If %D%==clr GOTO FLUSH
If %D%==hon GOTO HON
If %D%==son GOTO SON
If %D%==arp GOTO ARP

:DISPLAY
CLS
ipconfig /displaydns
CHOICE /M "Return To Menu"
GOTO START

:FLUSH
ipconfig /flushdns
GOTO START

:HON
Net config server/hidden:yes
GOTO START

:SON
Net config server/hidden:no
GOTO START

:ARP 
CLS
arp -a 
CHOICE /M "Return To Menu"
GOTO START


GOTO START