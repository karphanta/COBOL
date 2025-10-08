       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULAR-PROMEDIO.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NOTA             PIC 99 VALUE ZERO.
       01  WS-SUMA             PIC 999 VALUE ZERO.
       01  WS-CONTADOR         PIC 99 VALUE ZERO.
       01  WS-PROMEDIO         PIC 99 VALUE ZERO.
       01  WS-MENSAJE          PIC X(50).

       PROCEDURE DIVISION.
       MAIN.
           PERFORM INICIO THRU INICIO-EXIT
           PERFORM INGRESAR THRU INGRESAR-EXIT
           PERFORM CALCULAR THRU CALCULAR-EXIT
           PERFORM MOSTRAR THRU MOSTRAR-EXIT
           STOP RUN.
       MAIN-EXIT.
           EXIT.

       INICIO.
           DISPLAY "Cálculo de promedio de 5 notas"
           MOVE 0 TO WS-SUMA
           MOVE 0 TO WS-CONTADOR
           CONTINUE.
       INICIO-EXIT.
           EXIT.

       INGRESAR.
           PERFORM VARYING WS-CONTADOR FROM 1 BY 1 UNTIL WS-CONTADOR > 5
               DISPLAY "Ingrese nota " WS-CONTADOR
               ACCEPT WS-NOTA
               ADD WS-NOTA TO WS-SUMA
           END-PERFORM
           CONTINUE.
       INGRESAR-EXIT.
           EXIT.

       CALCULAR.
           DIVIDE WS-SUMA BY 5 GIVING WS-PROMEDIO
           CONTINUE.
       CALCULAR-EXIT.
           EXIT.

       MOSTRAR.
           MOVE "Promedio calculado: " TO WS-MENSAJE
           DISPLAY WS-MENSAJE WS-PROMEDIO
           CONTINUE.
       MOSTRAR-EXIT.
           EXIT.

       * Párrafos muertos
       LOG-NOTAS.
           DISPLAY "Notas ingresadas correctamente"
           DISPLAY "Este párrafo no se ejecuta"
           CONTINUE.
       LOG-NOTAS-EXIT.
           EXIT.

       DEPURAR-SUMA.
           DISPLAY "Suma acumulada: " WS-SUMA
           DISPLAY "Este párrafo está muerto"
           CONTINUE.
       DEPURAR-SUMA-EXIT.
           EXIT.
