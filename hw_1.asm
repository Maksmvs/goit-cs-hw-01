org 0x100               ; �������, �� �� �������� .COM
section .data
    a db 1               ; ��������� a = 1
    b db 6               ; ��������� b = 6
    c db 3               ; ��������� c = 3
    resultMsg db 'Result: $' ; ���������� ����� ��� ��������� ����������

section .text
_start:
    mov al, [b]          ; ����������� b � al
    sub al, [c]          ; ³������� c �� al
    add al, [a]          ; ������ a �� al
    
    ; ������������ ���������� � ASCII ������ (��� ����������� �����)
    add al, 30h          ; ������������ ����� � ASCII ������

    ; ��������� ����������
    mov ah, 09h          ; ������� DOS ��� ��������� �����
    lea dx, resultMsg    ; ������������ DX �� ������ resultMsg
    int 21h              ; ������ DOS-�����������

    ; ��������� �����
    mov dl, al           ; ������� ��������� � dl ��� ������
    mov ah, 02h          ; ������� DOS ��� ������ �������
    int 21h              ; ������ DOS-�����������

    ; ���������� ��������
    mov ax, 4c00h        ; ������� DOS ��� ���������� ��������
    int 21h              ; ������ DOS-�����������