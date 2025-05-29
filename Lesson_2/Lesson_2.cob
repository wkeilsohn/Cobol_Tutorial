       Identification division.
       program-id. tutorial-Lesson-2.
       Author. William-Keilsohn.
       environment division.
       configuration section.
       
       data division.
       working-storage section.
       01 SampleData PIC X(10) VALUE "Stuff".
       01 JustLetters PIC AAA VALUE "ABC".
       01 JustNums PIC 9(4) VALUE 1234.
       01 SignedInt PIC S9(4) VALUE -1234.
       01 PayCheck PIC 9(4)V99 VALUE ZEROS.
       01 Customer.
           02 Ident PIC 9(3).
           02 CustName PIC X(20).
           02 DateOfBirth.
               03 MOB PIC 99.
               03 DOB PIC 99.
               03 YOB PIC 9(4).
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 4.
       01 Num3 PIC 9 VALUE 3.
       01 Ans PIC S99V99 VALUE 0.
       01 Rem PIC 9V99.

       
       procedure division.
       Move "More Stuff" To SampleData.
       move "123" to SampleData.
       move 123 to SampleData.
       display SampleData.
       display PayCheck.
       move "123Bob Smith           12211974" To Customer.
       display CustName
       display MOB "/" DOB "/" YOB.
       move zero to SampleData.
       display SampleData.
       move space to SampleData.
       move HIGH-VALUE to SampleData.
       display SampleData.
       move LOW-VALUE to SampleData.
       display SampleData.
       move quote to SampleData.
       display SampleData.
       move all "2" to SampleData.
       display SampleData.

       ADD Num1 to Num2 giving Ans.
       display Ans.
       SUBTRACT Num1 from Num2 giving Ans.
       display Ans.
       MULTIPLY Num1 by Num2 giving Ans.
       display Ans.
       DIVIDE Num1 into Num2 giving Ans.
       display Ans.

       DIVIDE Num1 into Num2 giving Ans remainder Rem.
       display "Remainder" Rem.

       Add Num1, Num2 to Num3 Giving Ans.
       Add Num1, Num2, Num3 giving Ans.
       display Ans.

       Compute Ans = Num1 + Num2.
       Compute Ans = Num1 - Num2.
       Compute Ans = Num1 * Num2.
       Compute Ans = Num1 / Num2.
       display Ans.

       Compute Ans = Num1 ** 2.
       display Ans.
       Compute Ans = ( 3 + 5 ) * 5.
       display Ans.       
       Compute Ans = 3 + 5 * 5.
       display Ans.       
       Compute Ans rounded = 3.0 + 2.005.
       display Ans.

       Stop Run.
