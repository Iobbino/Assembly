;il gioco si gioca in coppia nella stessa tastiera
;giocatore1 utilizza i caratteri q-w-e, a-s-d, z-x-c per posizionare 'O'
;giocatore2 utilizza i numeri 1-2-3, 4-5-6, 7-8-9 per posizionare 'X'

.data

str1 DB "ha vinto giocatore1!", '$'
str2 DB "ha vinto giocatore2!", '$'
 
.model small

.code

.startup

;----------------------------------------inizializzazione del gioco

mov [0100h], '|'
mov [0101h], '-'

mov [0102h], ' '
mov [0103h], ' '
mov [0104h], ' '
mov [0105h], ' '
mov [0106h], ' '
mov [0107h], ' '
mov [0108h], ' '
mov [0109h], ' '
mov [010Ah], ' '

stampa_griglia: mov dl, [0102h]     ;prima riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0103h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0104h]
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0101h]     ;seconda riga
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0105h]     ;terza riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0106h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0107h]
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0101h]     ;quarta riga
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0108h]     ;quinta riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0109h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [010Ah]
                mov ah, 02h
                int 21h

;----------------------------------------inizio del gioco
 
main:
 
;----------------------------------------turno giocatore1 

gigio1:

mov dl, 13        
mov ah, 02h
int 21h

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13        
mov ah, 02h
int 21h

mov dl, 10
mov ah, 02h
int 21h

mov ah, 01h
int 21h
mov [010Bh], al

;----------------------------------------controlla il carattere in ingresso per posizionare 'O'

cmp [010Bh], 'q'
jz a1
cmp [010Bh], 'w'
jz a2
cmp [010Bh], 'e'
jz a3
cmp [010Bh], 'a'
jz a4
cmp [010Bh], 's'
jz a5
cmp [010Bh], 'd'
jz a6
cmp [010Bh], 'z'
jz a7
cmp [010Bh], 'x'
jz a8
cmp [010Bh], 'c'
jz a9

loop gigio1 

;----------------------------------------switch

a1: cmp [0102h], 'X'
    je gigio1
    mov [0102h], 'O'
    jmp fine1
    
a2: cmp [0103h], 'X'
    je gigio1
    mov [0103h], 'O'
    jmp fine1

a3: cmp [0104h], 'X'
    je gigio1
    mov [0104h], 'O'
    jmp fine1

a4: cmp [0105h], 'X'
    je gigio1
    mov [0105h], 'O'
    jmp fine1

a5: cmp [0106h], 'X'
    je gigio1
    mov [0106h], 'O'
    jmp fine1

a6: cmp [0107h], 'X'
    je gigio1
    mov [0107h], 'O'
    jmp fine1

a7: cmp [0108h], 'X'
    je gigio1
    mov [0108h], 'O'
    jmp fine1

a8: cmp [0109h], 'X'
    je gigio1
    mov [0109h], 'O'
    jmp fine1

a9: cmp [010Ah], 'X'
    je gigio1
    mov [010Ah], 'O'
    jmp fine1

fine1:

mov ah,00h
mov al,03h
int 10h

stampa_griglia1: mov dl, [0102h]     ;prima riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0103h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0104h]
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0101h]     ;seconda riga
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0105h]     ;terza riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0106h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0107h]
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0101h]     ;quarta riga
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0108h]     ;quinta riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0109h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [010Ah]
                mov ah, 02h
                int 21h  

;----------contorllo caso 1

controllo1_1: cmp [0102h], 'O'
              jz controllo1_2
              jmp controllo2_1

controllo1_2: cmp [0103h], 'O'
              jz controllo1_3
              jmp controllo2_1
              
controllo1_3: cmp [0104h], 'O'
              jz ha_vinto_giocatore_1
              jmp controllo2_1

;----------contorllo caso 2    

controllo2_1: cmp [0105h], 'O'
              jz controllo2_2
              jmp controllo3_1

controllo2_2: cmp [0106h], 'O'
              jz controllo2_3
              jmp controllo3_1
              
controllo2_3: cmp [0107h], 'O'
              jz ha_vinto_giocatore_1
              jmp controllo3_1
              
;----------contorllo caso 3    

controllo3_1: cmp [0108h], 'O'
              jz controllo3_2
              jmp controllo4_1

controllo3_2: cmp [0109h], 'O'
              jz controllo3_3
              jmp controllo4_1
              
controllo3_3: cmp [010Ah], 'O'
              jz ha_vinto_giocatore_1
              jmp controllo4_1
              
;----------contorllo caso 4    

controllo4_1: cmp [0102h], 'O'
              jz controllo4_2
              jmp controllo5_1

controllo4_2: cmp [0105h], 'O'
              jz controllo4_3
              jmp controllo5_1
              
controllo4_3: cmp [0108h], 'O'
              jz ha_vinto_giocatore_1
              jmp controllo5_1
              
;----------contorllo caso 5    

controllo5_1: cmp [0103h], 'O'
              jz controllo5_2
              jmp controllo6_1

controllo5_2: cmp [0106h], 'O'
              jz controllo5_3
              jmp controllo6_1
              
controllo5_3: cmp [0109h], 'O'
              jz ha_vinto_giocatore_1
              jmp controllo6_1
              
;----------contorllo caso 6    

controllo6_1: cmp [0104h], 'O'
              jz controllo6_2
              jmp controllo7_1

controllo6_2: cmp [0107h], 'O'
              jz controllo6_3
              jmp controllo7_1
              
controllo6_3: cmp [010Ah], 'O'
              jz ha_vinto_giocatore_1
              jmp controllo7_1
              
;----------contorllo caso 7    

controllo7_1: cmp [0104h], 'O'
              jz controllo7_2
              jmp controllo8_1

controllo7_2: cmp [0106h], 'O'
              jz controllo7_3
              jmp controllo8_1
              
controllo7_3: cmp [0108h], 'O'
              jz ha_vinto_giocatore_1
              jmp controllo8_1
              
;----------contorllo caso 8    

controllo8_1: cmp [0102h], 'O'
              jz controllo8_2
              jmp x

controllo8_2: cmp [0106h], 'O'
              jz controllo8_3
              jmp x
              
controllo8_3: cmp [010Ah], 'O'
              jz ha_vinto_giocatore_1
              jmp x

;----------ancora nessun vinicitore
              
x:
         
;----------------------------------------turno giocatore2 

gigio2:

mov dl, 13        
mov ah, 02h
int 21h

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13        
mov ah, 02h
int 21h

mov dl, 10
mov ah, 02h
int 21h

mov ah, 01h
int 21h
mov [010Bh], al

;----------------------------------------controlla il carattere in ingresso per posizionare 'X'

cmp [010Bh], '7'
jz b1
cmp [010Bh], '8'
jz b2
cmp [010Bh], '9'
jz b3
cmp [010Bh], '4'
jz b4
cmp [010Bh], '5'
jz b5
cmp [010Bh], '6'
jz b6
cmp [010Bh], '1'
jz b7
cmp [010Bh], '2'
jz b8
cmp [010Bh], '3'
jz b9

loop gigio2 

;----------------------------------------switch

b1: cmp [0102h], 'O'
    je gigio2
    mov [0102h], 'X'
    jmp fine2
    
b2: cmp [0103h], 'O'
    je gigio2
    mov [0103h], 'X'
    jmp fine2

b3: cmp [0104h], 'O'
    je gigio2
    mov [0104h], 'X'
    jmp fine2

b4: cmp [0105h], 'O'
    je gigio2
    mov [0105h], 'X'
    jmp fine2

b5: cmp [0106h], 'O'
    je gigio2
    mov [0106h], 'X'
    jmp fine2

b6: cmp [0107h], 'O'
    je gigio2
    mov [0107h], 'X'
    jmp fine2

b7: cmp [0108h], 'O'
    je gigio2
    mov [0108h], 'X'
    jmp fine2

b8: cmp [0109h], 'O'
    je gigio2
    mov [0109h], 'X'
    jmp fine2

b9: cmp [010Ah], 'O'
    je gigio2
    mov [010Ah], 'X'
    jmp fine2


fine2:

mov ah,00h
mov al,03h
int 10h

stampa_griglia2: mov dl, [0102h]     ;prima riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0103h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0104h]
                mov ah, 02h
                int 21h
                
                ;---------------
                 
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0101h]     ;seconda riga
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                ;---------------
                
                mov dl, [0105h]     ;terza riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0106h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0107h]
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                
                ;---------------
                
                mov dl, [0101h]     ;quarta riga
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                mov ah, 02h
                int 21h
                
                ;---------------
                            
                mov dl, 13          ;a capo
                mov ah, 02h
                int 21h

                mov dl, 10
                mov ah, 02h
                int 21h
                
                
                ;---------------
                
                mov dl, [0108h]     ;quinta riga
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [0109h]
                mov ah, 02h
                int 21h
                
                mov dl, [0100h]
                mov ah, 02h
                int 21h
                
                mov dl, [010Ah]
                mov ah, 02h
                int 21h  

;----------contorllo caso 1

controll1_1: cmp [0102h], 'X'
              jz controll1_2
              jmp controll2_1

controll1_2: cmp [0103h], 'X'
              jz controll1_3
              jmp controll2_1
              
controll1_3: cmp [0104h], 'X'
              jz ha_vinto_giocatore_2
              jmp controll2_1

;----------contorllo caso 2    

controll2_1: cmp [0105h], 'X'
              jz controll2_2
              jmp controll3_1

controll2_2: cmp [0106h], 'X'
              jz controll2_3
              jmp controll3_1
              
controll2_3: cmp [0107h], 'X'
              jz ha_vinto_giocatore_2
              jmp controll3_1
              
;----------contorllo caso 3    

controll3_1: cmp [0108h], 'X'
              jz controll3_2
              jmp controll4_1

controll3_2: cmp [0109h], 'X'
              jz controll3_3
              jmp controll4_1
              
controll3_3: cmp [010Ah], 'X'
              jz ha_vinto_giocatore_2
              jmp controll4_1
              
;----------contorllo caso 4    

controll4_1: cmp [0102h], 'X'
              jz controll4_2
              jmp controll5_1

controll4_2: cmp [0105h], 'X'
              jz controll4_3
              jmp controll5_1
              
controll4_3: cmp [0108h], 'X'
              jz ha_vinto_giocatore_2
              jmp controll5_1
              
;----------contorllo caso 5    

controll5_1: cmp [0103h], 'X'
              jz controll5_2
              jmp controll6_1

controll5_2: cmp [0106h], 'X'
              jz controll5_3
              jmp controll6_1
              
controll5_3: cmp [0109h], 'X'
              jz ha_vinto_giocatore_2
              jmp controll6_1
              
;----------contorllo caso 6    

controll6_1: cmp [0104h], 'X'
              jz controll6_2
              jmp controll7_1

controll6_2: cmp [0107h], 'X'
              jz controll6_3
              jmp controll7_1
              
controll6_3: cmp [010Ah], 'X'
              jz ha_vinto_giocatore_2
              jmp controll7_1
              
;----------contorllo caso 7    

controll7_1: cmp [0104h], 'X'
              jz controll7_2
              jmp controll8_1

controll7_2: cmp [0106h], 'X'
              jz controll7_3
              jmp controll8_1
              
controll7_3: cmp [0108h], 'X'
              jz ha_vinto_giocatore_2
              jmp controllo8_1
              
;----------contorllo caso 8    

controll8_1: cmp [0102h], 'X'
              jz controll8_2
              jmp y

controll8_2: cmp [0106h], 'X'
              jz controll8_3
              jmp y
              
controll8_3: cmp [010Ah], 'X'
              jz ha_vinto_giocatore_2
              jmp y

;----------ancora nessun vinicitore
              
y:

loop main

ha_vinto_giocatore_1: mov dl, 13
                      mov ah, 02h
                      int 21h

                      mov dl, 10
                      mov ah, 02h
                      int 21h
                
                      mov dl, 13
                      mov ah, 02h
                      int 21h

                      mov dl, 10
                      mov ah, 02h
                      int 21h

                      mov ah, 09h
                      mov dx, offset str1
                      int 21h
                      
                      jmp end

ha_vinto_giocatore_2: mov dl, 13
                      mov ah, 02h
                      int 21h

                      mov dl, 10
                      mov ah, 02h
                      int 21h
                
                      mov dl, 13
                      mov ah, 02h
                      int 21h

                      mov dl, 10
                      mov ah, 02h
                      int 21h

                      mov ah, 09h
                      mov dx, offset str2
                      int 21h
                      
                      jmp end
 

end:

.exit






















































;ciao per arrivare a 1000 righe lol                