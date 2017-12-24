:: Name: 
:: Revision: Dec, 24, 2017 - Intial version of the scrypt
:: Start scrypt for Electroneum Classic (ETC) and Lbry (LBC)
:: Replace POOL_ETC and POOL_LBRY
:: Replace ADDR_ETC and ADDR_LBRY


setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

SET POOL_ETC=
SET POOL_LBRY=
SET ADDR_ETC=718cdfffd88c2359aa9b0df9a5b9e4df12f10331
SET ADDR_LBRY=bUuB63BARXxdUpAuntBJ6X6CQUxNar2A9S
SET RIG_NAME=rig02

rem setting default pools
IF NOT DEFINED POOL_ETC (SET POOL_ETC=stratum+tcp://us1-etc.ethermine.org:4444)
IF NOT DEFINED POOL_LBRY (SET POOL_LBRY=stratum+tcp://lbc.coinmine.pl:8787)


EthDcrMiner64.exe -epool %POOL_ETC%.%RIG_NAME% -ewal %ADDR_ETC% -epsw x -dcoin lbc -dpool %ADDR_LBRY% -dwal %ADDR_LBRY%.%RIG_NAME% -dpsw x -dcri 20

