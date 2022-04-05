;����� ���������

INCLUDE settings.inc
INCLUDE io2021.inc
 
.STACK 4096

.DATA
N equ 9
x Dd 1,2,3,4,5,4,3,2,1
FStr DB 'Program begins work.',0         
LStr DB 'Program ends work.',0

      ; ����������
C DD ?

.CODE
SUM_KV PROC ;procedure(a,b:longint; var c:longint)
    push ebp
    mov ebp, esp
    push eax
    push edx
    push esi
    push ecx
    
    mov eax, [ebp+8]
    ;add eax, [ebp+8]
    imul eax
    mov ecx,eax
    mov eax, [ebp+12]
    imul eax
    add eax, ecx
    mov esi, [ebp+16]
    mov [esi], eax
    
    pop ecx
    pop esi
    pop edx
    pop eax
    pop ebp
    ret 12
SUM_KV ENDP    
start: OUTSTR offset FStr
       NEWLINE


    

    
    NEWLINE
    push dword ptr offset C
    push dword ptr 10
    push dword ptr 5
    call SUM_KV
    OUTI C
    NEWLINE
    
        ; �������
     
       OUTSTR offset LStr
       NEWLINE      
      EXIT
END start
       