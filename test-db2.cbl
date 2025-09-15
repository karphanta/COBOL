       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEMPLO-DB2.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       EXEC SQL INCLUDE SQLCA END-EXEC.

       EXEC SQL
           DECLARE CURSOR1 CURSOR FOR
           SELECT NOMBRE, SALARIO
           FROM EMPLEADOS
       END-EXEC.

       EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01 WS-NOMBRE     PIC X(30).
       01 WS-SALARIO    PIC 9(7)V99.
       EXEC SQL END DECLARE SECTION END-EXEC.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           DISPLAY "Conectando a DB2...".

           EXEC SQL
               OPEN CURSOR1
           END-EXEC.

           PERFORM UNTIL SQLCODE NOT = 0
               EXEC SQL
                   FETCH CURSOR1 INTO :WS-NOMBRE, :WS-SALARIO
               END-EXEC

               IF SQLCODE = 0
                   DISPLAY "Nombre: " WS-NOMBRE
                   DISPLAY "Salario: " WS-SALARIO
               END-IF
           END-PERFORM

           EXEC SQL
               CLOSE CURSOR1
           END-EXEC.

           DISPLAY "Consulta finalizada.".
           STOP RUN.