       IDENTIFICATION DIVISION.
       PROGRAM-ID. LESSON-3.
       AUTHOR. WILLIAM-KEILSOHN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingScore IS "A" THRU "C", "D".
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Age PIC 99 VALUE 0.
       01 Grade PIC 99 VALUE 0.
       01 Score PIC X(1) VALUE "B".
       01 CanVoteFlag PIC 99 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X.
           88 IsPrime VALUE "1", "3", "5", "7".
           88 IsOdd VALUE "1", "3", "5", "7", "9".
           88 IsEven VALUE "2", "4", "6", "8".
           88 LessThanFive VALUE "1" THRU "4".
           88 ANumber VALUE "0" THRU "9".

       PROCEDURE DIVISION.
       DISPLAY "Enter Age: " WITH NO ADVANCING.
       ACCEPT Age.
       IF Age >= 18 THEN
           DISPLAY "You can vote."
       ELSE
           DISPLAY "You can not vote." 
       END-IF.

       IF Age LESS THAN 5 THEN
           DISPLAY "Stay Home"
       END-IF.
       IF Age = 5 THEN
           DISPLAY "Go to Kindergarten"
       END-IF.
       IF Age > 5 AND Age < 18 THEN
           COMPUTE Grade = Age - 5
           DISPLAY "Go to Grade " Grade
       END-IF.
       IF Age GREATER THAN OR EQUAL TO 18 THEN
           DISPLAY "Go to college"
       END-IF.

       IF Score IS PassingScore THEN
           DISPLAY "You Passed"
       ELSE
           DISPLAY "You Failed"
       END-IF.

       IF Score IS NOT NUMERIC THEN
           DISPLAY "Not a Number"
       END-IF.

       IF Age > 18 THEN
           SET CanVote TO TRUE
       ELSE
           SET CantVote TO TRUE
       END-IF.

       DISPLAY "Vote: " CanVoteFlag.
       
       STOP RUN.
