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

       Stop Run.
