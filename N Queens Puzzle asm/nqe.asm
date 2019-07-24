locals
dseg	segment	
		numboard	db	200 dup(0)
		coor 	db	20000 dup(0)

		white	db	15, 30, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255 
				db	15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255
				db	15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255
				db	15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255
				db	15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255
				db	15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255
				db	15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255, 15, 1, 7, 28, 15, 1, 255
				db	15, 1, 7, 28, 15, 1, 255, 15, 30, 254
				
		black	db	15, 30, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 1, 8, 28, 15, 1, 255, 15, 30, 254	
		tafus	db	15, 30, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255
				db	15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 30, 254
		queen1	db	15, 30, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 10, 0, 7, 10, 11, 15, 1, 255, 15, 1, 10, 8, 0, 11, 10, 9, 15, 1, 255, 15, 1, 10, 6, 0, 15, 10, 7, 15, 1, 255, 15, 1, 10, 5, 0, 17, 10, 6, 15, 1, 255, 15, 1, 10, 4, 0, 19, 10, 5, 15, 1, 255, 15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255, 15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 254 	
		queen2	db	15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255,15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255, 15, 1, 10, 4, 0, 19, 10, 5, 15, 1, 255, 15, 1, 10, 5, 0, 17, 10, 6, 15, 1, 255, 15, 1, 10, 6, 0, 15, 10, 7, 15, 1, 255, 15, 1, 10, 8, 0, 11, 10, 9, 15, 1, 255, 15, 1, 10, 10, 0, 7, 10, 11, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 30, 254
		
		long	db	0
		cxst	dw	0
		dxst	dw	0
		
		topy	dw	60
		topx	dw	60
		size1	db	30
		size2	dw	30
		
		num1	db	8
		totcx	dw	?
		totdx	dw	?
		howmuch	dw	?

		num2	dw	?
		snum1	db	?
		snum2	dw	?
		winCheck	db 0
		first	db 	0
		place	dw	0
				
dseg ends
sseg 	segment stack
		dw	400h	dup(?)
sseg	ends

cseg	segment
assume	cs:cseg, ds: dseg, ss:sseg
include painter1.asm
include TheThing.asm
	Start:
			mov ax, dseg
			mov ds, ax
			mov al, 12h
			mov ah, 0h
			int 10h
			
			mov ah, 2
			mov bh, 0
			mov dh, 6
			mov dl, 6
			int 10h
			
			mov dl, 'B'
			int 21h
			mov dl, 'o'
			int 21h
			mov dl, 'a'
			int 21h
			mov dl, 'r'
			int 21h
			mov dl, 'd'
			int 21h
			mov dl, ' '
			int 21h
			mov dl, 'S'
			int 21h
			mov dl, 'i'
			int 21h
			mov dl, 'z'
			int 21h
			mov dl, 'e'
			int 21h
			mov dl, ':'
			int 21h
			mov dl, ' '
			int 21h	
			
			mov ah, 1
			int 21h
			sub al, '0'
			mov bl, 10
			mul bl
			mov bl, al
			mov ah, 1
			int 21h
			cmp al, 0dh
			jz onenum
			sub al, '0'
			add al, bl
			jmp twonum
	onenum:	mov al, bl
			mov ah, 0
			mov bl, 10
			div bl
	twonum:	mov num1, al
	
			mov ah, 2
			mov bh, 0
			mov dh, 6
			mov dl, 6
			int 10h
			
			mov dl, ' '
			mov ah, 2
			mov cl, 17
	aaaa:	int 21h
			dec cl
			cmp cl, 0
			jnz aaaa
			
			
			mov al, size1
			mov bl, num1
			mul bl
			add ax, topx
			mov totcx, ax
			mov al, size1
			mov bl, num1
			mul bl
			add ax, topy
			mov totdx, ax
			
	;build board		
			mov cx, topx
			mov dx, topy
			mov di, 1
			mov si, 1
			
	odhap:	cmp di, 1
			jnz black1
			call paintwhite
			inc di
			jmp white1
	black1:	call paintblack
			dec di
	white1:	add cx, size2
			cmp cx, totcx
			jc odhap
			cmp si, 1
			jnz q1
			inc si
			mov di, 2
			jmp q2
	q1:		dec si
			mov di, 1
	q2:		mov cx, topx
			add dx, size2
			cmp dx, totdx
			jc odhap
			
			mov ah, 0
			mov al, num1
			mov num2, ax
			mov snum1, al
			dec snum1
			mov snum2, ax
			dec snum2
			
			mov cx, topx
			mov dx, topy
			call painton
			mov bx, 0
			mov si, 0
						
	oncemore:	mov ah, 7
			int 21h
			cmp al, 1bh
			jnz up
			jmp endd
	up:		cmp al, 'w'
			jnz down
			sub dx, size2
			cmp dx, topy
			jnc a1
			add dx, size2
			jmp oncemore
	a1:		add dx, size2
			call paintoff
	     	sub dx, size2
			call painton
			sub bx, num2;
			jmp oncemore
	down:	cmp al, 's'
			jnz right
			add dx, size2
			cmp dx, totdx
			jc a4
			sub dx, size2
			jmp oncemore
	a4:		sub dx, size2
			call paintoff
			add dx, size2
			call painton
			add bx, num2;
			jmp oncemore
	right:	cmp al, 'd'
			jnz left
			add cx, size2
			cmp cx, totcx
			jc a3
			sub cx, size2
			jmp oncemore
	a3:		sub cx, size2
			call paintoff
			add cx, size2
			call painton
			inc si;
			jmp oncemore
	left:	cmp al, 'a'
			jnz queen
			sub cx, size2
			cmp cx, topx
			jnc a2
			add cx, size2
			jmp oncemore
	a2:		add cx, size2
			call paintoff
			sub cx, size2
			call painton
			dec si;
			jmp oncemore
			
	queen:	cmp al, 13
			jz q
			jmp solution
	q:		cmp numboard[si][bx], 0
			jz w
			jmp oncemore
	w:		call paintqueen
			mov numboard[si][bx], 1
			
			push cx si
	right1:	cmp si, snum2
			jz left1
			inc si
			add cx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp right1
			
	left1:	pop si cx
			push cx si
	left2:	cmp si, 0
			jz up1
			dec si
			sub cx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp left2
	
	up1:	pop si cx
			push dx bx
	up2:	cmp bx, 0
			jz down1
			sub bx, num2
			sub dx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp up2
	
	down1:	pop bx dx
			push dx bx
			mov ax, size2
			sub totdx, ax
	down2:	cmp dx, totdx
			jz downright1
			add bx, num2
			add dx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp down2
			
	downright1:pop bx dx
			push bx si cx dx
	downright2:cmp dx, totdx
			jz downleft1
			cmp si, snum2
			jz downleft1
			add bx, num2
			inc si
			add dx, size2
			add cx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp downright2
	
	downleft1:pop dx cx si bx
			push bx si cx dx
	downleft2:cmp dx, totdx
			jz upleft1
			cmp si, 0
			jz upleft1
			add bx, num2
			dec si
			add dx, size2
			sub cx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp downleft2
	
	upleft1:mov ax, size2
			add totdx, ax
			pop dx cx si bx 
			push bx si cx dx
	upleft2:cmp bx, 0
			jz upright1
			cmp si, 0
			jz upright1
			sub bx, num2
			dec si
			sub dx, size2
			sub cx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp upleft2
			
	upright1: pop dx cx si bx
			push bx si cx dx
	upright2:cmp bx, 0
			jz q3
			cmp si, snum2
			jz q3
			sub bx, num2
			inc si
			sub dx, size2
			add cx, size2
			call painttafus
			mov numboard[si][bx], 2
			jmp upright2
			

	q3:		
			pop dx cx si bx
			inc winCheck
			mov al, winCheck
			cmp al, num1
			jnz t
			mov ah, 2
			mov bh, 0
			mov dh, 2
			mov dl, 8
			int 10h
			
			mov dl, 'Y'
			int 21h
			mov dl, 'o'
			int 21h
			mov dl, 'u'
			int 21h
			mov dl, ' '
			int 21h
			mov dl, 'W'
			int 21h
			mov dl, 'o'
			int 21h
			mov dl, 'n'
			int 21h
			mov dl, '!'
			int 21h
	t:		jmp oncemore
	
	solution:	cmp al, ' '
			jz u
			jmp oncemore
	u:		cmp first, 0
			jnz notzero
			mov first, 1
			mov bx, 0
			mov si, 0
			mov di, 0
			
	@@shoov: mov numboard[bx][si], 0
			inc si
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
			mov cx, 0
			call TheThing
			
	notzero:	mov cx, topx
			mov dx, topy
			mov di, 1
			mov si, 1
			
	odhap1:	cmp di, 1
			jnz black2
			call paintwhite
			inc di
			jmp white2
	black2:	call paintblack
			dec di
	white2:	add cx, size2
			cmp cx, totcx
			jc odhap1
			cmp si, 1
			jnz y1
			inc si
			mov di, 2
			jmp y2
	y1:		dec si
			mov di, 1
	y2:		mov cx, topx
			add dx, size2
			cmp dx, totdx
			jc odhap1	

			mov di, place
			mov cx, topx
			mov dx, topy
			mov bx, num2
			mov si, 0
			
	show:	mov al, coor[di]
			mov ah, size1
			mul ah
			add cx, ax
			inc di
			inc place
			mov al, coor[di]
			mov ah, size1
			mul ah
			add dx, ax
			inc di
			inc place
			call paintqueen
			mov cx, topx
			mov dx, topy			
			inc si
			cmp si, bx
			jnz show

			jmp oncemore
	endd:	int 3
cseg	ends
end 	start












