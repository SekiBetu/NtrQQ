@ECHO OFF&PUSHD %~DP0 &TITLE �̻�
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo.&Echo ��ʹ���Ҽ�"�Թ���Ա�������"!&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

:: ��װǰ������ؽ��̱����岻�ɾ�
taskkill /f /im TXP* >NUL 2>NUL
taskkill /f /im tad* >NUL 2>NUL
taskkill /f /im QQP* >NUL 2>NUL
taskkill /f /im QQC* >NUL 2>NUL
taskkill /f /im QQ.exe >NUL 2>NUL

:: ��ʼ�������̨��ز��������ļ�
del/f/q "%tmp%\*.tvl">NUL 2>NUL
del/f/q "%tmp%\*.tsd">NUL 2>NUL
del/f/q "%tmp%\ts*.dat">NUL 2>NUL
del/f/q "%tmp%\QQSa*.exe">NUL 2>NUL
rd/s/q "%ProgramData%\QQPet"2>NUL
rd/s/q "%AppData%\Tencent\QQ"  2>NUL
rd/s/q "%AppData%\Tencent\Logs"2>NUL
rd/s/q "%AppData%\Tencent\Users"2>NUL
rd/s/q "%AppData%\Tencent\QTalk"2>NUL
rd/s/q "%AppData%\Tencent\QQLite"2>NUL
rd/s/q "%APPDATA%\Tencent\QQDoctor"2>NUL
rd/s/q "%AppData%\Tencent\DeskUpdate"2>NUL
rd/s/q "%ProgramData%\Tencent\QQProtect"2>NUL
rd/s/q "%AppData%\Tencent\AndroidAssist"2>NUL
rd/s/q "%AppData%\Tencent\AndroidServer"2>NUL
rd/s/q "%AppData%\Tencent\QQPhoneManager"2>NUL
rd/s/q "%AppData%\Tencent\QQPhoneAssistant"2>NUL
rd/s/q "%UserProfile%\Documents\Tencent"   2>NUL
rd/s/q "%UserProfile%\My Documents\Tencent"2>NUL
rd/s/q "%UserProFile%\AppData\LocalLow\QQMiniDL"2>NUL
rd/s/q "%AllUsersProfile%\Application Data\QQPet"2>NUL
rd/s/q "%UserProfile%\AppData\Local\Tencent\QQPet"2>NUL
rd/s/q "%USERPROFILE%\Local Settings\Tencent\QQPet"2>NUL
rd/s/q "%USERPROFILE%\Local Settings\QQKartLiveUpdate"2>NUL
rd/s/q "%UserProfile%\Documents\Tencent Files\QPlus"   2>NUL
rd/s/q "%UserProfile%\My Documents\Tencent Files\QPlus"2>NUL
rd/s/q "%AllUsersProfile%\Application Data\Tencent\QQProtect"2>NUL
reg delete HKLM\SYSTEM\CurrentControlSet\services\QQProtect /F>NUL 2>NUL
rd/s/q "%CommonProgramFiles%\Tencent\QQProtect"2>NUL
rd/s/q "%CommonProgramFiles(x86)%\Tencent\QQProtect"2>NUL
for /f "skip=2 tokens=3 delims= " %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v personal') do (
       for /f "delims=*" %%j in ('echo %%i') do rd/s/q "%%j\Tencent Files\All Users\QQ\Misc\OperateFace" 2>NUL)

:: ע���������ֵ�½��ؼ���ע�������ݵ�ϵͳ���ÿⲢע��������޷���½)
:: ������Ƶֱ�����ؿ������ע�������ݵ�ϵͳ���ÿ�ᵼ���޷�������Դ��װ)
if exist Bin\DownloadProxyPS.dll regsvr32 /s Bin\DownloadProxyPS.dll
if "%PROCESSOR_ARCHITECTURE%"=="x86" md "%CommonProgramFiles%\Tencent\TXSSO\Bin"2>NUL
if "%PROCESSOR_ARCHITECTURE%"=="x86" xcopy /i/y/e Bin\TXSSO\Bin "%CommonProgramFiles%\Tencent\TXSSO\Bin">NUL 2>NUL
if "%PROCESSOR_ARCHITECTURE%"=="x86" regsvr32 /s "%CommonProgramFiles%\Tencent\TXSSO\Bin\SSOLUIControl.dll"
if "%PROCESSOR_ARCHITECTURE%"=="x86" reg add HKLM\Software\Tencent\TXSSO /f /v version /d "1.2.4.2" >NUL

If "%PROCESSOR_ARCHITECTURE%"=="AMD64" md "%CommonProgramFiles(x86)%\Tencent\TXSSO\Bin"2>NUL
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" xcopy /i/y/e Bin\TXSSO\Bin "%CommonProgramFiles(x86)%\Tencent\TXSSO\Bin">NUL 2>NUL
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" regsvr32 /s "%CommonProgramFiles(x86)%\Tencent\TXSSO\Bin\SSOLUIControl.dll"
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" reg add HKLM\Software\Wow6432Node\Tencent\TXSSO /f /v version /d "1.2.4.2" >NUL

:: ע��Э�飺������ҳ�Ự�����������������������
if exist Bin\Timwp.dll regsvr32 /s Bin\Timwp.dll
if exist Bin\AppCom.dll regsvr32 /s Bin\AppCom.dll
if exist Bin\Common.dll regsvr32 /s Bin\Common.dll
if exist Bin\CPHelper.dll regsvr32 /s Bin\CPHelper.dll
if exist Bin\TXPFProxy.dll regsvr32 /s Bin\TXPFProxy.dll
if exist Bin\KernelUtil.dll regsvr32 /s Bin\KernelUtil.dll
if exist Bin\TXPlatform.exe Bin\TXPlatform.exe /RegServer
if exist Bin\QQExternal.exe Bin\QQExternal.exe /SetupRegister  

:: ע��ȸ衢�����Opera ���ٵ�½�ؼ�
regsvr32 /s Bin\TXSSO\Npchrome\npactivex.dll
:: ע��SSO���Ŀ⡢IE���ӿڿ��ٵ�½�ؼ�
regsvr32 /s Bin\TXSSO\Bin\SSOCommon.dll
regsvr32 /s Bin\TXSSO\Bin\npSSOAxCtrlForPTLogin.dll
:: ע����תվ�ϴ���Ⱥ����΢���ϴ��ؼ�
:: regsvr32 /s Bin\TXSSO\TXFTN\TXFTNActiveX1.17.dll
regsvr32 /s Plugin\Com.Tencent.NetDisk\Bin\QQDisk\Bin\TXFTNActiveX.dll

:: �滻�ɰ��ƶ��豸ͼ���ļ�������ռλ��ֹ������ͼ�꣨ȥ��ע�ͣ�

:: md "%AppData%\Tencent\QQ\Misc\CSC\2052\9">NUL 2>NUL
:: echo.> "%AppData%\Tencent\QQ\Misc\CSC\2052\9\18"2>NUL
:: Attrib +r "%AppData%\Tencent\QQ\Misc\CSC\2052\9\18" >NUL 2>NUL

:: ����QQ��ǩ����,�����͵���̨λ�������ͼ���޷�����
xcopy /s/i/y Bin\TXSSO\QQApp "%AppData%\Tencent\QQ\QQApp">NUL 2>NUL
:: ���ȺӦ����Ƶͼ�겻��ʾ
xcopy /s/i/y Misc\GroupAppIcon "%AppData%\Tencent\QQ\Misc\GroupAppIcon">NUL 2>NUL

:: ���ð�װ·��,��װ��Ƶ���Ժ�Ӱ�����ŵ����������Ҫ
if "%PROCESSOR_ARCHITECTURE%"=="x86" reg add HKLM\Software\Tencent\QQ2009 /f /v Install /d "%~dp0\" >NUL
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" reg add HKLM\Software\Wow6432Node\Tencent\QQ2009 /f /v Install /d "%~dp0\" >NUL

:: ������װ�汾��,��ҵ������ҳ�Ự��Ҫ,CRM����豣��
if "%PROCESSOR_ARCHITECTURE%"=="x86" reg add HKLM\Software\Tencent\QQ2009 /f /v version /d "54.79.0.18038.0" >NUL
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" reg add HKLM\Software\Wow6432Node\Tencent\QQ2009 /f /v version /d "54.79.0.18038.0" >NUL

:: �ж�ϵͳ�汾��Ȼ��ȥִ������ҵ��ĵ��Զ���·������
ver|findstr "5\.[0-9]\.[0-9][0-9]*" > nul && (goto WinXP)
ver|findstr "6\.[0-9]\.[0-9][0-9]*" > nul && (goto Win7+)
ver|findstr "10\.[0-9]\.[0-9][0-9]*" > nul && (goto Win7+)

:WinXP
ECHO.&ECHO.���! �Ƿ񴴽������ݷ�ʽ��
ECHO.&ECHO.���밴���������ֱ�ӹر��£� &&PAUSE >NUL && CLS && GOTO DesktopLnk

:Win7+
:: ���ɸ����ļ��б���λ�������ļ�����Win��Win8����߰��ϵͳ�����������Զ���·����
if not exist "%Public%\Documents\Tencent\QQ" md "%Public%\Documents\Tencent\QQ"2>NUL
if not exist "%Public%\Documents\Tencent\QQ\UserDataInfo.ini" echo.>"%Public%\Documents\Tencent\QQ\UserDataInfo.ini"2>NUL
ECHO.&ECHO.���! �Ƿ񴴽������ݷ�ʽ��
ECHO.&ECHO.���밴���������ֱ�ӹر��£� &&PAUSE >NUL && CLS && GOTO DesktopLnk

:DesktopLnk
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\��ѶQQ.lnk""):b.TargetPath=""%~dp0Bin\QQ.exe"":b.WorkingDirectory=""%~dp0Bin"":b.Save:close")
ECHO.&ECHO.������ɣ������ֱ���˳��� &&PAUSE >NUL && CLS && EXIT