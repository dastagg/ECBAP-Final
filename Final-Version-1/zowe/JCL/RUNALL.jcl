//Z811871 JOB ,NOTIFY=&SYSUID,
// MSGCLASS=H,MSGLEVEL=(1,1),REGION=144M
//*
//* THE FOLLOWING HLQ SYMBOLIC MUST CONTAIN THE HIGH LEVEL
//* QUALIFIER UNDER WHICH THE &PROJECT. DATASETS MAY RESIDE.
//*
//    SET HLQ='Z81187'                     *TSO USER ID
//    SET PROJECT='FP1'                    *PROJECT ID
//***************************************************/
//COBRUN1 EXEC IGYWCL
//COBOL.SYSIN   DD DSN=&HLQ..&PROJECT..CBL(POCALL),DISP=SHR
//COBOL.SYSLIB  DD DSN=&HLQ..&PROJECT..CPY,DISP=SHR
//LKED.SYSLMOD  DD DSN=&HLQ..&PROJECT..LOAD(POCALL),DISP=SHR
//LKED.SYSLIB   DD DISP=SHR,DSN=CEE.SCEELKED
//              DD DISP=SHR,DSN=&HLQ..&PROJECT..LOAD  
//*
//COBRUN2 EXEC IGYWCL
//COBOL.SYSIN   DD DSN=&HLQ..&PROJECT..CBL(ADDRCALL),DISP=SHR
//COBOL.SYSLIB  DD DSN=&HLQ..&PROJECT..CPY,DISP=SHR
//LKED.SYSLMOD  DD DSN=&HLQ..&PROJECT..LOAD(ADDRCALL),DISP=SHR
//LKED.SYSLIB   DD DISP=SHR,DSN=CEE.SCEELKED
//              DD DISP=SHR,DSN=&HLQ..&PROJECT..LOAD  
//*
//COBRUN3 EXEC IGYWCL
//COBOL.SYSIN   DD DSN=&HLQ..&PROJECT..CBL(SUPPCALL),DISP=SHR
//COBOL.SYSLIB  DD DSN=&HLQ..&PROJECT..CPY,DISP=SHR
//LKED.SYSLMOD  DD DSN=&HLQ..&PROJECT..LOAD(SUPPCALL),DISP=SHR
//LKED.SYSLIB   DD DISP=SHR,DSN=CEE.SCEELKED
//              DD DISP=SHR,DSN=&HLQ..&PROJECT..LOAD  
//*
//COBRUN4 EXEC IGYWCL
//COBOL.SYSIN   DD DSN=&HLQ..&PROJECT..CBL(PARTCALL),DISP=SHR
//COBOL.SYSLIB  DD DSN=&HLQ..&PROJECT..CPY,DISP=SHR
//LKED.SYSLMOD  DD DSN=&HLQ..&PROJECT..LOAD(PARTCALL),DISP=SHR
//LKED.SYSLIB   DD DISP=SHR,DSN=CEE.SCEELKED
//              DD DISP=SHR,DSN=&HLQ..&PROJECT..LOAD  
//*
//COBRUN5 EXEC IGYWCL
//COBOL.SYSIN   DD DSN=&HLQ..&PROJECT..CBL(PSAP),DISP=SHR
//COBOL.SYSLIB  DD DSN=&HLQ..&PROJECT..CPY,DISP=SHR
//LKED.SYSLMOD  DD DSN=&HLQ..&PROJECT..LOAD(PSAP),DISP=SHR
//LKED.SYSLIB   DD DISP=SHR,DSN=CEE.SCEELKED
//              DD DISP=SHR,DSN=&HLQ..&PROJECT..LOAD  
//***************************************************/
// IF RC < 5 THEN
//***************************************************/
//RUN     EXEC PGM=PSAP
//STEPLIB   DD DSN=&HLQ..&PROJECT..LOAD,DISP=SHR
//PSAPFILE DD DISP=SHR,DSN=&HLQ..&PROJECT..PSAP
//ERRFILE  DD SYSOUT=*,OUTLIM=15000
//PSAPGOOD DD SYSOUT=*,OUTLIM=15000
//*
//PARTOUT  DD SYSOUT=*,OUTLIM=15000
//SUPPOUT  DD SYSOUT=*,OUTLIM=15000
//*
//ZIPFILE  DD DISP=SHR,DSN=&HLQ..&PROJECT..ZIPFILE
//ADDROUT  DD SYSOUT=*,OUTLIM=15000
//POOUT    DD SYSOUT=*,OUTLIM=15000
//*
//SYSOUT   DD SYSOUT=*,OUTLIM=15000
//CEEDUMP  DD DUMMY
//SYSUDUMP DD DUMMY
//*                            
//***************************************************/
// ELSE
// ENDIF
