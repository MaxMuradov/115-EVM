;����� ���������

INCLUDE settings.inc
INCLUDE io2021.inc
 
.STACK 4096

.DATA
N equ 5
A DB 1,2,3,4,5
B DB 1,2,7,3,4,5,6,-1,-100
Amax DB ?
Bmax DB ?
FStr DB 'Program begins work.',0         
LStr DB 'Program ends work.',0

      ; ����������
C DD ?

.CODE
PMAXER PROC 
    push ebp
    mov ebp, esp
    push ecx
    mov ecx,[ebp+12]
    push eax
    mov al, -128
    push ebx
    mov ebx, [ebp+8]
    ;push esi

l:   
     cmp [ebx+ecx-1],al
     jle skip
     mov al,[ebx+ecx-1]
skip:
     loop l
     mov ebx,[ebp+16]
     mov [ebx], al
     pop ebx
     pop eax
     pop ecx
     pop ebp
     ret 12
     
PMAXER ENDP    
start: OUTSTR offset FStr
       NEWLINE


    


    NEWLINE
    push dword ptr offset Amax
    push dword ptr N
    push dword ptr offset A
    call PMAXER
    movsx eax,Amax
    OUTI eax
    NEWLINE ; �������
       
    
         
       OUTSTR offset LStr
       NEWLINE      
      EXIT
END start
       
