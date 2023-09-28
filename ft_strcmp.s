section	.text
	global	ft_strcmp

ft_strcmp:
	xor	rax, rax
	xor	rbx, rbx
	xor	rcx, rcx

verify:
	mov	al, byte [rdi + rcx]
	mov	bl, byte [rsi + rcx]
	cmp	al, 0x0
	jz	ret
	cmp bl, 0x0
	jz	ret
	cmp	rax, rbx
	jnz	ret
	inc	rcx
	jmp	verify

ret:
	sub	rax, rbx
	ret
