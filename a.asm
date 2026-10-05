
a.out:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000770 <_start>:
     770: d503249f     	bti	j
     774: d280001d     	mov	x29, #0x0               // =0
     778: d280001e     	mov	x30, #0x0               // =0
     77c: 910003e0     	mov	x0, sp
     780: 14000001     	b	0x784 <_start_main>

0000000000000784 <_start_main>:
     784: d503233f     	paciasp
     788: d10103ff     	sub	sp, sp, #0x40
     78c: a9037bfd     	stp	x29, x30, [sp, #0x30]
     790: 9100c3fd     	add	x29, sp, #0x30
     794: 90000028     	adrp	x8, 0x4000 <strcmp@plt+0x3670>
     798: 90000029     	adrp	x9, 0x4000 <strcmp@plt+0x3670>
     79c: 6f00e400     	movi	v0.2d, #0000000000000000
     7a0: f9458908     	ldr	x8, [x8, #0xb10]
     7a4: f9458d29     	ldr	x9, [x9, #0xb18]
     7a8: cb080128     	sub	x8, x9, x8
     7ac: f100051f     	cmp	x8, #0x1
     7b0: ad0083e0     	stp	q0, q0, [sp, #0x10]
     7b4: 3d8003e0     	str	q0, [sp]
     7b8: 5400008b     	b.lt	0x7c8 <_start_main+0x44>
     7bc: d503201f     	nop
     7c0: 10041e08     	adr	x8, 0x8b80 <fini_array_with_sentinels>
     7c4: f9000be8     	str	x8, [sp, #0x10]
     7c8: 90000022     	adrp	x2, 0x4000 <strcmp@plt+0x3670>
     7cc: 910003e3     	mov	x3, sp
     7d0: aa1f03e1     	mov	x1, xzr
     7d4: f9459042     	ldr	x2, [x2, #0xb20]
     7d8: 94000056     	bl	0x930 <__libc_init@plt>

00000000000007dc <__atexit_handler_wrapper>:
     7dc: d503245f     	bti	c
     7e0: b4000060     	cbz	x0, 0x7ec <__atexit_handler_wrapper+0x10>
     7e4: aa0003f0     	mov	x16, x0
     7e8: d61f0200     	br	x16
     7ec: d65f03c0     	ret

00000000000007f0 <atexit>:
     7f0: d503245f     	bti	c
     7f4: aa0003e1     	mov	x1, x0
     7f8: d503201f     	nop
     7fc: 10ffff00     	adr	x0, 0x7dc <__atexit_handler_wrapper>
     800: d503201f     	nop
     804: 10041ca2     	adr	x2, 0x8b98 <__dso_handle>
     808: 1400004e     	b	0x940 <__cxa_atexit@plt>

000000000000080c <pthread_atfork>:
     80c: d503245f     	bti	c
     810: d503201f     	nop
     814: 10041c23     	adr	x3, 0x8b98 <__dso_handle>
     818: 1400004e     	b	0x950 <__register_atfork@plt>

000000000000081c <call_fini_array>:
     81c: d503233f     	paciasp
     820: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     824: a9014ff4     	stp	x20, x19, [sp, #0x10]
     828: 910003fd     	mov	x29, sp
     82c: 90000033     	adrp	x19, 0x4000 <strcmp@plt+0x3670>
     830: 90000028     	adrp	x8, 0x4000 <strcmp@plt+0x3670>
     834: f9458a73     	ldr	x19, [x19, #0xb10]
     838: f9458d08     	ldr	x8, [x8, #0xb18]
     83c: eb130108     	subs	x8, x8, x19
     840: 54000100     	b.eq	0x860 <call_fini_array+0x44>
     844: 9343fd08     	asr	x8, x8, #3
     848: 8b080e69     	add	x9, x19, x8, lsl #3
     84c: d1000514     	sub	x20, x8, #0x1
     850: f85f8129     	ldur	x9, [x9, #-0x8]
     854: d63f0120     	blr	x9
     858: aa1403e8     	mov	x8, x20
     85c: b5ffff74     	cbnz	x20, 0x848 <call_fini_array+0x2c>
     860: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     864: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     868: d50323bf     	autiasp
     86c: d65f03c0     	ret

0000000000000870 <sing>:
     870: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     874: 910003fd     	mov	x29, sp
     878: d503201f     	nop
     87c: 10ffec60     	adr	x0, 0x608 <strcspn+0x608>
     880: 94000038     	bl	0x960 <printf@plt>
     884: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     888: d65f03c0     	ret

000000000000088c <main>:
     88c: d100c3ff     	sub	sp, sp, #0x30
     890: a9027bfd     	stp	x29, x30, [sp, #0x20]
     894: 910083fd     	add	x29, sp, #0x20
     898: b81fc3bf     	stur	wzr, [x29, #-0x4]
     89c: 90000028     	adrp	x8, 0x4000 <strcmp@plt+0x3670>
     8a0: f9459508     	ldr	x8, [x8, #0xb28]
     8a4: f9400102     	ldr	x2, [x8]
     8a8: 910023e0     	add	x0, sp, #0x8
     8ac: f90003e0     	str	x0, [sp]
     8b0: 52800281     	mov	w1, #0x14               // =20
     8b4: 9400002f     	bl	0x970 <fgets@plt>
     8b8: f94003e0     	ldr	x0, [sp]
     8bc: 90000001     	adrp	x1, 0x0 <strcspn>
     8c0: 9118a021     	add	x1, x1, #0x628
     8c4: 9400002f     	bl	0x980 <strcspn@plt>
     8c8: aa0003e9     	mov	x9, x0
     8cc: f94003e0     	ldr	x0, [sp]
     8d0: aa0003e8     	mov	x8, x0
     8d4: 8b090108     	add	x8, x8, x9
     8d8: 3900011f     	strb	wzr, [x8]
     8dc: 90000001     	adrp	x1, 0x0 <strcspn>
     8e0: 9118a821     	add	x1, x1, #0x62a
     8e4: 9400002b     	bl	0x990 <strcmp@plt>
     8e8: 35000080     	cbnz	w0, 0x8f8 <main+0x6c>
     8ec: 14000001     	b	0x8f0 <main+0x64>
     8f0: 97ffffe0     	bl	0x870 <sing>
     8f4: 14000001     	b	0x8f8 <main+0x6c>
     8f8: 2a1f03e0     	mov	w0, wzr
     8fc: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     900: 9100c3ff     	add	sp, sp, #0x30
     904: d65f03c0     	ret

Disassembly of section .plt:

0000000000000910 <.plt>:
     910: a9bf7bf0     	stp	x16, x30, [sp, #-0x10]!
     914: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     918: f945a211     	ldr	x17, [x16, #0xb40]
     91c: 912d0210     	add	x16, x16, #0xb40
     920: d61f0220     	br	x17
     924: d503201f     	nop
     928: d503201f     	nop
     92c: d503201f     	nop

0000000000000930 <__libc_init@plt>:
     930: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     934: f945a611     	ldr	x17, [x16, #0xb48]
     938: 912d2210     	add	x16, x16, #0xb48
     93c: d61f0220     	br	x17

0000000000000940 <__cxa_atexit@plt>:
     940: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     944: f945aa11     	ldr	x17, [x16, #0xb50]
     948: 912d4210     	add	x16, x16, #0xb50
     94c: d61f0220     	br	x17

0000000000000950 <__register_atfork@plt>:
     950: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     954: f945ae11     	ldr	x17, [x16, #0xb58]
     958: 912d6210     	add	x16, x16, #0xb58
     95c: d61f0220     	br	x17

0000000000000960 <printf@plt>:
     960: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     964: f945b211     	ldr	x17, [x16, #0xb60]
     968: 912d8210     	add	x16, x16, #0xb60
     96c: d61f0220     	br	x17

0000000000000970 <fgets@plt>:
     970: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     974: f945b611     	ldr	x17, [x16, #0xb68]
     978: 912da210     	add	x16, x16, #0xb68
     97c: d61f0220     	br	x17

0000000000000980 <strcspn@plt>:
     980: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     984: f945ba11     	ldr	x17, [x16, #0xb70]
     988: 912dc210     	add	x16, x16, #0xb70
     98c: d61f0220     	br	x17

0000000000000990 <strcmp@plt>:
     990: 90000030     	adrp	x16, 0x4000 <strcmp@plt+0x3670>
     994: f945be11     	ldr	x17, [x16, #0xb78]
     998: 912de210     	add	x16, x16, #0xb78
     99c: d61f0220     	br	x17
