TheThing	proc
			cmp numboard[bx][si], 0
			jnz @@shura
			mov numboard[bx][si], 1
			call Checks
			cmp si, snum2
			jz @@complete
			push bx si cx
			mov bx, 0
			mov cx, 0
			inc si
			call TheThing
			pop cx si bx
			jmp @@all
			
	@@complete:	push bx si ax
			mov bx, 0
			mov si, 0
			mov al, 0
	@@shoov:cmp numboard[bx][si], 1
			jnz @@not
			
			push ax
			mov ax, si
			mov coor[di], al
			pop ax
			inc di
			mov coor[di], al
			inc di
			
	@@not:	inc si
			cmp si, num2
			jnz @@shoov
			mov si, 0
			inc al
			add bx, num2
			cmp al, num1
			jnz @@shoov
		
			pop ax si bx
			
	@@all:	mov numboard[bx][si], 0
			call Checks
			
	@@shura:	cmp cx, snum2
			jz @@end
			push bx si cx
			inc cx
			add bx, num2
			call TheThing
			pop cx si bx
	@@end:	
			ret
TheThing	endp

Checks 		proc
			push bx si di
			mov bx, 0
			mov si, 0
			mov di, 0
		
	@@shoov: cmp numboard[bx][si], 1
			jz @@next
			mov numboard[bx][si], 0
	@@next:	inc si
			cmp si, num2
			jnz @@shoov
			mov si, 0
			inc di
			add bx, num2
			cmp di, num2
			jnz @@shoov
					
			mov bx, 0
			mov si, 0
			mov di, 0
		
	@@shoov1: cmp numboard[bx][si], 1
			jnz @@next1
			push si
	@@right: cmp si, snum2
			jz @@a
			inc si
			mov numboard[si][bx], 2
			jmp @@right
	@@a:	pop si
			push si bx di
	@@down:	cmp si, snum2
			jz @@b
			cmp di, snum2
			jz @@b
			inc si
			inc di
			add bx, num2
			mov numboard[si][bx], 2
			jmp @@down
	@@b:	pop di bx si
			push si bx di
	@@up:	cmp si, snum2
			jz @@c
			cmp di, 0
			jz @@c
			inc si
			dec di
			sub bx, num2
			mov numboard[si][bx], 2
			jmp @@up
	@@c:	pop di bx si			
	@@next1:inc si
			cmp si, num2
			jnz @@shoov1
			mov si, 0
			inc di
			add bx, num2
			cmp di, num2
			jnz @@shoov1
			pop di si bx
			ret
Checks 		endp		
		
