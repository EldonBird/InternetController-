@ECHO OFF 
:START
CLS
                                                                                                                                                                                                                                                                                                  
ECHO cut - Cut Internet
ECHO new - Renew Internet 
ECHO net - internet conections and dns
ECHO dis - Display dns and connections
ECHO clr - Clear Dns Cache
ECHO hon - Hide on Network
ECHO son - Show on Network
SET /P D=TYPE:
If %D%==cut GOTO CUT
If %D%==new GOTO RENEW
If %D%==dis GOTO Display
If %D%==clr GOTO FLUSH
If %D%==hon GOTO HON
If %D%==son GOTO SON
If %D%==arp GOTO ARP

:CUT
ipconfig /release
GOTO START

:RENEW
ipconfig /renew
GOTO START

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
