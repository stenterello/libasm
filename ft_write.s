
section	.text
	global		ft_write

extern		__errno_location

ft_write:
	mov		rax, 1
	syscall
	cmp		rax, 0x0
	jl		seterr
	jmp		ret

seterr:
	neg		rax
	push	rax
	call	__errno_location
	pop		qword[rax]
	mov		rax, -1

ret:
	ret

