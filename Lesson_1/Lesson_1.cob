       IDENTIFICATION DIVISION.
       program-id. tutorial-lesson-1.
       author. william-keilsohn.

       environment division.
       configuration section.
       
       data division.
       working-storage section.
       01 UserName PIC X(30) VALUE "You".
       01 Num1 PIC 9 VALUE ZEROS.
       01 Num2 PIC 9 VALUE ZEROS.
       01 Total PIC 99 VALUE 0.
       01 SSNum.
           02 SSArea PIC 999.
           02 SSGroup PIC 99.
           02 SSSerial PIC 9999.

       01 PIValue CONSTANT AS 3.14.


       procedure division.
           DISPLAY "What is your name?" WITH NO ADVANCING.
           ACCEPT UserName.
           DISPLAY "Hello " UserName.
       
       Stop Run. 