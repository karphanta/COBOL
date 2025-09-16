       ******************************************************************
       * PROGRAMA: PROCESA-CLIENTES
       * TIPO:     Batch COBOL
       * OBJETIVO: Leer un archivo de clientes, validar datos y generar
       *           un archivo de salida con el resultado del proceso.
       * NOTA:     COPYs ficticios para ilustrar modularidad.
       ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROCESA-CLIENTES.
       AUTHOR. EQUIPO DESARROLLO.
       DATE-WRITTEN. 2025-09-16.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES-IN ASSIGN TO 'clientes.dat'
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT CLIENTES-OUT ASSIGN TO 'clientes_out.dat'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  CLIENTES-IN.
       01  REG-CLIENTE-IN.
           COPY CPY-CLIENTE-IN.       *> COPY inventado con la estructura de entrada

       FD  CLIENTES-OUT.
       01  REG-CLIENTE-OUT.
           COPY CPY-CLIENTE-OUT.      *> COPY inventado con la estructura de salida

       WORKING-STORAGE SECTION.
       77  WS-FIN-ARCHIVO     PIC X VALUE 'N'.
           88 FIN-ARCHIVO     VALUE 'S'.
           88 MAS-DATOS       VALUE 'N'.

       77  WS-CONTADOR-REG    PIC 9(5) VALUE ZERO.

       *> COPY con constantes y códigos de error ficticios
       COPY CPY-CONSTANTES.

       *> COPY con rutinas de validación ficticias
       COPY CPY-VALIDACIONES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "=== INICIO PROCESO CLIENTES ==="
           OPEN INPUT CLIENTES-IN
           OPEN OUTPUT CLIENTES-OUT

           PERFORM LEE-REGISTRO

           PERFORM UNTIL FIN-ARCHIVO
               ADD 1 TO WS-CONTADOR-REG

               *> Validar datos usando rutina ficticia del COPY
               PERFORM VALIDA-CLIENTE

               *> Si es válido, escribir en salida
               IF WS-CLIENTE-VALIDO = 'S'
                   WRITE REG-CLIENTE-OUT
               ELSE
                   DISPLAY "Registro inválido: " CLT-ID
               END-IF

               PERFORM LEE-REGISTRO
           END-PERFORM

           CLOSE CLIENTES-IN
           CLOSE CLIENTES-OUT

           DISPLAY "=== FIN PROCESO CLIENTES ==="
           DISPLAY "Total registros procesados: " WS-CONTADOR-REG

           STOP RUN.

       LEE-REGISTRO.
           READ CLIENTES-IN
               AT END
                   SET FIN-ARCHIVO TO TRUE
               NOT AT END
                   CONTINUE
           END-READ.

       VALIDA-CLIENTE.
           *> Llamada a rutina ficticia incluida en CPY-VALIDACIONES
           PERFORM VLD-NOMBRE
           PERFORM VLD-DNI
           PERFORM VLD-FECHA-NAC
           *> WS-CLIENTE-VALIDO se setea en las rutinas de validación