@ECHO off
:: se a pasta nomeada com o numero digitado não existir, ela será criada (ano)
if not exist "%1" (
    mkdir "%1"
) 
cd "%1"
:: se a pasta nomeada com o numero digitado não existir, ela será criada (mês)
if not exist "%2" (
    mkdir "%2"
)
cd "%2"

::definições do ano bissexto, o comando %% é divisão
set /a ano=%1
set /a bissexto=%ano% %% 4
set /a seculo=%ano% %% 100
set /a quadricentenario=%ano% %% 400

:: definições de quantos dias devem ter o mês escolhido
set mes=%2
if %mes%==1 set dias=31
if %mes%==2 set dias=28 

if %mes%==2 (
    if %bissexto%==0 (
        if not %seculo%==0 (
            set dias=29
        ) else if %quadricentenario%==0 (
            set dias=29
        )
    )
)

if %mes%==3 set dias=31
if %mes%==4 set dias=30
if %mes%==5 set dias=31
if %mes%==6 set dias=30
if %mes%==7 set dias=31
if %mes%==8 set dias=31
if %mes%==9 set dias=30
if %mes%==10 set dias=31
if %mes%==11 set dias=30
if %mes%==12 set dias=31


:: cria as pastas dias na pasta mês usando um comando que faz um loop até chegar no valor de %dias%
for /L %%i in (1,1,%dias%) do (
    if not exist %%i (
        mkdir  %%i
    )
)


cd ..
cd ..
