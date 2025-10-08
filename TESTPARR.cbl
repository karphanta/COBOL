       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA-MUERTO-200.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-CONTADOR         PIC 9(4) VALUE ZERO.
       01  WS-MENSAJE          PIC X(50) VALUE "Ejecutando párrafos activos...".
       01  WS-FIN              PIC X(30) VALUE "Fin del programa.".
       01  WS-DUMMY            PIC X(10) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCESS.
           DISPLAY WS-MENSAJE
           PERFORM INICIO THRU INICIO-EXIT
           PERFORM CICLO THRU CICLO-EXIT
           PERFORM FINAL THRU FINAL-EXIT
           STOP RUN.
       MAIN-PROCESS-EXIT.
           EXIT.

       INICIO.
           DISPLAY "Inicio del programa"
           MOVE 1 TO WS-CONTADOR
           DISPLAY "Contador inicializado a 1"
           DISPLAY "Preparando ciclo de ejecución"
           CONTINUE.
       INICIO-EXIT.
           EXIT.

       CICLO.
           PERFORM VARYING WS-CONTADOR FROM 1 BY 1 UNTIL WS-CONTADOR > 50
               DISPLAY "Iteración número: " WS-CONTADOR
               PERFORM SUBRUTINA THRU SUBRUTINA-EXIT
           END-PERFORM.
       CICLO-EXIT.
           EXIT.

       SUBRUTINA.
           DISPLAY "Subrutina ejecutada en iteración"
           MOVE WS-CONTADOR TO WS-DUMMY
           CONTINUE.
       SUBRUTINA-EXIT.
           EXIT.

       FINAL.
           DISPLAY WS-FIN
           CONTINUE.
       FINAL-EXIT.
           EXIT.

       * Párrafos muertos no invocados
       MUERTO-UNO.
           DISPLAY "Este es el párrafo muerto uno"
           DISPLAY "Nunca será ejecutado"
           MOVE "MUERTO1" TO WS-DUMMY
           DISPLAY "Línea 1"
           DISPLAY "Línea 2"
           DISPLAY "Línea 3"
           DISPLAY "Línea 4"
           DISPLAY "Línea 5"
           DISPLAY "Línea 6"
           DISPLAY "Línea 7"
           DISPLAY "Línea 8"
           DISPLAY "Línea 9"
           DISPLAY "Línea 10"
           DISPLAY "Línea 11"
           DISPLAY "Línea 12"
           DISPLAY "Línea 13"
           DISPLAY "Línea 14"
           DISPLAY "Línea 15"
           DISPLAY "Línea 16"
           DISPLAY "Línea 17"
           DISPLAY "Línea 18"
           DISPLAY "Línea 19"
           DISPLAY "Línea 20"
           CONTINUE.
       MUERTO-UNO-EXIT.
           EXIT.

       MUERTO-DOS.
           DISPLAY "Este es el párrafo muerto dos"
           DISPLAY "Tampoco será ejecutado"
           MOVE "MUERTO2" TO WS-DUMMY
           DISPLAY "Línea 21"
           DISPLAY "Línea 22"
           DISPLAY "Línea 23"
           DISPLAY "Línea 24"
           DISPLAY "Línea 25"
           DISPLAY "Línea 26"
           DISPLAY "Línea 27"
           DISPLAY "Línea 28"
           DISPLAY "Línea 29"
           DISPLAY "Línea 30"
           DISPLAY "Línea 31"
           DISPLAY "Línea 32"
           DISPLAY "Línea 33"
           DISPLAY "Línea 34"
           DISPLAY "Línea 35"
           DISPLAY "Línea 36"
           DISPLAY "Línea 37"
           DISPLAY "Línea 38"
           DISPLAY "Línea 39"
           DISPLAY "Línea 40"
           CONTINUE.
       MUERTO-DOS-EXIT.
           EXIT.

       FILLER-001.
           DISPLAY "FILLER 001"
           DISPLAY "FILLER 002"
           DISPLAY "FILLER 003"
           DISPLAY "FILLER 004"
           DISPLAY "FILLER 005"
           DISPLAY "FILLER 006"
           DISPLAY "FILLER 007"
           DISPLAY "FILLER 008"
           DISPLAY "FILLER 009"
           DISPLAY "FILLER 010"
           DISPLAY "FILLER 011"
           DISPLAY "FILLER 012"
           DISPLAY "FILLER 013"
           DISPLAY "FILLER 014"
           DISPLAY "FILLER 015"
           DISPLAY "FILLER 016"
           DISPLAY "FILLER 017"
           DISPLAY "FILLER 018"
           DISPLAY "FILLER 019"
           DISPLAY "FILLER 020"
           DISPLAY "FILLER 021"
           DISPLAY "FILLER 022"
           DISPLAY "FILLER 023"
           DISPLAY "FILLER 024"
           DISPLAY "FILLER 025"
           DISPLAY "FILLER 026"
           DISPLAY "FILLER 027"
           DISPLAY "FILLER 028"
           DISPLAY "FILLER 029"
           DISPLAY "FILLER 030"
           DISPLAY "FILLER 031"
           DISPLAY "FILLER 032"
           DISPLAY "FILLER 033"
           DISPLAY "FILLER 034"
           DISPLAY "FILLER 035"
           DISPLAY "FILLER 036"
           DISPLAY "FILLER 037"
           DISPLAY "FILLER 038"
           DISPLAY "FILLER 039"
           DISPLAY "FILLER 040"
           CONTINUE.
       FILLER-001-EXIT.
           EXIT.

       FILLER-002.
           DISPLAY "FILLER 041"
           DISPLAY "FILLER 042"
           DISPLAY "FILLER 043"
           DISPLAY "FILLER 044"
           DISPLAY "FILLER 045"
           DISPLAY "FILLER 046"
           DISPLAY "FILLER 047"
           DISPLAY "FILLER 048"
           DISPLAY "FILLER 049"
           DISPLAY "FILLER 050"
           CONTINUE.
       FILLER-002-EXIT.
           EXIT.
