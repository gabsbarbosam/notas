      ******************************************************************
      * Author: GABIRELA BARBOSA
      * Date: 01/09/2023
      * Purpose: CALCULAR AS NOTAS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOTAS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

           77 WS-NOTA1         PIC 9(02) VALUE ZEROS.
           77 WS-NOTA2         PIC 9(02) VALUE ZEROS.
           77 WS-NOTA3         PIC 9(02) VALUE ZEROS.
           77 WS-RESUL         PIC 9(02) VALUE ZEROS.

           PROCEDURE DIVISION.
           MAIN-PROCEDURE.
           DISPLAY "INSIRA NOTA 1"
           ACCEPT WS-NOTA1

           DISPLAY "INSIRA NOTA 2"
           ACCEPT WS-NOTA2

           DISPLAY "INSIRA NOTA 3"
           ACCEPT WS-NOTA3

           COMPUTE WS-RESUL = (WS-NOTA1 + WS-NOTA2 + WS-NOTA3) / 3
           DISPLAY "SUA MEDIA E " WS-RESUL

           IF WS-RESUL >7 OR = 7
               THEN
               DISPLAY "APROVADO"
           ELSE IF WS-RESUL <7
               THEN
               DISPLAY "REPROVADO"
           END-IF

       STOP RUN.
       END PROGRAM NOTAS.
