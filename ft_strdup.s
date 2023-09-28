section .text
    global  ft_strdup

extern  __errno_location
extern  malloc
extern  ft_strlen
extern  ft_strcpy

ft_strdup:
	push	rdi
	call	ft_strlen
	inc		rax
	mov		rdi, rax
	call	malloc
	pop		rdi
	or		rax, rax
	jz		error
	mov		rsi, rdi
	mov		rdi, rax
	call	ft_strcpy
	jmp		ret

error:
	neg		rax
	push	rax
	call	__errno_location
	pop		qword[rax]
	mov		rax, -1

ret:
	ret