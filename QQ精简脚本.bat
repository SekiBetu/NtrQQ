@ECHO OFF&PUSHD %~DP0 &TITLE NtrQQר�þ���
mode con cols=48 lines=26
color 2F
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo. 
@ echo.�뽫���ļ�������QQ��Ŀ¼������
@ echo. 
@ echo.  1.�ر�QQ�����룩
@ echo. 
@ echo.  2.�����̨����ļ���ע�����
@ echo. 
@ echo.  3.ɾ��QQ�����ļ���ִ�к�QQ�޷�ֱ�����У������ NtrQQ �� ȥУ�鲹����
@ echo. 
@ echo.  4.���BAK�����ļ�
@ echo. 
@ echo. 
set /p xj= ������ѡ�����ֺ󰴻س���
if /i "%xj%"=="1" Goto CloseQQ
if /i "%xj%"=="2" Goto CleanQQ
if /i "%xj%"=="3" Goto Cleanother
if /i "%xj%"=="4" Goto CleanBAK
@ echo.
echo      ѡ����Ч������������
ping -n 2 127.1>nul 
goto menu
:CloseQQ
@ echo.
ECHO���������ڹر���..���Ե�..
:: ��װǰ������ؽ���
taskkill /f /im TXP* >NUL 2>NUL
taskkill /f /im tad* >NUL 2>NUL
taskkill /f /im QQP* >NUL 2>NUL
taskkill /f /im QQC* >NUL 2>NUL
taskkill /f /im QQ.exe >NUL 2>NUL
CLS & ECHO.&ECHO ����������ɣ���������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU
:CleanQQ
@ echo.
ECHO �����̨����ļ���ע�������..���Ե�..
:: �����̨����ļ���ע�����
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
:: ռ�ú��ֹ����
md  "%AppData%\Tencent\QQ\Misc\CSC\2052\7"2>NUL
md "%AppData%\Tencent\QQ\Misc\CSC\2052\9">NUL 2>NUL
md "%AppData%\Tencent\QQ\Misc\CSC\2052\13">NUL 2>NUL
echo.banner>"%AppData%\Tencent\QQ\Misc\CSC\2052\7\4" 2>NUL
echo.superQQ>"%AppData%\Tencent\QQ\Misc\com.tencent.wireless"  2>NUL
echo.NoTipLink> "%AppData%\Tencent\QQ\Misc\CSC\2052\9\18"2>NUL
echo.ClientType> "%AppData%\Tencent\QQ\Misc\CSC\2052\9\18"2>NUL
Attrib +r  "%AppData%\Tencent\QQ\Misc\CSC\2052\7\4" >NUL 2>NUL
Attrib +r  "%AppData%\Tencent\QQ\Misc\CSC\2052\7\5" >NUL 2>NUL
Attrib +r "%AppData%\Tencent\QQ\Misc\CSC\2052\13\7" >NUL 2>NUL
Attrib +r "%AppData%\Tencent\QQ\Misc\CSC\2052\9\18" >NUL 2>NUL
Attrib +r "%AppData%\Tencent\QQ\Misc\CSC\2052\13\16" >NUL 2>NUL
Attrib +r "%AppData%\Tencent\QQ\Misc\CSC\2052\7\21" >NUL 2>NUL
Attrib +r  "%AppData%\Tencent\QQ\Misc\com.tencent.wireless" >NUL 2>NUL
CLS & ECHO.&ECHO �����̨����ļ���ע�������ɣ���������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU
:Cleanother
@ echo.
ECHO ���������ļ���..���Ե�..
del /s/f/q "*.tvl">NUL 2>NUL
del /s/f/q "*.tsd">NUL 2>NUL
:: InstallNews
del /s/f/q "Misc\InstallNews.xml">NUL 2>NUL
:: BrSelfExp
del /s/f/q "Misc\BrSelfExp">NUL 2>NUL
:: QScan
del /s/f/q "Misc\QScan">NUL 2>NUL
:: �Զ�����
del /s/f/q "AuI18N">NUL 2>NUL
:: �����ļ�
del /s/f/q "ShellExt">NUL 2>NUL
:: QQ����
del /s/f/q "txupd.exe">NUL 2>NUL
:: TIM�ƹ�
del /s/f/q "Timsh.exe">NUL 2>NUL
:: �°汾���½���
del /s/f/q "QQWhatsnew.txt">NUL 2>NUL
:: ж��QQ
del /s/f/q "QQUninst.exe">NUL 2>NUL
:: QQЭ��
del /s/f/q "QQLicense.rtf">NUL 2>NUL
:: Bin�������ļ�
:: QQ���
del /s/f/q "Bin\LICENSE">NUL 2>NUL
:: QQ��å������ع���
del /s/f/q "Bin\SetupEx">NUL 2>NUL
:: ��ѶIP��(����)
del /s/f/q "Bin\TSIP.DAT">NUL 2>NUL
:: QQע���Ҽ�����
del /s/f/q "Bin\AddEmotion.htm">NUL 2>NUL
:: QQУ��
del /s/f/q "Bin\Applaunch.prf">NUL 2>NUL
:: QQ��������ͷ����
del /s/f/q "Bin\ABL.sys">NUL 2>NUL
del /s/f/q "Bin\PBL.sys">NUL 2>NUL
:: �Զ�����
del /s/f/q "Bin\auclt.exe">NUL 2>NUL
:: QQӦ�ñ�
del /s/f/q "Bin\maLauncher.exe">NUL 2>NUL
del /s/f/q "Bin\maUpdat.exe">NUL 2>NUL
del /s/f/q "Bin\maMainFrame.rdb">NUL 2>NUL
del /s/f/q "Bin\maMainFrame.tpc">NUL 2>NUL
del /s/f/q "Bin\maJmp.dll">NUL 2>NUL
del /s/f/q "Bin\maMainFrame.dll">NUL 2>NUL
del /s/f/q "Bin\maUtility.dll">NUL 2>NUL
:: �ϱ��ļ�
del /s/f/q "Bin\QPerfHelper.exe">NUL 2>NUL
del /s/f/q "Bin\QScanEngine.dll">NUL 2>NUL
del /s/f/q "Bin\QPerfMon.dll">NUL 2>NUL
:: QQ���Թܼ�
del /s/f/q "Bin\QQPcmgrDownload.exe">NUL 2>NUL
:: QQ��ȫ����
del /s/f/q "Bin\QQSafeUD.exe">NUL 2>NUL
@echo off
for /f "delims=" %%i in ('dir /ad /b /s^|sort /r') do rd /q "%%i" 2>NUL
CLS & ECHO.&ECHO ��������ļ���ɣ���������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU
:CleanBAK
@ echo.
ECHO �������������BAK�����ļ���..���Ե�..
del /s/f/q "*.bak">NUL 2>NUL
CLS & ECHO.&ECHO ���BAK�����ļ���ɣ���������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU
