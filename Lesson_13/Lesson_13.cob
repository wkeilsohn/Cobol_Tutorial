       IDENTIFICATION DIVISION.
       PROGRAM-ID. Lesson13.
       AUTHOR. WILLIAM-KEISLOHN.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CUSTOMERREPORT ASSIGN TO "CustReport.rpt"
           ORGANIZATION IS LINE SEQUENTIAL.
           SELECT CUSTOMERFILE ASSIGN TO "Customer.dat"
           ORGANIZATION IS LINE SEQUENTIAL.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DATA DIVISION.
       FILE SECTION.
       FD CUSTOMERREPORT.
       01 PRINTLINE PIC X(44).

       FD CUSTOMERFILE.
       01 CUSTOMERDATA.
           02 IDNUM PIC 9(5).
           02 CUSTNAM.
               03 FIRSTNAME PIC X(15).
               03 LASTNAME PIC X(15).
           88 WS-EOF VALUE HIGH-VALUE.

       WORKING-STORAGE SECTION.
       01 PAGEHEADING.
           02 FILLER PIC X(13) VALUE "CUSTOMER LIST".
       01 PAGEFOOTING.
           02 FILLER PIC X(15) VALUE SPACE.
           02 FILLER PIC X(7) VALUE "PAGE: ".
           02 PAGENUM PIC Z9.
       01 HEADS PIC X(36) VALUE "ID_NUMBER    FIRST_NAME    LAST_NAME".
       01 CUSTOMER_DETAILLINE.
           02 FILLER PIC X VALUE SPACE.
           02 PRNCUSTID PIC 9(5).
           02 FILLER PIC X(4) VALUE SPACE.
           02 PRNFIRSTNAME PIC X(15).
           02 FILLER PIC XX VALUE SPACE.
           02 PRNLASTNAME PIC X(15).
       01 REPORTFOOTING PIC X(13) VALUE "END OF REPORT".
       01 LINECOUNT PIC 99 VALUE ZERO.
           88 NEWPAGEREQUIRED VALUE 40 THRU 99.
       01 PAGECOUNT PIC 99 VALUE ZERO.
       
       PROCEDURE DIVISION.
       OPEN INPUT CUSTOMERFILE.
       OPEN OUTPUT CUSTOMERREPORT.
           PERFORM PRINTPAGEHEADING.
           READ CUSTOMERFILE 
               AT END SET WS-EOF TO TRUE
           END-READ.
           PERFORM PRINTREPORTBODY UNTIL WS-EOF.
           WRITE PRINTLINE FROM REPORTFOOTING AFTER ADVANCING 5 LINES
       CLOSE CUSTOMERFILE,  CUSTOMERREPORT.

       STOP RUN.

       PRINTPAGEHEADING.
           WRITE PRINTLINE FROM PAGEHEADING AFTER ADVANCING PAGE.
           WRITE PRINTLINE FROM HEADS AFTER ADVANCING 5 LINES.
           MOVE 3 TO LINECOUNT.
           ADD 1 TO PAGECOUNT. 

       PRINTREPORTBODY.
           IF NEWPAGEREQUIRED THEN
               MOVE PAGECOUNT TO PAGENUM
               WRITE PRINTLINE FROM PAGEFOOTING AFTER ADVANCING 5 LINES
               PERFORM PRINTPAGEHEADING
           END-IF.
           MOVE IDNUM TO PRNCUSTID.
           MOVE FIRSTNAME TO PRNFIRSTNAME.
           MOVE LASTNAME TO PRNLASTNAME.
           WRITE PRINTLINE FROM CUSTOMER_DETAILLINE AFTER ADVANCING 1 
           LINE.
           ADD 1 TO LINECOUNT.
           READ CUSTOMERFILE 
               AT END SET WS-EOF TO TRUE
           END-READ. 
