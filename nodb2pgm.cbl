       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROCESA-EDADES.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARCHIVO-ENTRADA ASSIGN TO 'entrada.txt'
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT ARCHIVO-SALIDA ASSIGN TO 'salida.txt'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD ARCHIVO-ENTRADA.
       01 REGISTRO-ENTRADA.
           05 NOMBRE         PIC X(30).
           05 EDAD           PIC 99.

       FD ARCHIVO-SALIDA.
       01 REGISTRO-SALIDA.
           05 NOMBRE-SALIDA  PIC X(30).
           05 ESTADO         PIC X(20).

       WORKING-STORAGE SECTION.
       01 EOF-FLAG           PIC X VALUE 'N'.
           88 FIN-ARCHIVO    VALUE 'S'.
           88 MAS-DATOS      VALUE 'N'.

       PROCEDURE DIVISION.
       INICIO.
           OPEN INPUT ARCHIVO-ENTRADA
           OPEN OUTPUT ARCHIVO-SALIDA

           PERFORM LEE-REGISTRO
           PERFORM UNTIL FIN-ARCHIVO
               PERFORM PROCESA-REGISTRO
               PERFORM LEE-REGISTRO
           END-PERFORM

           CLOSE ARCHIVO-ENTRADA
           CLOSE ARCHIVO-SALIDA
           STOP RUN.

       LEE-REGISTRO.
           READ ARCHIVO-ENTRADA
               AT END
                   SET FIN-ARCHIVO TO TRUE
               NOT AT END
                   CONTINUE.

       PROCESA-REGISTRO.
           MOVE NOMBRE TO NOMBRE-SALIDA
           IF EDAD >= 18
               MOVE "Mayor de edad" TO ESTADO
           ELSE
               MOVE "Menor de edad" TO ESTADO
           END-IF
           WRITE REGISTRO-SALIDA.