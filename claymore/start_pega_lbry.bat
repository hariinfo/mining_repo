
:: Name: 
:: Revision: Dec, 24, 2017 - Intial version of the scrypt
:: Start scrypt for Electroneum Classic (ETC) and Lbry (LBC)
:: Replace POOL_ETC and POOL_LBRY
:: Replace ADDR_ETC and ADDR_LBRY

timeout /t 15

setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

SET POOL_ETC=stratum+tcp://eu.coin-miners.info:2222
SET POOL_LBRY=stratum+tcp://lbc.coinmine.pl:8787
SET ADDR_ETC=0x723be312a256cba2d3932dd83c5bf7d8e81799d0
SET ADDR_LBRY=bUuB63BARXxdUpAuntBJ6X6CQUxNar2A9S
SET RIG_NAME=rig02

rem setting default pools
IF NOT DEFINED POOL_ETC (SET POOL_ETC=stratum+tcp://us1-etc.ethermine.org:4444)
IF NOT DEFINED POOL_LBRY (SET POOL_LBRY=stratum+tcp://lbc.coinmine.pl:8787)

nodevfee.exe EthDcrMiner64.exe -epool %POOL_ETC%.%RIG_NAME% -ewal %ADDR_ETC% -allcoins 1 -epsw x -dcoin lbc -dpool %POOL_LBRY% -dwal %ADDR_LBRY%.%RIG_NAME% -dpsw x -dcri 17

pause
