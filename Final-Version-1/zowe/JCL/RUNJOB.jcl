//Z811871 JOB ,NOTIFY=&SYSUID,
// MSGCLASS=H,MSGLEVEL=(1,1),REGION=144M
//*
//* THE FOLLOWING HLQ SYMBOLIC MUST CONTAIN THE HIGH LEVEL
//* QUALIFIER UNDER WHICH THE &PROJECT. DATASETS MAY RESIDE.
//*
//    SET HLQ='Z81187'                     *TSO USER ID
//    SET PROJECT='FP1'                    *PROJECT ID
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
