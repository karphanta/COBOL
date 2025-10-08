       IDENTIFICATION DIVISION.
       PROGRAM-ID. VALIDAR-EDAD.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-EDAD             PIC 99 VALUE ZERO.
       01  WS-MENSAJE          PIC X(50).
       01  WS-VALIDO           PIC X VALUE "N".

       PROCEDURE DIVISION.
       MAIN.
           PERFORM INICIO THRU INICIO-EXIT
           PERFORM VALIDAR THRU VALIDAR-EXIT
           PERFORM MOSTRAR THRU MOSTRAR-EXIT
           STOP RUN.
       MAIN-EXIT.
           EXIT.

       INICIO.
           DISPLAY "Ingrese su edad:"
           ACCEPT WS-EDAD
           CONTINUE.
       INICIO-EXIT.
           EXIT.

       VALIDAR.
           IF WS-EDAD >= 18
               MOVE "S" TO WS-VALIDO
               MOVE "Edad válida para votar." TO WS-MENSAJE
           ELSE
               MOVE "N" TO WS-VALIDO
               MOVE "Edad insuficiente para votar." TO WS-MENSAJE
           END-IF
           CONTINUE.
       VALIDAR-EXIT.
           EXIT.

       MOSTRAR.
           DISPLAY WS-MENSAJE
           CONTINUE.
       MOSTRAR-EXIT.
           EXIT.

       * Párrafos muertos
       LOG-DETALLADO.
           DISPLAY "Log interno: validación completa"
           DISPLAY "Este párrafo no se invoca"
           CONTINUE.
       LOG-DETALLADO-EXIT.
           EXIT.

       DEPURAR-EDAD.
           DISPLAY "Depuración de WS-EDAD: " WS-EDAD
           DISPLAY "Este párrafo está muerto"
           CONTINUE.
       DEPURAR-EDAD-EXIT.
           EXIT.
