@ECHO OFF 
:START
CLS
ECHO --------------------------------------
ECHO WELCOME TO ELDON'S INTERNET CONTROLLER 
ECHO --------------------------------------
ECHO 1 - Cut Internet
ECHO 2 - Renew Internet 
ECHO 3 - Display Internet Connections
ECHO 4 - Clear Dns Cache
SET /P D=Type 1, 2, 3, or 4 Then Press ENTER:
If %D%==1 GOTO CUT
If %D%==2 GOTO RENEW
If %D%==3 GOTO DISPLAY
If %D%==4 GOTO FLUSH

:CUT
ipconfig /release
GOTO START

:RENEW
ipconfig /renew
GOTO START

:DISPLAY
ipconfig /displaydns
CHOICE /M "Return To Menu"
GOTO START

:FLUSH
ipconfig /flushdns
GOTO START