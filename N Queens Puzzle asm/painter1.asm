paintwhite 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, white[bx]
			inc bx
			mov ah, white[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintwhite		endp
paintblack 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, black[bx]
			inc bx
			mov ah, black[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintblack		endp		
paintqueen 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, queen1[bx]
			inc bx
			mov ah, queen1[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov bx, 0
			mov cx, cxst
			jmp @@odha2
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
			
	@@odha2:mov al, queen2[bx]
			inc bx
			mov ah, queen2[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@no255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha2
	@@no255:	cmp al, 254
			jnz @@again2
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again2:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again2
			jmp @@odha2
			
	@@enddd:pop bx
			ret
paintqueen		endp	
painton 	proc
			push bx
			mov bx, 1
			mov ah, 0ch
			mov al, 12
	@@shoov:	int 10h
			inc cx
			inc bl
			cmp bl, size1
			jnz @@shoov
			mov bl, 1
	@@shoov1:	int 10h
			inc dx
			inc bl
			cmp bl, size1
			jnz @@shoov1
			mov bl, 1
	@@shoov2:	int 10h
			dec cx
			inc bl
			cmp bl, size1
			jnz @@shoov2
			mov bl, 1
	@@shoov3:	int 10h
			dec dx
			inc bl
			cmp bl, size1
			jnz @@shoov3
			pop bx
			ret
painton		endp
paintoff 	proc
			push bx
			mov bx, 1
			mov ah, 0ch
			mov al, 15
	@@shoov:	int 10h
			inc cx
			inc bl
			cmp bl, size1
			jnz @@shoov
			mov bl, 1
	@@shoov1:	int 10h
			inc dx
			inc bl
			cmp bl, size1
			jnz @@shoov1
			mov bl, 1
	@@shoov2:	int 10h
			dec cx
			inc bl
			cmp bl, size1
			jnz @@shoov2
			mov bl, 1
	@@shoov3:	int 10h
			dec dx
			inc bl
			cmp bl, size1
			jnz @@shoov3
			pop bx
			ret
paintoff	endp
painttafus 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, tafus[bx]
			inc bx
			mov ah, tafus[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
painttafus		endp
