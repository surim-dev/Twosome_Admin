# Twosome_Admin
ㅇㅇ
사용자명 conn /as sysdba
비밀번호 18141814

다음에 접속됨:
Oracle Database 18c Express Edition Release 18.0.0.0.0 - Production
Version 18.4.0.0.0

SQL> alter session set "_ORACLE_SCRIPT"=true;

세션이 변경되었습니다.

SQL> create user twosome_admin identified by 00000000;

사용자가 생성되었습니다.

SQL> grant connect, resource to twosome_admin;

권한이 부여되었습니다.

SQL> alter user twosome_admin default tablespace users quota unlimited on users;

사용자가 변경되었습니다.
