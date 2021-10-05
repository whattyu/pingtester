:Start
@Echo off
title Whattyu- Ping Tester
mode con cols=47 lines=50

setlocal
call :setESC

ECHO.
ECHO.      Whattyu - Ping Tester
ECHO.
ECHO    =========================================== && ECHO.   %ESC%[33mValve%ESC%[0m
CALL:Valve vie.valve.net
ECHO      %ESC%[36m Vienna %ESC%[0m                          %ESC%[33m%ms%%ESC%[0m 
CALL:Valve 155.133.248.53
ECHO      %ESC%[36m Amsterdam %ESC%[0m                       %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[33mRiot Games%ESC%[0m
CALL:Riot tr.leagueoflegends.com
ECHO      %ESC%[36m Turkey%ESC%[0m                           %ESC%[33m%ms%%ESC%[0m 
CALL:Riot   104.160.143.124
ECHO      %ESC%[36m Frankfurt%ESC%[0m                        %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[33mCS:GO%ESC%[0m 
CALL:CSGO 213.202.233.109
ECHO      %ESC%[36m Faceit-Europe%ESC%[0m                    %ESC%[33m%ms%%ESC%[0m 
CALL:CSGO   counter-strike.net
ECHO      %ESC%[36m CounterStrike.net%ESC%[0m                %ESC%[33m%ms%%ESC%[0m 
CALL:CSGO dm.wasp.gen.tr
ECHO      %ESC%[36m Wasp.gen.tr%ESC%[0m                      %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[33mFortnite%ESC%[0m
Call:Fortnite qosping-aws-eu-west-3.ol.epicgames.com
ECHO      %ESC%[36m Europe%ESC%[0m                           %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[33mPUBG%ESC%[0m
Call:PUBG 35.156.63.252
ECHO      %ESC%[36m Frankfurt%ESC%[0m                        %ESC%[33m%ms%%ESC%[0m  
ECHO    =========================================== && ECHO.   %ESC%[33mAmazon%ESC%[0m
CALL:Amazon 52.94.15.16
ECHO      %ESC%[36m London%ESC%[0m                           %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[33mDNS%ESC%[0m
Call:DNS 1.1.1.1
ECHO      %ESC%[36m CloudFlare%ESC%[0m                       %ESC%[33m%ms%%ESC%[0m 
Call:DNS 8.8.8.8
ECHO      %ESC%[36m Google%ESC%[0m                           %ESC%[33m%ms%%ESC%[0m 
Call:DNS 208.67.222.222
ECHO      %ESC%[36m Open%ESC%[0m                             %ESC%[33m%ms%%ESC%[0m 
Call:DNS 198.153.192.1
ECHO      %ESC%[36m Norton%ESC%[0m                           %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[33mTwitch%ESC%[0m
Call:Twitch 199.232.138.167
ECHO      %ESC%[36m Europe%ESC%[0m    		        %ESC%[33m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[33mMinecraft%ESC%[0m
Call:Minecraft 172.65.230.98
ECHO      %ESC%[36m Hypixel%ESC%[0m                          %ESC%[33m%ms%%ESC%[0m 
Call:Minecraft 51.91.200.191
ECHO      %ESC%[36m CubeCraft%ESC%[0m                        %ESC%[33m%ms%%ESC%[0m 
Call:Minecraft 107.6.153.141
ECHO      %ESC%[36m Mineplex(PE)%ESC%[0m                     %ESC%[33m%ms%%ESC%[0m 
Call:Minecraft 172.67.198.40
ECHO      %ESC%[36m Herobrine.org%ESC%[0m                    %ESC%[33m%ms%%ESC%[0m 
ECHO    ===========================================
ECHO.
ECHO           %ESC%[33m- Press a key to refresh -%ESC%[0m
ECHO        %ESC%[33m- Yenilemek icin bir tusa basin -%ESC%[0m
ECHO.		
ECHO    ===========================================
pause
cls
goto Start

:Valve
:Riot Games
:CSGO
:Fortnite
:PUBG
:Amazon
:DNS
:Twitch
:Minecraft

SET ms= Hata
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0
