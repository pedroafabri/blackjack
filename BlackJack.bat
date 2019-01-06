@echo off
color 70
mode 48,50
:inic
cls
echo ===============================================
echo *             Desenvolvido por:               *
echo *        Fernanda Campos RA: 141682439        *
echo *        Pedro A. Fabri  RA: 141682410        *
echo ===============================================
echo.
echo ===============================================
echo *           BEM VINDO AO BLACKJACK            *
echo ===============================================
echo *                                             *
echo *                   Regras:                   *
echo *                                             *
echo * - Escolha se quer jogar contra a maquina ou *
echo *   contra um amigo (1 ou 2 jogadores)        *
echo *                                             *
echo * - O objetivo do jogo eh chegar o mais proxi-*
echo *   mo possivel do numero 21 sem passar do    *
echo *   mesmo.
echo *                                             *
echo * - Cada jogador comeca com 2 cartas e sao    *
echo *   obrigados a comprar mais ate ter 16 pontos*
echo *                                             *
echo * - Caso ambos os jogadores passem de 21,     *
echo *   havera um empate.                         *
echo *                                             *
echo * - Insira um numero meio besta no "numero de *
echo *   jogadores" para destravar um segredo.     *
echo ===============================================

set /p respjog=Escolha o numero de jogadores [1/2]: 
echo ===============================================
:numrod
	set /p partids=Insira o numero de rodadas: 
		if "%partids%" EQU "" goto:numrod
if "%respjog%" EQU "1" goto:cp 
if "%respjog%" EQU "2" goto:2p
if "%respjog%" EQU "333" goto:secret
cls
goto:inic
:cp
cls
set maq=1
echo ===============================================
echo *                1 jogador                    *
echo ===============================================
set /p nam1=Insira o nome do jogador: 
if "%nam1%" EQU "" goto:2p
set nam2=CPU
goto:cpinic
:2p
cls
set maq=0
echo ===============================================
echo *                2 jogadores                  *
echo ===============================================
set /p nam1=Insira o nome do primeiro jogador: 
if "%nam1%" EQU "" goto:2p
echo ===============================================
:name2
set /p nam2=Insira o nome do segundo jogador: 
if "%nam2%" EQU "" goto:name2
:cpinic
set totrod=0
set parts1=0
set parts2=0
:recomec
set ais=0
set doi=0
set tre=0
set qua=0
set cin=0
set sei=0
set seth=0
set oit=0
set nov=0
set dez=0
set val=0
set dam=0
set rei=0
set tot1=0
set tot2=0
:startrand
cls
if "%totrod%" EQU "%partids%" goto:theend
set /a start=(%random% %% 2) +1

if "%start%" EQU "1" goto:comec1 
if "%start%" EQU "2" goto:comec2

::Começa 1 ======================================================================
:comec1
cls
echo ===============================================
echo *                Vez de %nam1%                *
echo ===============================================
set /a cart1=(%random% %% 13) +1
set /a cart2=(%random% %% 13) +1
::Trata Cartas ===================================================================
if "%cart1%" EQU "1"    (
if "%ais%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lA          l
echo l           l
echo l           l
echo l           l
echo l     A     l
echo l           l
echo l           l
echo l           l
echo l          Al
echo +-----------+ 
set /a ais=ais+1 )
if "%cart1%" EQU "2" (
if "%doi%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l2          l
echo l           l
echo l           l
echo l           l
echo l     2     l
echo l           l
echo l           l
echo l           l
echo l          2l
echo +-----------+ 
set /a doi=doi+1 )
if "%cart1%" EQU "3" (
if "%tre%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l3          l
echo l           l
echo l           l
echo l           l
echo l     3     l
echo l           l
echo l           l
echo l           l
echo l          3l
echo +-----------+   
set /a tre=tre+1 )	
if "%cart1%" EQU "4" (
if "%qua%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l4          l
echo l           l
echo l           l
echo l           l
echo l     4     l
echo l           l
echo l           l
echo l           l
echo l          4l
echo +-----------+  
set /a qua=qua+1 )
if "%cart1%" EQU "5" (
if "%cin%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l5          l
echo l           l
echo l           l
echo l           l
echo l     5     l
echo l           l
echo l           l
echo l           l
echo l          5l
echo +-----------+  
set /a cin=cin+1 )
if "%cart1%" EQU "6" (
if "%sei%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l6          l
echo l           l
echo l           l
echo l           l
echo l     6     l
echo l           l
echo l           l
echo l           l
echo l          6l
echo +-----------+   
set /a sei=sei+1 )
if "%cart1%" EQU "7" (
if "%seth%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l7          l
echo l           l
echo l           l
echo l           l
echo l     7     l
echo l           l
echo l           l
echo l           l
echo l          7l
echo +-----------+  
set /a seth=seth+1 )
if "%cart1%" EQU "8" (
if "%oit%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l8          l
echo l           l
echo l           l
echo l           l
echo l     8     l
echo l           l
echo l           l
echo l           l
echo l          8l
echo +-----------+  
set /a oit=oit+1 )
if "%cart1%" EQU "9" (
if "%nov%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l9          l
echo l           l
echo l           l
echo l           l
echo l     9     l
echo l           l
echo l           l
echo l           l
echo l          9l
echo +-----------+  
set /a nov=nov+1 )
if "%cart1%" EQU "10" (
if "%dez%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l10         l
echo l           l
echo l           l
echo l           l
echo l     10    l
echo l           l
echo l           l
echo l           l
echo l         10l
echo +-----------+  
set /a dez=dez+1 )
if "%cart1%" EQU "11" (
if "%val%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lJ          l
echo l           l
echo l           l
echo l           l
echo l     J     l
echo l           l
echo l           l
echo l           l
echo l          Jl
echo +-----------+  
set /a val=val+1
set /a cart1=10 )
if "%cart1%" EQU "12" (
if "%dam%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lQ          l
echo l           l
echo l           l
echo l           l
echo l     Q     l
echo l           l
echo l           l
echo l           l
echo l          Ql
echo +-----------+  
set /a dam=dam+1 
set /a cart1=10 )
if "%cart1%" EQU "13" (
if "%rei%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lK          l
echo l           l
echo l           l
echo l           l
echo l     K     l
echo l           l
echo l           l
echo l           l
echo l          Kl
echo +-----------+  
set /a rei =rei+1 
set /a cart1=10 )
::CART2==========================================================================
if "%cart2%" EQU "1"    (
if "%ais%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lA          l
echo l           l
echo l           l
echo l           l
echo l     A     l
echo l           l
echo l           l
echo l           l
echo l          Al
echo +-----------+ 
set /a ais=ais+1 )
if "%cart2%" EQU "2" (
if "%doi%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l2          l
echo l           l
echo l           l
echo l           l
echo l     2     l
echo l           l
echo l           l
echo l           l
echo l          2l
echo +-----------+ 
set /a doi=doi+1 )
if "%cart2%" EQU "3" (
if "%tre%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l3          l
echo l           l
echo l           l
echo l           l
echo l     3     l
echo l           l
echo l           l
echo l           l
echo l          3l
echo +-----------+   
set /a tre=tre+1 )	
if "%cart2%" EQU "4" (
if "%qua%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l4          l
echo l           l
echo l           l
echo l           l
echo l     4     l
echo l           l
echo l           l
echo l           l
echo l          4l
echo +-----------+  
set /a qua=qua+1 )
if "%cart2%" EQU "5" (
if "%cin%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l5          l
echo l           l
echo l           l
echo l           l
echo l     5     l
echo l           l
echo l           l
echo l           l
echo l          5l
echo +-----------+  
set /a cin=cin+1 )
if "%cart2%" EQU "6" (
if "%sei%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l6          l
echo l           l
echo l           l
echo l           l
echo l     6     l
echo l           l
echo l           l
echo l           l
echo l          6l
echo +-----------+   
set /a sei=sei+1 )
if "%cart2%" EQU "7" (
if "%seth%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l7          l
echo l           l
echo l           l
echo l           l
echo l     7     l
echo l           l
echo l           l
echo l           l
echo l          7l
echo +-----------+  
set /a seth=seth+1 )
if "%cart2%" EQU "8" (
if "%oit%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l8          l
echo l           l
echo l           l
echo l           l
echo l     8     l
echo l           l
echo l           l
echo l           l
echo l          8l
echo +-----------+  
set /a oit=oit+1 )
if "%cart2%" EQU "9" (
if "%nov%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l9          l
echo l           l
echo l           l
echo l           l
echo l     9     l
echo l           l
echo l           l
echo l           l
echo l          9l
echo +-----------+  
set /a nov=nov+1 )
if "%cart2%" EQU "10" (
if "%dez%" EQU "4" goto:comec1
echo.
echo +-----------+
echo l10         l
echo l           l
echo l           l
echo l           l
echo l     10    l
echo l           l
echo l           l
echo l           l
echo l         10l
echo +-----------+  
set /a dez=dez+1 )
if "%cart2%" EQU "11" (
if "%val%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lJ          l
echo l           l
echo l           l
echo l           l
echo l     J     l
echo l           l
echo l           l
echo l           l
echo l          Jl
echo +-----------+  
set /a val=val+1 
set /a cart2=10 )
if "%cart2%" EQU "12" (
if "%dam%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lQ          l
echo l           l
echo l           l
echo l           l
echo l     Q     l
echo l           l
echo l           l
echo l           l
echo l          Ql
echo +-----------+  
set /a dam=dam+1 
set /a cart2=10 )
if "%cart2%" EQU "13" (
if "%rei%" EQU "4" goto:comec1
echo.
echo +-----------+
echo lK          l
echo l           l
echo l           l
echo l           l
echo l     K     l
echo l           l
echo l           l
echo l           l
echo l          Kl
echo +-----------+  
set /a rei =rei+1 
set /a cart2=10 )
set /a tot1 = cart1+cart2 
goto:play1

::Começa 2 ======================================================================
:comec2
cls
echo ===============================================
echo *                Vez de %nam2%                *
echo ===============================================
set /a cart1b=(%random% %% 13) +1
set /a cart2b=(%random% %% 13) +1
::Trata Cartas ===================================================================
if "%cart1b%" EQU "1"    (
if "%ais%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lA          l
echo l           l
echo l           l
echo l           l
echo l     A     l
echo l           l
echo l           l
echo l           l
echo l          Al
echo +-----------+ 
set /a ais=ais+1 )
if "%cart1b%" EQU "2" (
if "%doi%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l2          l
echo l           l
echo l           l
echo l           l
echo l     2     l
echo l           l
echo l           l
echo l           l
echo l          2l
echo +-----------+ 
set /a doi=doi+1 )
if "%cart1b%" EQU "3" (
if "%tre%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l3          l
echo l           l
echo l           l
echo l           l
echo l     3     l
echo l           l
echo l           l
echo l           l
echo l          3l
echo +-----------+   
set /a tre=tre+1 )	
if "%cart1b%" EQU "4" (
if "%qua%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l4          l
echo l           l
echo l           l
echo l           l
echo l     4     l
echo l           l
echo l           l
echo l           l
echo l          4l
echo +-----------+  
set /a qua=qua+1 )
if "%cart1b%" EQU "5" (
if "%cin%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l5          l
echo l           l
echo l           l
echo l           l
echo l     5     l
echo l           l
echo l           l
echo l           l
echo l          5l
echo +-----------+  
set /a cin=cin+1 )
if "%cart1b%" EQU "6" (
if "%sei%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l6          l
echo l           l
echo l           l
echo l           l
echo l     6     l
echo l           l
echo l           l
echo l           l
echo l          6l
echo +-----------+   
set /a sei=sei+1 )
if "%cart1b%" EQU "7" (
if "%seth%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l7          l
echo l           l
echo l           l
echo l           l
echo l     7     l
echo l           l
echo l           l
echo l           l
echo l          7l
echo +-----------+  
set /a seth=seth+1 )
if "%cart1b%" EQU "8" (
if "%oit%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l8          l
echo l           l
echo l           l
echo l           l
echo l     8     l
echo l           l
echo l           l
echo l           l
echo l          8l
echo +-----------+  
set /a oit=oit+1 )
if "%cart1b%" EQU "9" (
if "%nov%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l9          l
echo l           l
echo l           l
echo l           l
echo l     9     l
echo l           l
echo l           l
echo l           l
echo l          9l
echo +-----------+  
set /a nov=nov+1 )
if "%cart1b%" EQU "10" (
if "%dez%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l10         l
echo l           l
echo l           l
echo l           l
echo l     10    l
echo l           l
echo l           l
echo l           l
echo l         10l
echo +-----------+  
set /a dez=dez+1 )
if "%cart1b%" EQU "11" (
if "%val%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lJ          l
echo l           l
echo l           l
echo l           l
echo l     J     l
echo l           l
echo l           l
echo l           l
echo l          Jl
echo +-----------+  
set /a val=val+1 
set /a cart1b=10 )
if "%cart1b%" EQU "12" (
if "%dam%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lQ          l
echo l           l
echo l           l
echo l           l
echo l     Q     l
echo l           l
echo l           l
echo l           l
echo l          Ql
echo +-----------+  
set /a dam=dam+1 
set /a cart1b=10 )
if "%cart1b%" EQU "13" (
if "%rei%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lK          l
echo l           l
echo l           l
echo l           l
echo l     K     l
echo l           l
echo l           l
echo l           l
echo l          Kl
echo +-----------+  
set /a rei =rei+1 
set /a cart1b=10 )
::CART2==========================================================================
if "%cart2b%" EQU "1"    (
if "%ais%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lA          l
echo l           l
echo l           l
echo l           l
echo l     A     l
echo l           l
echo l           l
echo l           l
echo l          Al
echo +-----------+ 
set /a ais=ais+1 )
if "%cart2b%" EQU "2" (
if "%doi%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l2          l
echo l           l
echo l           l
echo l           l
echo l     2     l
echo l           l
echo l           l
echo l           l
echo l          2l
echo +-----------+ 
set /a doi=doi+1 )
if "%cart2b%" EQU "3" (
if "%tre%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l3          l
echo l           l
echo l           l
echo l           l
echo l     3     l
echo l           l
echo l           l
echo l           l
echo l          3l
echo +-----------+   
set /a tre=tre+1 )	
if "%cart2b%" EQU "4" (
if "%qua%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l4          l
echo l           l
echo l           l
echo l           l
echo l     4     l
echo l           l
echo l           l
echo l           l
echo l          4l
echo +-----------+  
set /a qua=qua+1 )
if "%cart2b%" EQU "5" (
if "%cin%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l5          l
echo l           l
echo l           l
echo l           l
echo l     5     l
echo l           l
echo l           l
echo l           l
echo l          5l
echo +-----------+  
set /a cin=cin+1 )
if "%cart2b%" EQU "6" (
if "%sei%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l6          l
echo l           l
echo l           l
echo l           l
echo l     6     l
echo l           l
echo l           l
echo l           l
echo l          6l
echo +-----------+   
set /a sei=sei+1 )
if "%cart2b%" EQU "7" (
if "%seth%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l7          l
echo l           l
echo l           l
echo l           l
echo l     7     l
echo l           l
echo l           l
echo l           l
echo l          7l
echo +-----------+  
set /a seth=seth+1 )
if "%cart2b%" EQU "8" (
if "%oit%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l8          l
echo l           l
echo l           l
echo l           l
echo l     8     l
echo l           l
echo l           l
echo l           l
echo l          8l
echo +-----------+  
set /a oit=oit+1 )
if "%cart2b%" EQU "9" (
if "%nov%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l9          l
echo l           l
echo l           l
echo l           l
echo l     9     l
echo l           l
echo l           l
echo l           l
echo l          9l
echo +-----------+  
set /a nov=nov+1 )
if "%cart2b%" EQU "10" (
if "%dez%" EQU "4" goto:comec2
echo.
echo +-----------+
echo l10         l
echo l           l
echo l           l
echo l           l
echo l     10    l
echo l           l
echo l           l
echo l           l
echo l         10l
echo +-----------+  
set /a dez=dez+1 )
if "%cart2b%" EQU "11" (
if "%val%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lJ          l
echo l           l
echo l           l
echo l           l
echo l     J     l
echo l           l
echo l           l
echo l           l
echo l          Jl
echo +-----------+  
set /a val=val+1 
set /a cart2b=10 )
if "%cart2b%" EQU "12" (
if "%dam%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lQ          l
echo l           l
echo l           l
echo l           l
echo l     Q     l
echo l           l
echo l           l
echo l           l
echo l          Ql
echo +-----------+  
set /a dam=dam+1 
set /a cart2b=10 )
if "%cart2b%" EQU "13" (
if "%rei%" EQU "4" goto:comec2
echo.
echo +-----------+
echo lK          l
echo l           l
echo l           l
echo l           l
echo l     K     l
echo l           l
echo l           l
echo l           l
echo l          Kl
echo +-----------+  
set /a rei =rei+1 
set /a cart2b=10 )
set /a tot2 = cart1b+cart2b
goto:play2

::Joga 1 =========================================================================================================================================================================================
:joga1
cls
echo ===============================================
echo *                Vez de %nam1%                *
echo ===============================================
set /a cart=(%random% %% 13) +1  
if "%cart%" EQU "1"    (
if "%ais%" EQU "4" goto:joga1
echo.
echo +-----------+
echo lA          l
echo l           l
echo l           l
echo l           l
echo l     A     l
echo l           l
echo l           l
echo l           l
echo l          Al
echo +-----------+ 
set /a ais=ais+1 )
if "%cart%" EQU "2" (
if "%doi%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l2          l
echo l           l
echo l           l
echo l           l
echo l     2     l
echo l           l
echo l           l
echo l           l
echo l          2l
echo +-----------+ 
set /a doi=doi+1 )
if "%cart%" EQU "3" (
if "%tre%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l3          l
echo l           l
echo l           l
echo l           l
echo l     3     l
echo l           l
echo l           l
echo l           l
echo l          3l
echo +-----------+   
set /a tre=tre+1 )	
if "%cart%" EQU "4" (
if "%qua%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l4          l
echo l           l
echo l           l
echo l           l
echo l     4     l
echo l           l
echo l           l
echo l           l
echo l          4l
echo +-----------+  
set /a qua=qua+1 )
if "%cart%" EQU "5" (
if "%cin%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l5          l
echo l           l
echo l           l
echo l           l
echo l     5     l
echo l           l
echo l           l
echo l           l
echo l          5l
echo +-----------+  
set /a cin=cin+1 )
if "%cart%" EQU "6" (
if "%sei%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l6          l
echo l           l
echo l           l
echo l           l
echo l     6     l
echo l           l
echo l           l
echo l           l
echo l          6l
echo +-----------+   
set /a sei=sei+1 )
if "%cart%" EQU "7" (
if "%seth%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l7          l
echo l           l
echo l           l
echo l           l
echo l     7     l
echo l           l
echo l           l
echo l           l
echo l          7l
echo +-----------+  
set /a seth=seth+1 )
if "%cart%" EQU "8" (
if "%oit%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l8          l
echo l           l
echo l           l
echo l           l
echo l     8     l
echo l           l
echo l           l
echo l           l
echo l          8l
echo +-----------+  
set /a oit=oit+1 )
if "%cart%" EQU "9" (
if "%nov%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l9          l
echo l           l
echo l           l
echo l           l
echo l     9     l
echo l           l
echo l           l
echo l           l
echo l          9l
echo +-----------+  
set /a nov=nov+1 )
if "%cart%" EQU "10" (
if "%dez%" EQU "4" goto:joga1
echo.
echo +-----------+
echo l10         l
echo l           l
echo l           l
echo l           l
echo l     10    l
echo l           l
echo l           l
echo l           l
echo l         10l
echo +-----------+  
set /a dez=dez+1 )
if "%cart%" EQU "11" (
if "%val%" EQU "4" goto:joga1
echo.
echo +-----------+
echo lJ          l
echo l           l
echo l           l
echo l           l
echo l     J     l
echo l           l
echo l           l
echo l           l
echo l          Jl
echo +-----------+  
set /a val=val+1 
set /a cart=10 )
if "%cart%" EQU "12" (
if "%dam%" EQU "4" goto:joga1
echo.
echo +-----------+
echo lQ          l
echo l           l
echo l           l
echo l           l
echo l     Q     l
echo l           l
echo l           l
echo l           l
echo l          Ql
echo +-----------+  
set /a dam=dam+1 
set /a cart=10 )
if "%cart%" EQU "13" (
if "%rei%" EQU "4" goto:joga1
echo.
echo +-----------+
echo lK          l
echo l           l
echo l           l
echo l           l
echo l     K     l
echo l           l
echo l           l
echo l           l
echo l          Kl
echo +-----------+  
set /a rei =rei+1 
set /a cart=10 )
set /a tot1 = tot1+cart
:play1
echo.
echo Pontuacao de %nam1% ateh agora - %tot1%
echo.
if %tot1% LSS 16 goto:continua1

if %tot1% GTR 21 (
	echo %nam1% estourou!
	set fimpl1=1
	pause 
	if "%tot2%" EQU "0" goto:comec2
	goto:fimjog )
	
if %tot1% EQU 21 (
	echo %nam1% fez 21!
	set fimpl1=1
	pause 
	if "%tot2%" EQU "0" goto:comec2
	goto:fimjog	)
:pergunt1
set /p perg1=Deseja comprar mais uma carta? [S/N] 
if "%perg1%" EQU "S" goto:joga1 
if "%perg1%" EQU "s" goto:joga1
if "%perg1%" EQU "N" (
	set fimpl1=1
	if "%tot2%" EQU "0" goto:comec2
	goto:fimjog )
if "%perg1%" EQU "n" (
	set fimpl1=1
	if "%tot2%" EQU "0" goto:comec2
	goto:fimjog )
goto:pergunt1
:continua1	
pause

goto:joga1

::Joga 2 =========================================================================================================================================================================================
:joga2
cls
echo ===============================================
echo *                Vez de %nam2%                *
echo ===============================================
set /a cart=(%random% %% 13) +1  
if "%cart%" EQU "1"    (
if "%ais%" EQU "4" goto:joga2
echo.
echo +-----------+
echo lA          l
echo l           l
echo l           l
echo l           l
echo l     A     l
echo l           l
echo l           l
echo l           l
echo l          Al
echo +-----------+ 
set /a ais=ais+1 )
if "%cart%" EQU "2" (
if "%doi%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l2          l
echo l           l
echo l           l
echo l           l
echo l     2     l
echo l           l
echo l           l
echo l           l
echo l          2l
echo +-----------+ 
set /a doi=doi+1 )
if "%cart%" EQU "3" (
if "%tre%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l3          l
echo l           l
echo l           l
echo l           l
echo l     3     l
echo l           l
echo l           l
echo l           l
echo l          3l
echo +-----------+   
set /a tre=tre+1 )	
if "%cart%" EQU "4" (
if "%qua%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l4          l
echo l           l
echo l           l
echo l           l
echo l     4     l
echo l           l
echo l           l
echo l           l
echo l          4l
echo +-----------+  
set /a qua=qua+1 )
if "%cart%" EQU "5" (
if "%cin%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l5          l
echo l           l
echo l           l
echo l           l
echo l     5     l
echo l           l
echo l           l
echo l           l
echo l          5l
echo +-----------+  
set /a cin=cin+1 )
if "%cart%" EQU "6" (
if "%sei%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l6          l
echo l           l
echo l           l
echo l           l
echo l     6     l
echo l           l
echo l           l
echo l           l
echo l          6l
echo +-----------+   
set /a sei=sei+1 )
if "%cart%" EQU "7" (
if "%seth%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l7          l
echo l           l
echo l           l
echo l           l
echo l     7     l
echo l           l
echo l           l
echo l           l
echo l          7l
echo +-----------+  
set /a seth=seth+1 )
if "%cart%" EQU "8" (
if "%oit%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l8          l
echo l           l
echo l           l
echo l           l
echo l     8     l
echo l           l
echo l           l
echo l           l
echo l          8l
echo +-----------+  
set /a oit=oit+1 )
if "%cart%" EQU "9" (
if "%nov%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l9          l
echo l           l
echo l           l
echo l           l
echo l     9     l
echo l           l
echo l           l
echo l           l
echo l          9l
echo +-----------+  
set /a nov=nov+1 )
if "%cart%" EQU "10" (
if "%dez%" EQU "4" goto:joga2
echo.
echo +-----------+
echo l10         l
echo l           l
echo l           l
echo l           l
echo l     10    l
echo l           l
echo l           l
echo l           l
echo l         10l
echo +-----------+  
set /a dez=dez+1 )
if "%cart%" EQU "11" (
if "%val%" EQU "4" goto:joga2
echo.
echo +-----------+
echo lJ          l
echo l           l
echo l           l
echo l           l
echo l     J     l
echo l           l
echo l           l
echo l           l
echo l          Jl
echo +-----------+  
set /a val=val+1 
set /a cart=10 )
if "%cart%" EQU "12" (
if "%dam%" EQU "4" goto:joga2
echo.
echo +-----------+
echo lQ          l
echo l           l
echo l           l
echo l           l
echo l     Q     l
echo l           l
echo l           l
echo l           l
echo l          Ql
echo +-----------+  
set /a dam=dam+1 
set /a cart=10 )
if "%cart%" EQU "13" (
if "%rei%" EQU "4" goto:joga2
echo.
echo +-----------+
echo lK          l
echo l           l
echo l           l
echo l           l
echo l     K     l
echo l           l
echo l           l
echo l           l
echo l          Kl
echo +-----------+  
set /a rei =rei+1 
set /a cart=10 )
set /a tot2 = tot2+cart

:play2
echo.
echo Pontuacao de %nam2% ateh agora - %tot2%
echo.
if %maq% EQU 1 goto:jogcpu
if %tot2% LSS 16 goto:continua2

if %tot2% GTR 21 (
	echo %nam2% estourou!
	pause
	if %tot1% EQU 0 goto:comec1
	goto:fimjog )
	
if %tot2% EQU 21 (
	echo %nam2% fez 21!
	pause 
	if %tot1% EQU 0 goto:comec1
	goto:fimjog	)

:pergunt2
set /p perg2=Deseja comprar mais uma carta? [S/N] 
if "%perg2%" EQU "S" goto:joga2 
if "%perg2%" EQU "s" goto:joga2
if "%perg2%" EQU "N" (
	if %tot1% EQU "0" goto:comec1
	goto:fimjog )
if "%perg2%" EQU "n" (
	if %tot1% EQU 0 goto:comec1
	goto:fimjog )
goto:pergunt2
:continua2	
pause

goto:joga2

:fimjog
cls
set /a totrod=totrod+1
echo ===============================================
echo        Partida %totrod%/%partids% acabou!
echo ===============================================
echo.
set conta1=tot1-21
set conta2=tot2-21

if %tot1% EQU 21 (
	if %tot2% EQU 21 (
		echo %nam1% e %nam2% empataram!	
		pause
		goto:recomec )
		goto:trataganha1 )
	
if %tot2% EQU 21 goto:trataganha2

if %tot1% GTR 21 if %tot2% GTR 21 (
	echo %nam1% e %nam2% EMPATARAM!
	pause
	goto:recomec )

if %tot1% GTR 21 if %tot2% LSS 21 goto:trataganha2

if %tot2% GTR 21 if %tot1% LSS 21 goto:trataganha1
	
if %conta1% GTR %conta2% goto:trataganha2
	
if %conta2% GTR %conta1% goto:trataganha1

:theend
cls
echo ===============================================
echo               Melhor de %partids%
echo ===============================================
echo.
echo Resultados:
echo.
echo %nam1% - %parts1% rodadas vencidas!
echo %nam2% - %parts2% rodadas vencidas!
echo.
if "%parts1%" GTR "%parts2%" (
	echo %nam1% GANHOU O JOGO! )
	
if "%parts1%" EQU "%parts2%" (
	echo %nam1% e %nam2% EMPATARAM O JOGO! )
	
if "%parts2%" GTR "%parts1%" (
	echo %nam2% GANHOU O JOGO! )
echo.
:pergfim
set /p respfim=Deseja jogar novamente? [S/N] 
if "%respfim%" EQU "S" goto:inic
if "%respfim%" EQU "s" goto:inic
if "%respfim%" EQU "N" exit
if "%respfim%" EQU "n" exit
goto:pergfim
exit
:trataganha1
	echo %nam1% VENCEU A PARTIDA!
	echo.
	set /a parts1=parts1+1 
	pause
	goto:recomec

:trataganha2
	echo %nam2% VENCEU A PARTIDA!
	echo.
	set /a parts2=parts2+1 
	pause
	goto:recomec


:jogcpu

if %tot2% LSS 16 goto:continuacpu
if %tot2% GTR 21 (
	echo %nam2% estourou!
	TIMEOUT /T 5
	if %tot1% EQU 0 goto:comec1
	goto:fimjog )
if %tot2% EQU 21 (
	echo %nam2% fez 21!
	TIMEOUT /T 5
	if %tot1% EQU 0 goto:comec1
	goto:fimjog )
:perguntcpu
echo Deseja comprar mais uma carta? [S/N] 

TIMEOUT /T 5
set /a pergcpu=(%random% %% 2) +1
if "%pergcpu%" EQU "1" goto:joga2
if "%pergcpu%" EQU "2" (
	if %tot1% EQU "0" goto:comec1
	goto:fimjog )

goto:perguntcpu
:continuacpu	
TIMEOUT /T 5

goto:joga2

:secret
cls
echo ===============================================
echo *  OS PROGRAMADORES MAIS INCRIVEIS DO MUNDO   *
echo ===============================================
echo *               Fernanda Campos               *
echo *               Pedro A. Fabri                *
echo *=============================================*
echo *         Somos demais e sabemos disso ;)     *
echo ===============================================
pause
goto:inic