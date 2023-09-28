section	.text
	global ft_strcpy

ft_strcpy:
	xor	rcx, rcx

compare:
	cmp	byte [rsi + rcx], 0x0
	je	ret
	mov	al, byte [rsi + rcx]
	mov	byte [rdi + rcx], al
	inc	rcx
	jmp	compare

ret:
	mov	rax, rdi
	ret
