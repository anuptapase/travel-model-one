
set INPUT_DIR=M:\Projects\2040_05_444
set GIT_DIR=C:\Users\mtcpb\Documents\GitHub\travel-model-one-v05

:: --------------------------------------------------------------------------
:: relative gap = 0.005,   Normal Frank-Wolfe
set RELGAP=0.005
set ENHANCE=0

mkdir test_relgap%RELGAP%_enh%ENHANCE%
cd test_relgap%RELGAP%_enh%ENHANCE%
runtpp %GIT_DIR%\utilities\PBAU\hwyAssignLogsumInvestigation.job
IF ERRORLEVEL 2 goto done

cd ..

:: --------------------------------------------------------------------------
:: relative gap = 0.0005,  Normal Frank-Wolfe
set RELGAP=0.0005
set ENHANCE=0

mkdir test_relgap%RELGAP%_enh%ENHANCE%
cd test_relgap%RELGAP%_enh%ENHANCE%
runtpp %GIT_DIR%\utilities\PBAU\hwyAssignLogsumInvestigation.job
IF ERRORLEVEL 2 goto done

cd ..

:: --------------------------------------------------------------------------
:: relative gap = 0.00005, Normal Frank-Wolfe
set RELGAP=0.00005
set ENHANCE=0

mkdir test_relgap%RELGAP%_enh%ENHANCE%
cd test_relgap%RELGAP%_enh%ENHANCE%
runtpp %GIT_DIR%\utilities\PBAU\hwyAssignLogsumInvestigation.job
IF ERRORLEVEL 2 goto done

cd ..

:: --------------------------------------------------------------------------
:: relative gap = 0.005,   Bi-conjugate Frank-Wolfe
set RELGAP=0.005
set ENHANCE=2

mkdir test_relgap%RELGAP%_enh%ENHANCE%
cd test_relgap%RELGAP%_enh%ENHANCE%
runtpp %GIT_DIR%\utilities\PBAU\hwyAssignLogsumInvestigation.job
IF ERRORLEVEL 2 goto done

cd ..

:: --------------------------------------------------------------------------
:: relative gap = 0.0005,  Bi-conjugate Frank-Wolfe
set RELGAP=0.0005
set ENHANCE=2

mkdir test_relgap%RELGAP%_enh%ENHANCE%
cd test_relgap%RELGAP%_enh%ENHANCE%
runtpp %GIT_DIR%\utilities\PBAU\hwyAssignLogsumInvestigation.job
IF ERRORLEVEL 2 goto done

cd ..

:: --------------------------------------------------------------------------
:: relative gap = 0.00005, Bi-conjugate Frank-Wolfe
set RELGAP=0.00005
set ENHANCE=2

mkdir test_relgap%RELGAP%_enh%ENHANCE%
cd test_relgap%RELGAP%_enh%ENHANCE%
runtpp %GIT_DIR%\utilities\PBAU\hwyAssignLogsumInvestigation.job
IF ERRORLEVEL 2 goto done

cd ..
:done