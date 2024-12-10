01  WS-AMOUNT PIC 9(5)V99 VALUE 0. 
01  WS-INPUT-VALUE PIC 9(7)V99. 

* ...other COBOL code. 

MOVE 123456.56 TO WS-INPUT-VALUE. 
MOVE WS-INPUT-VALUE TO WS-AMOUNT. 
DISPLAY WS-AMOUNT. 

* Alternatively, if you are receiving the number as a string, use an appropriate MOVE statement.
* MOVE '123456.56' TO WS-INPUT-VALUE. 
* The above MOVE statement assumes that the PIC of WS-INPUT-VALUE is 9(7)V99 or similar format
* If the string contains non-numeric characters, you'll need to handle it properly before the conversion.
* For example, you could use functions like UNSTRING and INSPECT to clean the string before converting it to a numeric value.