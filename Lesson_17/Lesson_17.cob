       IDENTIFICATION DIVISION.
       PROGRAM-ID. LESSON17.
       AUTHOR. WILLIAM-KEILSOHN.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT WORKFILE ASSIGN TO "work.tmp".
           SELECT ORGFILE ASSIGN TO "student.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT SORTEDFILE ASSIGN TO "student2.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD ORGFILE.
       01 STUDDAT.
           02 IDNUM PIC 9.
           02 STUDNAME PIC X(10).
       SD WORKFILE.
       01 WSTUDDAT.
           02 WIDNUM PIC 9.
           02 WSTUDNAME PIC X(10).
       FD SORTEDFILE.
       01 SSTUDDAT.
           02 SIDNUM PIC 9.
           02 SSTUDNAME PIC X(10).
       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
       SORT WORKFILE ON ASCENDING KEY SIDNUM
           USING ORGFILE
           GIVING SORTEDFILE.

       STOP RUN.
