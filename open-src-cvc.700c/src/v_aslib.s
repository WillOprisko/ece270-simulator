	.file	"v_aslib.c"
	.text
	.p2align 4,,15
	.type	asl_loc_stmt_assign_to_accum_1w_id, @function
asl_loc_stmt_assign_to_accum_1w_id:
.LFB262:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	(%edx), %esi
	movl	132(%eax), %edi
	movl	%ecx, (%esp)
	movl	12(%edx), %ecx
	testl	%esi, %esi
	leal	0(,%edi,4), %ebx
	movl	(%ecx,%edi,4), %ecx
	jne	.L2
	movl	16(%edx), %esi
	addl	36(%edx), %ebx
	testl	%ecx, %ecx
	movl	(%esi,%edi,4), %esi
	je	.L3
.L4:
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	.L11
.L7:
	movl	(%esp), %edi
	movl	(%esi), %edx
	movl	24(%esp), %ecx
	orl	4(%esi), %ecx
	xorl	%edi, %edx
	orl	%edx, %ecx
	movl	%ecx, 4(%esi)
	orl	%edi, %ecx
	movl	%ecx, (%esi)
.L8:
	orb	$4, 6(%eax)
	movl	$1, (%ebx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	movl	20(%edx), %esi
	addl	40(%edx), %ebx
	testl	%ecx, %ecx
	movl	(%esi,%edi,4), %esi
	jne	.L4
	movl	32(%edx), %ecx
	movl	(%ecx,%edi,4), %ecx
.L6:
	movl	24(%edx), %edx
	movl	__masktab@GOT(%ebp), %ebp
	movl	(%edx,%edi,4), %edi
	movl	8(%eax), %edx
	andl	$31, %edx
	movl	0(%ebp,%edx,4), %edx
	andl	%edx, (%edi)
	andl	%edx, (%ecx)
	movl	(%ebx), %edx
	testl	%edx, %edx
	jne	.L7
.L11:
	movl	(%esp), %edi
	movl	%edi, (%esi)
	movl	24(%esp), %edi
	movl	%edi, 4(%esi)
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L3:
	movl	28(%edx), %ecx
	movl	(%ecx,%edi,4), %ecx
	jmp	.L6
	.cfi_endproc
.LFE262:
	.size	asl_loc_stmt_assign_to_accum_1w_id, .-asl_loc_stmt_assign_to_accum_1w_id
	.p2align 4,,15
	.type	asl_loc_combine_xprop_accum, @function
asl_loc_combine_xprop_accum:
.LFB272:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 4(%esp)
	movl	32(%esp), %esi
	leal	31(%esi), %ebx
	sarl	$5, %ebx
	leal	0(,%ebx,4), %edi
	testl	%ebx, %ebx
	movl	%ebx, (%esp)
	movl	%edi, 8(%esp)
	leal	(%eax,%edi), %ebp
	jle	.L13
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L14:
	movl	0(%ebp,%edi,4), %ebx
	movl	(%eax,%edi,4), %esi
	orl	(%ecx,%edi,4), %ebx
	xorl	(%edx,%edi,4), %esi
	orl	%esi, %ebx
	movl	%ebx, 0(%ebp,%edi,4)
	orl	(%edx,%edi,4), %ebx
	movl	%ebx, (%eax,%edi,4)
	addl	$1, %edi
	cmpl	%edi, (%esp)
	jne	.L14
.L13:
	movl	4(%esp), %esi
	movl	8(%esp), %edx
	movl	32(%esp), %ecx
	movl	__masktab@GOT(%esi), %ebx
	subl	$4, %edx
	andl	$31, %ecx
	movl	(%ebx,%ecx,4), %ecx
	andl	%ecx, (%eax,%edx)
	andl	%ecx, 0(%ebp,%edx)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE272:
	.size	asl_loc_combine_xprop_accum, .-asl_loc_combine_xprop_accum
	.p2align 4,,15
	.type	asl_loc_chg_vec_lhsbsel, @function
asl_loc_chg_vec_lhsbsel:
.LFB464:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ecx
	andl	$1, %esi
	sarl	$5, %edx
	andl	$31, %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	sall	$2, %edx
	sall	%cl, %esi
	movl	$1, %ebx
	movl	%esi, (%esp)
	leal	(%eax,%edx), %esi
	sall	%cl, %ebx
	movl	(%esi), %ebp
	movl	%esi, 4(%esp)
	xorl	%esi, %esi
	movl	%ebp, %edi
	andl	%ebx, %edi
	cmpl	(%esp), %edi
	je	.L18
	movl	%ebx, %esi
	movl	4(%esp), %edi
	notl	%esi
	andl	%ebp, %esi
	orl	(%esp), %esi
	movl	%esi, (%edi)
	movl	$1, %esi
.L18:
	movl	28(%esp), %edi
	andl	$1, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	32(%esp), %edi
	addl	$31, %edi
	sarl	$5, %edi
	leal	(%edx,%edi,4), %edx
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	%edx, %edi
	andl	%ebx, %edi
	cmpl	%ecx, %edi
	je	.L17
	notl	%ebx
	movl	$1, %esi
	andl	%edx, %ebx
	orl	%ecx, %ebx
	movl	%ebx, (%eax)
.L17:
	addl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE464:
	.size	asl_loc_chg_vec_lhsbsel, .-asl_loc_chg_vec_lhsbsel
	.p2align 4,,15
	.type	asl_loc_stmt_assign_to_accum_wide_id, @function
asl_loc_stmt_assign_to_accum_wide_id:
.LFB264:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	(%edx), %ebp
	movl	132(%eax), %eax
	movl	%ecx, (%esp)
	movl	8(%esi), %ecx
	leal	0(,%eax,4), %edi
	addl	$31, %ecx
	sarl	$5, %ecx
	testl	%ebp, %ebp
	movl	%ecx, 4(%esp)
	movl	12(%edx), %ecx
	movl	(%ecx,%eax,4), %ecx
	jne	.L24
	movl	16(%edx), %ebp
	addl	36(%edx), %edi
	testl	%ecx, %ecx
	movl	0(%ebp,%eax,4), %ebp
	je	.L25
.L26:
	movl	(%edi), %eax
	testl	%eax, %eax
	je	.L32
.L29:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	8(%esi)
	.cfi_def_cfa_offset 64
	movl	%ebp, %eax
	movl	64(%esp), %ecx
	movl	16(%esp), %edx
	call	asl_loc_combine_xprop_accum
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L30:
	orb	$4, 6(%esi)
	movl	$1, (%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	movl	20(%edx), %ebp
	addl	40(%edx), %edi
	testl	%ecx, %ecx
	movl	0(%ebp,%eax,4), %ebp
	jne	.L26
	movl	32(%edx), %ecx
	movl	(%ecx,%eax,4), %ecx
	movl	%ecx, 8(%esp)
.L28:
	movl	4(%esp), %ecx
	movl	24(%edx), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	sall	$2, %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 56
	movl	%ecx, 20(%esp)
	pushl	$255
	.cfi_def_cfa_offset 60
	pushl	(%edx,%eax,4)
	.cfi_def_cfa_offset 64
	call	memset@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 52
	movl	16(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	$255
	.cfi_def_cfa_offset 60
	pushl	20(%esp)
	.cfi_def_cfa_offset 64
	call	memset@PLT
	movl	(%edi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L29
.L32:
	movl	4(%esp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	sall	$2, %edx
	pushl	%edx
	.cfi_def_cfa_offset 56
	movl	%edx, 12(%esp)
	pushl	8(%esp)
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	memcpy@PLT
	movl	20(%esp), %edx
	addl	$12, %esp
	.cfi_def_cfa_offset 52
	addl	%edx, %ebp
	pushl	%edx
	.cfi_def_cfa_offset 56
	pushl	56(%esp)
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L25:
	movl	28(%edx), %ecx
	movl	(%ecx,%eax,4), %ecx
	movl	%ecx, 8(%esp)
	jmp	.L28
	.cfi_endproc
.LFE264:
	.size	asl_loc_stmt_assign_to_accum_wide_id, .-asl_loc_stmt_assign_to_accum_wide_id
	.p2align 4,,15
	.type	asl_loc_get_new_event, @function
asl_loc_get_new_event:
.LFB163:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	__free_tev_ndx@GOT(%ebx), %edx
	movl	(%edx), %eax
	cmpl	$1, %eax
	jle	.L34
	movl	__free_tevs@GOT(%ebx), %ecx
	subl	$1, %eax
	movl	%eax, (%edx)
	movl	(%ecx), %ecx
	movl	(%ecx,%eax,4), %eax
.L35:
	movl	12(%esi), %edx
	movl	%edx, 12(%eax)
	movl	32(%esi), %edx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	40(%esi), %ecx
	movl	%edx, 32(%eax)
	movl	36(%esi), %edx
	movl	$1, 8(%eax)
	movl	%ecx, 40(%eax)
	movl	%edx, 36(%eax)
	movl	__process_next_event_free_enterp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 16(%eax)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$60
	.cfi_def_cfa_offset 32
	call	__my_malloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	jmp	.L35
	.cfi_endproc
.LFE163:
	.size	asl_loc_get_new_event, .-asl_loc_get_new_event
	.p2align 4,,15
	.type	asl_loc_get_new_event_nb, @function
asl_loc_get_new_event_nb:
.LFB164:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	__free_tev_ndx@GOT(%ebx), %edx
	movl	(%edx), %eax
	cmpl	$1, %eax
	jle	.L38
	movl	__free_tevs@GOT(%ebx), %ecx
	subl	$1, %eax
	movl	%eax, (%edx)
	movl	(%ecx), %ecx
	movl	(%ecx,%eax,4), %eax
.L39:
	movl	16(%esi), %edx
	movl	40(%esi), %ebx
	movl	36(%esi), %ecx
	movl	%edx, 12(%eax)
	movl	32(%esi), %edx
	movl	%ecx, 36(%eax)
	movl	%ebx, 40(%eax)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	%edx, 32(%eax)
	movl	$1, 8(%eax)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$60
	.cfi_def_cfa_offset 32
	call	__my_malloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	jmp	.L39
	.cfi_endproc
.LFE164:
	.size	asl_loc_get_new_event_nb, .-asl_loc_get_new_event_nb
	.p2align 4,,15
	.type	asl_loc_get_new_nbmem_event, @function
asl_loc_get_new_nbmem_event:
.LFB165:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %edi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	__free_tev_ndx@GOT(%ebx), %edx
	movl	(%edx), %eax
	cmpl	$1, %eax
	jle	.L42
	movl	__free_tevs@GOT(%ebx), %ecx
	subl	$1, %eax
	movl	%eax, (%edx)
	movl	(%ecx), %ecx
	movl	(%ecx,%eax,4), %esi
.L43:
	movl	16(%edi), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 12(%esi)
	movl	32(%edi), %eax
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	%eax, 32(%esi)
	pushl	%ebp
	.cfi_def_cfa_offset 48
	call	__my_malloc@PLT
	movl	40(%edi), %edx
	movl	%eax, 4(%esi)
	movl	36(%edi), %eax
	movl	$1, 8(%esi)
	movl	%ebp, 52(%esi)
	movl	%edx, 40(%esi)
	movl	%eax, 36(%esi)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	$60
	.cfi_def_cfa_offset 48
	call	__my_malloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %esi
	jmp	.L43
	.cfi_endproc
.LFE165:
	.size	asl_loc_get_new_nbmem_event, .-asl_loc_get_new_nbmem_event
	.p2align 4,,15
	.type	asl_loc_get_new_thread_event, @function
asl_loc_get_new_thread_event:
.LFB166:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__free_tev_ndx@GOT(%ebx), %edx
	movl	(%edx), %eax
	cmpl	$1, %eax
	jle	.L46
	movl	__free_tevs@GOT(%ebx), %ecx
	subl	$1, %eax
	movl	%eax, (%edx)
	movl	(%ecx), %ecx
	movl	(%ecx,%eax,4), %eax
.L47:
	movl	__process_compiled_thrd_ev_enterp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 12(%eax)
	movl	__simtime@GOT(%ebx), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	movl	$1, 8(%eax)
	movl	$0, 4(%eax)
	movl	%edx, 24(%eax)
	movl	__idp@GOT(%ebx), %edx
	movl	%ecx, 28(%eax)
	movl	(%edx), %edx
	movl	$0, (%eax)
	movl	%edx, 32(%eax)
	movl	__process_next_event_free_enterp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 16(%eax)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$60
	.cfi_def_cfa_offset 32
	call	__my_malloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	jmp	.L47
	.cfi_endproc
.LFE166:
	.size	asl_loc_get_new_thread_event, .-asl_loc_get_new_thread_event
	.p2align 4,,15
	.type	asl_loc_add_new_heap_time, @function
asl_loc_add_new_heap_time:
.LFB492:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %edi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__heap_size@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%eax, 24(%esp)
	leal	0(,%ecx,4), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	__heap@GOT(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	(%eax), %esi
	movl	__heap_maxsize@GOT(%ebx), %eax
	cmpl	(%eax), %ecx
	je	.L50
	movl	__free_heap_ndx@GOT(%ebx), %edx
	movl	(%edx), %eax
	movl	%eax, 20(%esp)
	movl	__free_heap@GOT(%ebx), %eax
	movl	(%eax), %ecx
.L51:
	movl	20(%esp), %eax
	subl	$1, %eax
	movl	%eax, (%edx)
	movl	(%ecx,%eax,4), %eax
	movl	__time_hash@GOT(%ebx), %edx
	movl	24(%ebp), %ecx
	movl	$0, 48(%ebp)
	movl	%eax, 20(%ebp)
	movl	28(%ebp), %ebp
	movl	%edi, (%eax)
	movl	%ecx, 4(%eax)
	movl	$0, 28(%eax)
	movl	%ecx, 20(%esp)
	movl	%ebp, 8(%eax)
	movl	%eax, (%edx,%edi,4)
	movl	16(%esp), %edi
	cmpl	$1, %edi
	jle	.L55
	sarl	%edi
	movl	(%esi,%edi,4), %ecx
	movl	%edi, %edx
	cmpl	8(%ecx), %ebp
	ja	.L55
	jb	.L60
	movl	20(%esp), %edi
	cmpl	4(%ecx), %edi
	ja	.L55
.L60:
	movl	16(%esp), %edi
	.p2align 4,,10
	.p2align 3
.L57:
	movl	%ecx, (%esi,%edi,4)
	leal	0(,%edx,4), %edi
	cmpl	$1, %edx
	movl	%edi, 12(%esp)
	je	.L55
	movl	%edx, %ebx
	movl	%edx, %edi
	sarl	%ebx
	movl	(%esi,%ebx,4), %ecx
	cmpl	%ebp, 8(%ecx)
	jb	.L55
	ja	.L61
	movl	20(%esp), %edx
	cmpl	%edx, 4(%ecx)
	jnb	.L61
.L55:
	movl	16(%esp), %edx
	movl	24(%esp), %edi
	addl	$1, %edx
	movl	%edx, (%edi)
	movl	12(%esp), %edi
	movl	%eax, (%esi,%edi)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	.cfi_restore_state
	movl	%ebx, %edx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L50:
	movl	16(%esp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movl	%edx, %ecx
	shrl	%ecx
	addl	%ecx, %edx
	movl	%ecx, 20(%esp)
	movl	%edx, (%eax)
	sall	$2, %edx
	pushl	%edx
	.cfi_def_cfa_offset 72
	movl	%edx, 28(%esp)
	pushl	20(%esp)
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__my_realloc@PLT
	movl	44(%esp), %esi
	movl	%eax, (%esi)
	movl	__free_heap@GOT(%ebx), %esi
	popl	%eax
	.cfi_def_cfa_offset 76
	popl	%edx
	.cfi_def_cfa_offset 72
	pushl	20(%esp)
	.cfi_def_cfa_offset 76
	pushl	(%esi)
	.cfi_def_cfa_offset 80
	call	__my_free@PLT
	movl	36(%esp), %edx
	movl	%edx, (%esp)
	call	__my_malloc@PLT
	movl	%eax, (%esi)
	movl	32(%esp), %eax
	sall	$5, %eax
	movl	%eax, (%esp)
	call	__my_malloc@PLT
	movl	32(%esp), %ecx
	leal	1(%ecx), %edx
	movl	(%esi), %ecx
	movl	%edx, 36(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	cmpl	$1, %edx
	je	.L54
	movl	16(%esp), %esi
	leal	4(%ecx), %edx
	leal	(%edx,%esi,4), %esi
	.p2align 4,,10
	.p2align 3
.L53:
	movl	%eax, (%edx)
	addl	$4, %edx
	addl	$32, %eax
	cmpl	%esi, %edx
	jne	.L53
.L54:
	movl	28(%esp), %eax
	movl	__free_heap_ndx@GOT(%ebx), %edx
	movl	(%eax), %esi
	movl	24(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	sall	$2, %eax
	movl	%eax, 12(%esp)
	jmp	.L51
	.cfi_endproc
.LFE492:
	.size	asl_loc_add_new_heap_time, .-asl_loc_add_new_heap_time
	.p2align 4,,15
	.type	asl_loc_conflict_list, @function
asl_loc_conflict_list:
.LFB487:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%edx, 4(%esp)
	movl	28(%eax), %edx
	cmpl	%edx, 8(%ecx)
	movl	%esi, 12(%esp)
	movl	24(%eax), %esi
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	jb	.L67
	jbe	.L88
.L83:
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	movl	(%esi), %edx
	movl	%edi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 28(%eax)
	movl	%edi, 16(%eax)
	movl	%edi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	.cfi_restore_state
	cmpl	%esi, 4(%ecx)
	ja	.L83
.L67:
	movl	4(%esp), %eax
	movl	28(%eax), %esi
	testl	%esi, %esi
	je	.L79
	movl	8(%esi), %ebx
	movl	(%esp), %ebp
	movl	4(%esi), %edi
	movl	%ebp, %eax
	movl	%ebx, %ecx
	xorl	%edi, %eax
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.L80
	cmpl	%edx, %ebx
	ja	.L81
	jnb	.L89
.L74:
	movl	28(%esi), %ebx
	testl	%ebx, %ebx
	je	.L70
	.p2align 4,,10
	.p2align 3
.L78:
	movl	8(%ebx), %eax
	movl	4(%ebx), %ecx
	movl	(%esp), %edi
	movl	%eax, %ebp
	xorl	%ecx, %edi
	xorl	%edx, %ebp
	orl	%edi, %ebp
	je	.L71
	cmpl	%edx, %eax
	jb	.L82
	jbe	.L90
.L72:
	movl	4(%esp), %edi
	movl	8(%esp), %ebp
	movl	(%edi), %edx
	movl	%ebp, %eax
	call	asl_loc_add_new_heap_time
	movl	12(%esp), %ecx
	movl	(%edi), %edx
	movl	__time_hash@GOT(%ecx), %ecx
	movl	%edi, (%ecx,%edx,4)
	movl	%eax, 28(%esi)
	movl	%ebx, 28(%eax)
	movl	%ebp, 16(%eax)
	movl	%ebp, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
.L66:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	.cfi_restore_state
	cmpl	(%esp), %ecx
	ja	.L72
.L82:
	movl	%ebx, %esi
	movl	28(%esi), %ebx
	testl	%ebx, %ebx
	jne	.L78
.L70:
	movl	4(%esp), %edi
	movl	8(%esp), %ebx
	movl	(%edi), %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	12(%esp), %edx
	movl	(%edi), %ecx
	movl	__time_hash@GOT(%edx), %edx
	movl	%edi, (%edx,%ecx,4)
	movl	%eax, 28(%esi)
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L80:
	.cfi_restore_state
	movl	%esi, %ebx
	.p2align 4,,10
	.p2align 3
.L71:
	movl	8(%esp), %eax
	movl	%ebx, 20(%eax)
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	.L91
	movl	8(%esp), %edx
	movl	%edx, 44(%eax)
	movl	%eax, 48(%edx)
	movl	%edx, 16(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	.cfi_restore_state
	cmpl	%ebp, %edi
	jbe	.L74
.L81:
	movl	%esi, %ebx
	movl	4(%esp), %esi
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L91:
	movl	8(%esp), %eax
	movl	%eax, 16(%ebx)
	movl	%eax, 12(%ebx)
	jmp	.L66
.L79:
	movl	4(%esp), %esi
	jmp	.L70
	.cfi_endproc
.LFE487:
	.size	asl_loc_conflict_list, .-asl_loc_conflict_list
	.p2align 4,,15
	.type	asl_loc_nb_conflict_list, @function
asl_loc_nb_conflict_list:
.LFB491:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%edx, 4(%esp)
	movl	28(%eax), %edx
	cmpl	%edx, 8(%ecx)
	movl	%esi, 8(%esp)
	movl	24(%eax), %esi
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	jb	.L93
	jbe	.L114
.L109:
	movl	4(%esp), %esi
	movl	12(%esp), %edi
	movl	(%esi), %edx
	movl	%edi, %eax
	call	asl_loc_add_new_heap_time
	movl	8(%esp), %edx
	movl	%esi, 28(%eax)
	movl	%edi, 24(%eax)
	movl	%edi, 20(%eax)
	movl	__last_nb_hp@GOT(%edx), %edx
	movl	%eax, (%edx)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	.cfi_restore_state
	cmpl	%esi, 4(%ecx)
	ja	.L109
.L93:
	movl	4(%esp), %eax
	movl	28(%eax), %esi
	testl	%esi, %esi
	je	.L105
	movl	8(%esi), %ebx
	movl	(%esp), %ebp
	movl	4(%esi), %edi
	movl	%ebp, %eax
	movl	%ebx, %ecx
	xorl	%edi, %eax
	xorl	%edx, %ecx
	orl	%eax, %ecx
	je	.L106
	cmpl	%edx, %ebx
	ja	.L107
	jnb	.L115
.L100:
	movl	28(%esi), %ebx
	testl	%ebx, %ebx
	je	.L96
	.p2align 4,,10
	.p2align 3
.L104:
	movl	8(%ebx), %eax
	movl	4(%ebx), %ecx
	movl	(%esp), %edi
	movl	%eax, %ebp
	xorl	%ecx, %edi
	xorl	%edx, %ebp
	orl	%edi, %ebp
	je	.L97
	cmpl	%edx, %eax
	jb	.L108
	jbe	.L116
.L98:
	movl	4(%esp), %edi
	movl	12(%esp), %ebp
	movl	(%edi), %edx
	movl	%ebp, %eax
	call	asl_loc_add_new_heap_time
	movl	8(%esp), %edx
	movl	(%edi), %ecx
	movl	__time_hash@GOT(%edx), %edx
	movl	%edi, (%edx,%ecx,4)
	movl	8(%esp), %edx
	movl	%eax, 28(%esi)
	movl	%ebx, 28(%eax)
	movl	%ebp, 24(%eax)
	movl	%ebp, 20(%eax)
	movl	__last_nb_hp@GOT(%edx), %edx
	movl	%eax, (%edx)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
.L92:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	.cfi_restore_state
	cmpl	(%esp), %ecx
	ja	.L98
.L108:
	movl	%ebx, %esi
	movl	28(%esi), %ebx
	testl	%ebx, %ebx
	jne	.L104
.L96:
	movl	4(%esp), %edi
	movl	12(%esp), %ebx
	movl	(%edi), %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	8(%esp), %ebp
	movl	(%edi), %ecx
	movl	__time_hash@GOT(%ebp), %edx
	movl	%edi, (%edx,%ecx,4)
	movl	__last_nb_hp@GOT(%ebp), %edx
	movl	%eax, 28(%esi)
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	%eax, (%edx)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L106:
	.cfi_restore_state
	movl	%esi, %ebx
	.p2align 4,,10
	.p2align 3
.L97:
	movl	8(%esp), %edx
	movl	24(%ebx), %eax
	movl	__last_nb_hp@GOT(%edx), %edx
	testl	%eax, %eax
	movl	%ebx, (%edx)
	je	.L117
	movl	12(%esp), %edx
	movl	%edx, 44(%eax)
	movl	%eax, 48(%edx)
	movl	%edx, 24(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L115:
	.cfi_restore_state
	cmpl	%ebp, %edi
	jbe	.L100
.L107:
	movl	%esi, %ebx
	movl	4(%esp), %esi
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L117:
	movl	12(%esp), %eax
	movl	%eax, 24(%ebx)
	movl	%eax, 20(%ebx)
	jmp	.L92
.L105:
	movl	4(%esp), %esi
	jmp	.L96
	.cfi_endproc
.LFE491:
	.size	asl_loc_nb_conflict_list, .-asl_loc_nb_conflict_list
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"attempted deassign of reg %s in instance %s failed - not assigned"
	.text
	.p2align 4,,15
	.type	asl_loc_do_qc_deassign, @function
asl_loc_do_qc_deassign:
.LFB223:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movzwl	(%eax), %eax
	andw	$1023, %ax
	cmpw	$85, %ax
	je	.L119
	movl	__idp@GOT(%ebx), %ebp
	movl	$0, 4(%esp)
	movl	0(%ebp), %eax
.L120:
	movl	12(%edi), %ecx
	movl	(%eax), %eax
	movl	12(%ecx), %ecx
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	movl	68(%ecx), %ecx
	movl	%eax, 8(%esp)
	leal	24(%ecx,%eax), %esi
	movzbl	(%esi), %eax
	testb	$3, %al
	je	.L135
	movl	%eax, %edi
	andl	$-2, %edi
	testb	$2, %al
	movl	%edi, %edx
	movb	%dl, (%esi)
	jne	.L123
	movl	20(%esi), %eax
	testl	%eax, %eax
	je	.L123
	movl	%ecx, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__dcelst_off@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %ecx
.L123:
	movl	__assign_active@GOT(%ebx), %eax
	andb	$-3, (%esi)
	movl	$0, 20(%esi)
	movl	$0, (%eax)
	movl	8(%esp), %eax
	testb	$1, (%ecx,%eax)
	jne	.L136
.L122:
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	.L118
	movl	%eax, 0(%ebp)
.L118:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	.cfi_restore_state
	movl	__force_active@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L135:
	movl	__xs@GOT(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	(%eax)
	.cfi_def_cfa_offset 64
	call	__msg2_cur_blditree@PLT
	movl	%eax, %esi
	movl	%edi, (%esp)
	call	__to_idnam@PLT
	pushl	%esi
	.cfi_def_cfa_offset 68
	pushl	%eax
	.cfi_def_cfa_offset 72
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	$462
	.cfi_def_cfa_offset 80
	call	__sgfinform@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L119:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	16(%edi)
	.cfi_def_cfa_offset 64
	call	__xmrget_refgrp_to_targ@PLT
	movl	__idp@GOT(%ebx), %ebp
	movl	0(%ebp), %edx
	movl	%eax, 0(%ebp)
	movl	%edx, 20(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L120
	.cfi_endproc
.LFE223:
	.size	asl_loc_do_qc_deassign, .-asl_loc_do_qc_deassign
	.p2align 4,,15
	.type	asl_loc_set_restore_xprop_accum_block, @function
asl_loc_set_restore_xprop_accum_block:
.LFB270:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	4(%eax), %edi
	andb	$-33, 8(%eax)
	movl	%esi, 24(%esp)
	testl	%edi, %edi
	jle	.L137
	movl	%eax, %edi
	movl	__masktab@GOT(%esi), %eax
	xorl	%ebp, %ebp
	movl	%edx, 32(%esp)
	movl	%ebp, %esi
	movl	%eax, 52(%esp)
	.p2align 4,,10
	.p2align 3
.L162:
	leal	0(,%esi,4), %eax
	movl	%eax, 20(%esp)
	movl	44(%edi), %eax
	movl	(%eax,%esi,4), %ecx
	movl	8(%ecx), %eax
	movl	128(%ecx), %edx
	movl	%ecx, 4(%esp)
	movl	16(%edi), %ecx
	leal	31(%eax), %ebx
	movl	%edx, 16(%esp)
	movl	20(%edi), %edx
	movl	(%ecx,%esi,4), %ecx
	sarl	$5, %ebx
	movl	%ebx, 12(%esp)
	movl	(%edi), %ebx
	movl	(%edx,%esi,4), %edx
	movl	%ecx, 8(%esp)
	testl	%ebx, %ebx
	je	.L139
	movl	%edx, 8(%esp)
	movl	%ecx, %edx
.L139:
	movl	32(%esp), %ecx
	testl	%ecx, %ecx
	jne	.L208
.L140:
	movl	12(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 100
	sall	$3, %eax
	movl	%eax, 32(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 104
	pushl	16(%esp)
	.cfi_def_cfa_offset 108
	movl	28(%esp), %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	memcpy@PLT
	movl	12(%edi), %eax
	leal	0(,%esi,4), %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	movl	(%eax,%ebx), %eax
	testl	%eax, %eax
	je	.L141
	movl	36(%edi), %edx
	movl	40(%edi), %ecx
	movl	%ebx, %eax
	movl	(%ecx,%eax), %eax
	movl	(%edx,%ebx), %ebx
	cmpl	%eax, %ebx
	movl	%ebx, 40(%esp)
	movl	%eax, 36(%esp)
	je	.L142
	movl	32(%esp), %eax
	testl	%eax, %eax
	jne	.L209
.L142:
	movl	56(%edi), %eax
	movl	20(%esp), %ebx
	addl	52(%edi), %ebx
	testl	%eax, %eax
	je	.L147
	testb	$32, 8(%eax)
	je	.L147
	movl	(%edi), %ebp
	testl	%ebp, %ebp
	movl	40(%esp), %ebp
	cmovne	36(%esp), %ebp
	testl	%ebp, %ebp
	movl	%ebp, 36(%esp)
	je	.L147
	movl	(%ebx), %ecx
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	leal	0(,%ecx,4), %edx
	jne	.L149
	addl	36(%eax), %edx
	movl	16(%eax), %eax
	orl	%ebp, (%edx)
.L206:
	subl	$4, %esp
	.cfi_def_cfa_offset 100
	pushl	32(%esp)
	.cfi_def_cfa_offset 104
	pushl	16(%esp)
	.cfi_def_cfa_offset 108
	pushl	(%eax,%ecx,4)
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	memcpy@PLT
	movl	36(%esp), %ebx
	addl	52(%edi), %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	movl	36(%edi), %edx
	movl	40(%edi), %ecx
	.p2align 4,,10
	.p2align 3
.L147:
	movl	20(%esp), %eax
	movl	$-1, (%edx,%eax)
	movl	$-1, (%ecx,%eax)
	movl	(%ebx), %ecx
.L150:
	addl	$1, %esi
	cmpl	%esi, 4(%edi)
	movl	4(%esp), %eax
	movl	%ecx, 132(%eax)
	jg	.L162
.L137:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	.cfi_restore_state
	movl	28(%edi), %eax
	leal	0(,%esi,4), %ecx
	movl	32(%esp), %ebx
	movl	(%eax,%ecx), %edx
	movl	32(%edi), %eax
	testl	%ebx, %ebx
	movl	(%eax,%ecx), %eax
	movl	%eax, 28(%esp)
	jne	.L210
.L151:
	movl	56(%edi), %ebx
	movl	52(%edi), %eax
	movl	20(%esp), %ecx
	testl	%ebx, %ebx
	movl	(%eax,%ecx), %ecx
	je	.L150
	testb	$32, 8(%ebx)
	je	.L150
	movl	(%edi), %ebp
	movl	24(%edi), %eax
	testl	%ebp, %ebp
	cmovne	28(%esp), %edx
	movl	%edx, 28(%esp)
	movl	20(%esp), %edx
	movl	(%eax,%edx), %eax
	movl	24(%ebx), %edx
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 36(%esp)
	movl	4(%esp), %edx
	movl	8(%edx), %ebp
	movl	(%ebx), %edx
	testl	%edx, %edx
	jne	.L155
	movl	28(%ebx), %edx
	testl	%ebp, %ebp
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 40(%esp)
	movl	16(%ebx), %edx
	movl	(%edx,%ecx,4), %ebx
	movl	%ebx, 44(%esp)
	jle	.L156
	movl	12(%esp), %ecx
	xorl	%ebp, %ebp
	movl	%esi, 56(%esp)
	movl	%edi, 60(%esp)
	movl	%eax, %esi
	movl	%ebp, %edi
	movl	4(%esp), %eax
	leal	(%ebx,%ecx,4), %ecx
	movl	%ecx, 48(%esp)
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L157:
	addl	$1, %edi
	cmpl	%edi, 8(%eax)
	jle	.L207
.L158:
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$5, %ebx
	andl	$31, %ecx
	movl	(%esi,%ebx,4), %ebp
	btl	%ecx, %ebp
	jnc	.L157
	movl	%eax, 16(%esp)
	movl	12(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 100
	leal	(%ebx,%eax), %ebp
	movl	12(%esp), %eax
	movl	(%eax,%ebx,4), %ebx
	movl	(%eax,%ebp,4), %ebp
	shrl	%cl, %ebx
	shrl	%cl, %ebp
	andl	$1, %ebx
	andl	$1, %ebp
	pushl	%ebx
	.cfi_def_cfa_offset 104
	pushl	%edi
	.cfi_def_cfa_offset 108
	pushl	56(%esp)
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 100
	pushl	%ebp
	.cfi_def_cfa_offset 104
	pushl	%edi
	.cfi_def_cfa_offset 108
	addl	$1, %edi
	pushl	60(%esp)
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	movl	16(%esp), %eax
	cmpl	%edi, 8(%eax)
	jg	.L158
	.p2align 4,,10
	.p2align 3
.L207:
	movl	60(%esp), %edi
	movl	20(%esp), %ecx
	movl	%esi, %eax
	movl	56(%esp), %esi
	movl	52(%edi), %edx
	movl	(%edx,%ecx), %ecx
.L156:
	movl	12(%esp), %edx
	testl	%edx, %edx
	jle	.L150
	movl	%esi, 8(%esp)
	movl	40(%esp), %ebx
	xorl	%edx, %edx
	movl	28(%esp), %ebp
	movl	36(%esp), %esi
	movl	%ecx, 16(%esp)
	movl	12(%esp), %ecx
	movl	%edi, 12(%esp)
	.p2align 4,,10
	.p2align 3
.L161:
	movl	0(%ebp,%edx,4), %edi
	orl	%edi, (%ebx,%edx,4)
	movl	(%eax,%edx,4), %edi
	orl	%edi, (%esi,%edx,4)
	addl	$1, %edx
	cmpl	%edx, %ecx
	jne	.L161
	movl	8(%esp), %esi
	movl	16(%esp), %ecx
	movl	12(%esp), %edi
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L208:
	movl	12(%esp), %ebx
	pushl	%eax
	.cfi_def_cfa_offset 100
	movl	12(%esp), %eax
	leal	(%edx,%ebx,4), %ecx
	call	asl_loc_combine_xprop_accum
	popl	%eax
	.cfi_def_cfa_offset 96
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L210:
	movl	4(%esp), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jle	.L151
	movl	16(%esp), %eax
	movl	12(%esp), %ebx
	xorl	%ebp, %ebp
	movl	%edi, 44(%esp)
	movl	28(%esp), %edi
	movl	%esi, 40(%esp)
	movl	%edx, %esi
	leal	(%eax,%ebx,4), %eax
	movl	%eax, 36(%esp)
	.p2align 4,,10
	.p2align 3
.L153:
	movl	%ebp, %eax
	movl	%ebp, %ecx
	sarl	$5, %eax
	andl	$31, %ecx
	movl	(%esi,%eax,4), %ebx
	movl	(%edi,%eax,4), %eax
	shrl	%cl, %ebx
	shrl	%cl, %eax
	andl	$1, %ebx
	andl	$1, %eax
	cmpl	%eax, %ebx
	je	.L152
	subl	$4, %esp
	.cfi_def_cfa_offset 100
	pushl	$1
	.cfi_def_cfa_offset 104
	pushl	%ebp
	.cfi_def_cfa_offset 108
	pushl	28(%esp)
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 100
	pushl	$1
	.cfi_def_cfa_offset 104
	pushl	%ebp
	.cfi_def_cfa_offset 108
	pushl	48(%esp)
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L152:
	movl	4(%esp), %eax
	addl	$1, %ebp
	cmpl	%ebp, 8(%eax)
	jg	.L153
	movl	%esi, %edx
	movl	44(%esp), %edi
	movl	40(%esp), %esi
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L209:
	movl	4(%esp), %ebx
	movl	%ebp, 16(%esp)
	movl	8(%ebx), %eax
	leal	31(%eax), %ebx
	andl	$31, %eax
	sarl	$5, %ebx
	movl	%ebx, 44(%esp)
	leal	-4(,%ebx,4), %ebx
	addl	%ebx, %ebp
	movl	%ebp, 56(%esp)
	movl	52(%esp), %ebp
	movl	0(%ebp,%eax,4), %ebp
	movl	44(%esp), %eax
	testl	%eax, %eax
	movl	%ebp, 48(%esp)
	jle	.L143
	movl	16(%esp), %eax
	movl	28(%esp), %ebp
	leal	4(%eax,%ebx), %ebx
	.p2align 4,,10
	.p2align 3
.L144:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %ebx
	jne	.L144
	movl	56(%esp), %eax
	movl	%ebp, 28(%esp)
	movl	48(%esp), %ebx
	movl	16(%esp), %ebp
	andl	%ebx, (%eax)
	movl	12(%esp), %ebx
	leal	0(%ebp,%ebx,4), %eax
	movl	%eax, 56(%esp)
	movl	44(%esp), %eax
	movl	%edx, 44(%esp)
	addl	%ebx, %eax
	movl	%eax, %ebx
	leal	0(%ebp,%eax,4), %eax
	movl	28(%esp), %ebp
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	12(%esp), %edx
	.p2align 4,,10
	.p2align 3
.L146:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %edx
	jne	.L146
	movl	44(%esp), %edx
	movl	%ebp, 28(%esp)
.L163:
	movl	16(%esp), %eax
	movl	48(%esp), %ebp
	andl	%ebp, -4(%eax,%ebx,4)
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L155:
	movl	32(%ebx), %edx
	testl	%ebp, %ebp
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 40(%esp)
	movl	20(%ebx), %edx
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 44(%esp)
	jle	.L156
	movl	12(%esp), %ecx
	xorl	%ebp, %ebp
	movl	%esi, 56(%esp)
	movl	%edi, 60(%esp)
	movl	%eax, %esi
	movl	%ebp, %edi
	movl	4(%esp), %eax
	leal	(%edx,%ecx,4), %edx
	movl	%edx, 48(%esp)
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L159:
	addl	$1, %edi
	cmpl	%edi, 8(%eax)
	jle	.L207
.L160:
	movl	%edi, %ebx
	movl	%edi, %ecx
	sarl	$5, %ebx
	andl	$31, %ecx
	movl	(%esi,%ebx,4), %ebp
	btl	%ecx, %ebp
	jnc	.L159
	movl	%eax, 16(%esp)
	movl	12(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 100
	leal	(%ebx,%eax), %ebp
	movl	12(%esp), %eax
	movl	(%eax,%ebx,4), %ebx
	movl	(%eax,%ebp,4), %ebp
	shrl	%cl, %ebx
	shrl	%cl, %ebp
	andl	$1, %ebx
	andl	$1, %ebp
	pushl	%ebx
	.cfi_def_cfa_offset 104
	pushl	%edi
	.cfi_def_cfa_offset 108
	pushl	56(%esp)
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 100
	pushl	%ebp
	.cfi_def_cfa_offset 104
	pushl	%edi
	.cfi_def_cfa_offset 108
	pushl	60(%esp)
	.cfi_def_cfa_offset 112
	movl	40(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	movl	16(%esp), %eax
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L149:
	addl	40(%eax), %edx
	movl	36(%esp), %ebx
	movl	20(%eax), %eax
	orl	%ebx, (%edx)
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L143:
	movl	56(%esp), %eax
	movl	48(%esp), %ebx
	andl	%ebx, (%eax)
	movl	44(%esp), %eax
	movl	12(%esp), %ebx
	addl	%eax, %ebx
	jmp	.L163
	.cfi_endproc
.LFE270:
	.size	asl_loc_set_restore_xprop_accum_block, .-asl_loc_set_restore_xprop_accum_block
	.p2align 4,,15
	.type	asl_loc_set_restore_xprop_accum_block_selfv, @function
asl_loc_set_restore_xprop_accum_block_selfv:
.LFB271:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	4(%ebp), %ecx
	andb	$-33, 8(%ebp)
	movl	%gs:20, %eax
	movl	%eax, 76(%esp)
	xorl	%eax, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 32(%esp)
	testl	%ecx, %ecx
	jle	.L211
	movl	%esi, %eax
	movl	__idp@GOT(%esi), %esi
	movl	$0, 8(%esp)
	movl	__xspi@GOT(%eax), %eax
	movl	%esi, 48(%esp)
	movl	%eax, 44(%esp)
	.p2align 4,,10
	.p2align 3
.L241:
	movl	8(%esp), %ecx
	movl	0(%ebp), %edx
	leal	0(,%ecx,4), %eax
	movl	%eax, 4(%esp)
	movl	44(%ebp), %eax
	movl	(%eax,%ecx,4), %esi
	movl	8(%esi), %eax
	leal	31(%eax), %ebx
	movl	128(%esi), %eax
	sarl	$5, %ebx
	testl	%edx, %edx
	movl	%eax, 24(%esp)
	movl	20(%ebp), %eax
	movl	%ebx, 20(%esp)
	movl	(%eax,%ecx,4), %edi
	movl	16(%ebp), %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, 16(%esp)
	je	.L213
	movl	%edi, 16(%esp)
	movl	%eax, %edi
.L213:
	movzbl	6(%esi), %eax
	testb	$4, %al
	je	.L214
	orl	$4, %eax
	movl	4(%esp), %edx
	movb	%al, 6(%esi)
	movl	36(%ebp), %eax
	movl	$1, (%eax,%edx)
	movl	48(%esp), %eax
	movl	24(%esi), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movzbl	1(%esi), %eax
	testb	$126, %al
	je	.L291
	andl	$124, %eax
	cmpb	$4, %al
	je	.L292
	movl	44(%esp), %edx
	movl	(%edx), %eax
	movl	%eax, 28(%esp)
	addl	$1, %eax
	movl	%eax, (%edx)
	movl	12(%esp), %edx
	movl	__maxxnest@GOT(%edx), %edx
	cmpl	(%edx), %eax
	jge	.L293
.L217:
	movl	12(%esp), %edx
	movl	8(%esi), %ecx
	movl	__xstk@GOT(%edx), %edx
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %eax
	leal	31(%ecx), %edx
	sarl	$5, %edx
	cmpl	4(%eax), %edx
	jg	.L294
.L218:
	movl	8(%eax), %ebx
	movl	%eax, 28(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	%ecx, (%eax)
	leal	(%ebx,%edx,4), %edx
	movl	%edx, 12(%eax)
	pushl	%esi
	.cfi_def_cfa_offset 120
	pushl	%edx
	.cfi_def_cfa_offset 124
	pushl	%ebx
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	__ld_wire_val_wrds@PLT
	movl	44(%esp), %eax
	movl	12(%eax), %ecx
	movl	8(%eax), %edx
	movl	32(%esp), %eax
	movl	$1, (%esp)
	call	asl_loc_combine_xprop_accum
	movl	60(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 112
	subl	$1, (%eax)
.L214:
	movl	32(%esp), %eax
	testl	%eax, %eax
	jne	.L295
.L219:
	movl	20(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	sall	$3, %eax
	movl	%eax, 32(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 120
	pushl	24(%esp)
	.cfi_def_cfa_offset 124
	pushl	36(%esp)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 112
	movl	12(%ebp), %eax
	movl	4(%esp), %ebx
	movl	(%eax,%ebx), %eax
	testl	%eax, %eax
	je	.L220
	movl	36(%ebp), %edx
	movl	40(%ebp), %ecx
	movl	%ebx, %eax
	movl	(%ecx,%eax), %eax
	movl	(%edx,%ebx), %ebx
	cmpl	%eax, %ebx
	movl	%ebx, 40(%esp)
	movl	%eax, 36(%esp)
	je	.L221
	testb	$1, 32(%esp)
	jne	.L296
.L221:
	movl	56(%ebp), %eax
	movl	4(%esp), %ebx
	addl	52(%ebp), %ebx
	testl	%eax, %eax
	je	.L226
	testb	$32, 8(%eax)
	je	.L226
	movl	0(%ebp), %edi
	testl	%edi, %edi
	movl	40(%esp), %edi
	cmovne	36(%esp), %edi
	testl	%edi, %edi
	movl	%edi, 36(%esp)
	je	.L226
	movl	(%ebx), %ecx
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	leal	0(,%ecx,4), %edx
	jne	.L228
	addl	36(%eax), %edx
	movl	16(%eax), %eax
	orl	%edi, (%edx)
.L289:
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	pushl	32(%esp)
	.cfi_def_cfa_offset 120
	pushl	24(%esp)
	.cfi_def_cfa_offset 124
	pushl	(%eax,%ecx,4)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	memcpy@PLT
	movl	20(%esp), %ebx
	addl	52(%ebp), %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 112
	movl	36(%ebp), %edx
	movl	40(%ebp), %ecx
	.p2align 4,,10
	.p2align 3
.L226:
	movl	4(%esp), %eax
	movl	$-1, (%edx,%eax)
	movl	$-1, (%ecx,%eax)
	movl	(%ebx), %ecx
.L229:
	addl	$1, 8(%esp)
	movl	%ecx, 132(%esi)
	movl	8(%esp), %eax
	cmpl	%eax, 4(%ebp)
	jg	.L241
.L211:
	movl	76(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L297
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L220:
	.cfi_restore_state
	movl	28(%ebp), %eax
	movl	4(%esp), %edi
	movl	32(%esp), %ebx
	movl	(%eax,%edi), %edx
	movl	32(%ebp), %eax
	testl	%ebx, %ebx
	movl	(%eax,%edi), %eax
	movl	%eax, 28(%esp)
	jne	.L298
.L230:
	movl	56(%ebp), %ebx
	movl	52(%ebp), %eax
	movl	4(%esp), %edi
	testl	%ebx, %ebx
	movl	(%eax,%edi), %ecx
	je	.L229
	testb	$32, 8(%ebx)
	je	.L229
	movl	0(%ebp), %eax
	testl	%eax, %eax
	cmovne	28(%esp), %edx
	movl	24(%ebp), %eax
	movl	(%eax,%edi), %eax
	movl	%edx, 28(%esp)
	movl	24(%ebx), %edx
	movl	(%edx,%ecx,4), %edi
	movl	(%ebx), %edx
	testl	%edx, %edx
	movl	%edi, 24(%esp)
	movl	8(%esi), %edi
	jne	.L234
	movl	28(%ebx), %edx
	testl	%edi, %edi
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 36(%esp)
	movl	16(%ebx), %edx
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 40(%esp)
	jle	.L235
	movl	20(%esp), %edi
	movl	%ebp, 56(%esp)
	movl	%eax, %ebp
	movl	16(%esp), %eax
	leal	(%edx,%edi,4), %edi
	movl	%edi, 52(%esp)
	xorl	%edi, %edi
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L236:
	addl	$1, %edi
	cmpl	%edi, 8(%esi)
	jle	.L290
.L237:
	movl	%edi, %edx
	movl	%edi, %ecx
	sarl	$5, %edx
	andl	$31, %ecx
	movl	0(%ebp,%edx,4), %ebx
	btl	%ecx, %ebx
	jnc	.L236
	movl	(%eax,%edx,4), %ebx
	addl	20(%esp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	%eax, 20(%esp)
	shrl	%cl, %ebx
	andl	$1, %ebx
	movl	%ebx, 72(%esp)
	movl	(%eax,%edx,4), %edx
	shrl	%cl, %edx
	andl	$1, %edx
	movl	%edx, 76(%esp)
	pushl	%ebx
	.cfi_def_cfa_offset 120
	pushl	%edi
	.cfi_def_cfa_offset 124
	pushl	52(%esp)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 116
	pushl	76(%esp)
	.cfi_def_cfa_offset 120
	pushl	%edi
	.cfi_def_cfa_offset 124
	addl	$1, %edi
	pushl	64(%esp)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 112
	cmpl	%edi, 8(%esi)
	movl	16(%esp), %eax
	jg	.L237
	.p2align 4,,10
	.p2align 3
.L290:
	movl	%ebp, %eax
	movl	56(%esp), %ebp
	movl	4(%esp), %edi
	movl	52(%ebp), %edx
	movl	(%edx,%edi), %ecx
.L235:
	movl	20(%esp), %edx
	testl	%edx, %edx
	jle	.L229
	movl	%esi, 4(%esp)
	movl	36(%esp), %ebx
	xorl	%edx, %edx
	movl	28(%esp), %edi
	movl	24(%esp), %esi
	movl	%ecx, 16(%esp)
	movl	20(%esp), %ecx
	movl	%ebp, 20(%esp)
	.p2align 4,,10
	.p2align 3
.L240:
	movl	(%edi,%edx,4), %ebp
	orl	%ebp, (%ebx,%edx,4)
	movl	(%eax,%edx,4), %ebp
	orl	%ebp, (%esi,%edx,4)
	addl	$1, %edx
	cmpl	%edx, %ecx
	jne	.L240
	movl	4(%esp), %esi
	movl	16(%esp), %ecx
	movl	20(%esp), %ebp
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L295:
	movl	20(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 124
	pushl	8(%esi)
	.cfi_def_cfa_offset 128
	movl	%edi, %edx
	leal	(%edi,%eax,4), %ecx
	movl	32(%esp), %eax
	call	asl_loc_combine_xprop_accum
	addl	$16, %esp
	.cfi_def_cfa_offset 112
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L298:
	movl	8(%esi), %ecx
	testl	%ecx, %ecx
	jle	.L230
	movl	20(%esp), %edi
	movl	24(%esp), %eax
	movl	%ebp, 40(%esp)
	movl	%edx, %ebp
	leal	(%eax,%edi,4), %eax
	xorl	%edi, %edi
	movl	%eax, 36(%esp)
	.p2align 4,,10
	.p2align 3
.L232:
	movl	28(%esp), %edx
	movl	%edi, %eax
	movl	%edi, %ecx
	sarl	$5, %eax
	andl	$31, %ecx
	movl	0(%ebp,%eax,4), %ebx
	movl	(%edx,%eax,4), %eax
	shrl	%cl, %ebx
	shrl	%cl, %eax
	andl	$1, %ebx
	andl	$1, %eax
	cmpl	%eax, %ebx
	je	.L231
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	pushl	$1
	.cfi_def_cfa_offset 120
	pushl	%edi
	.cfi_def_cfa_offset 124
	pushl	36(%esp)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 116
	pushl	$1
	.cfi_def_cfa_offset 120
	pushl	%edi
	.cfi_def_cfa_offset 124
	pushl	48(%esp)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 112
.L231:
	addl	$1, %edi
	cmpl	%edi, 8(%esi)
	jg	.L232
	movl	%ebp, %edx
	movl	40(%esp), %ebp
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L291:
	movl	20(%esp), %eax
	pushl	8(%esi)
	.cfi_def_cfa_offset 116
	leal	(%edx,%eax,4), %ecx
	movl	20(%esp), %eax
	call	asl_loc_combine_xprop_accum
	popl	%eax
	.cfi_def_cfa_offset 112
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L296:
	movl	8(%esi), %eax
	leal	31(%eax), %ebx
	andl	$31, %eax
	movl	%ebx, %edi
	movl	12(%esp), %ebx
	sarl	$5, %edi
	movl	%edi, 56(%esp)
	movl	__masktab@GOT(%ebx), %ebx
	movl	(%ebx,%eax,4), %eax
	movl	24(%esp), %ebx
	movl	%eax, 52(%esp)
	leal	-4(,%edi,4), %eax
	addl	%eax, %ebx
	testl	%edi, %edi
	movl	%ebx, 60(%esp)
	jle	.L222
	movl	24(%esp), %edi
	leal	4(%edi,%eax), %ebx
	movl	%edi, %eax
	movl	28(%esp), %edi
	.p2align 4,,10
	.p2align 3
.L223:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %ebx
	jne	.L223
	movl	60(%esp), %eax
	movl	%edi, 28(%esp)
	movl	52(%esp), %edi
	movl	24(%esp), %ebx
	andl	%edi, (%eax)
	movl	56(%esp), %edi
	addl	20(%esp), %edi
	movl	20(%esp), %eax
	leal	(%ebx,%eax,4), %eax
	movl	%edi, 20(%esp)
	leal	(%ebx,%edi,4), %ebx
	movl	28(%esp), %edi
	.p2align 4,,10
	.p2align 3
.L225:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %ebx
	jne	.L225
	movl	%edi, 28(%esp)
.L242:
	movl	24(%esp), %eax
	movl	20(%esp), %edi
	movl	52(%esp), %ebx
	andl	%ebx, -4(%eax,%edi,4)
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L292:
	movl	(%edx), %eax
	leal	72(%esp), %ecx
	movl	%eax, %edx
	shrl	%eax
	andl	$1, %edx
	andl	$1, %eax
	movl	%edx, 68(%esp)
	movl	%eax, 72(%esp)
	leal	68(%esp), %edx
	pushl	$1
	.cfi_def_cfa_offset 116
	movl	20(%esp), %eax
	call	asl_loc_combine_xprop_accum
	popl	%eax
	.cfi_def_cfa_offset 112
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L234:
	movl	32(%ebx), %edx
	testl	%edi, %edi
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 36(%esp)
	movl	20(%ebx), %edx
	movl	(%edx,%ecx,4), %edx
	movl	%edx, 40(%esp)
	jle	.L235
	movl	20(%esp), %edi
	movl	%ebp, 56(%esp)
	movl	%eax, %ebp
	movl	16(%esp), %eax
	leal	(%edx,%edi,4), %edi
	movl	%edi, 52(%esp)
	xorl	%edi, %edi
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L238:
	addl	$1, %edi
	cmpl	%edi, 8(%esi)
	jle	.L290
.L239:
	movl	%edi, %edx
	movl	%edi, %ecx
	sarl	$5, %edx
	andl	$31, %ecx
	movl	0(%ebp,%edx,4), %ebx
	btl	%ecx, %ebx
	jnc	.L238
	movl	(%eax,%edx,4), %ebx
	addl	20(%esp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 116
	movl	%eax, 20(%esp)
	shrl	%cl, %ebx
	andl	$1, %ebx
	movl	%ebx, 72(%esp)
	movl	(%eax,%edx,4), %edx
	shrl	%cl, %edx
	andl	$1, %edx
	movl	%edx, 76(%esp)
	pushl	%ebx
	.cfi_def_cfa_offset 120
	pushl	%edi
	.cfi_def_cfa_offset 124
	pushl	52(%esp)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 116
	pushl	76(%esp)
	.cfi_def_cfa_offset 120
	pushl	%edi
	.cfi_def_cfa_offset 124
	pushl	64(%esp)
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 112
	movl	16(%esp), %eax
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L294:
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	pushl	%edx
	.cfi_def_cfa_offset 124
	pushl	%eax
	.cfi_def_cfa_offset 128
	movl	28(%esp), %ebx
	movl	%eax, 44(%esp)
	call	__chg_xstk_width@PLT
	movl	8(%esi), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 112
	movl	28(%esp), %eax
	leal	31(%ecx), %edx
	sarl	$5, %edx
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L293:
	movl	12(%esp), %ebx
	call	__grow_xstk@PLT
	movl	44(%esp), %eax
	movl	(%eax), %eax
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L228:
	addl	40(%eax), %edx
	movl	36(%esp), %edi
	movl	20(%eax), %eax
	orl	%edi, (%edx)
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L222:
	movl	60(%esp), %eax
	movl	52(%esp), %edi
	andl	%edi, (%eax)
	movl	20(%esp), %edi
	movl	56(%esp), %eax
	addl	%edi, %eax
	movl	%eax, 20(%esp)
	jmp	.L242
.L297:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE271:
	.size	asl_loc_set_restore_xprop_accum_block_selfv, .-asl_loc_set_restore_xprop_accum_block_selfv
	.section	.rodata.str1.4
	.align 4
.LC1:
	.string	"error in conversion of real %g to 64 bit time - set to %s"
	.align 4
.LC2:
	.string	"delay expression #(%s) evaluates to x/z changed to #0"
	.text
	.p2align 4,,15
	.type	asl_loc_delx_to_deltim, @function
asl_loc_delx_to_deltim:
.LFB456:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__idp@GOT(%ebx), %ecx
	movl	%gs:20, %edi
	movl	%edi, 28(%esp)
	xorl	%edi, %edi
	testb	$8, 2(%eax)
	movl	(%ecx), %ecx
	movl	4(%ecx), %ecx
	jne	.L309
	movl	12(%edx), %esi
	movl	(%esi), %esi
	testl	%esi, %esi
	jne	.L310
	cmpl	$32, (%edx)
	movl	8(%edx), %esi
	movl	(%esi), %eax
	jg	.L305
	xorl	%edx, %edx
.L306:
	testb	$2, 3(%ecx)
	jne	.L299
	movzbl	2(%ecx), %ecx
	movl	__itoticks_tab@GOT(%ebx), %esi
	shrb	%cl
	movl	%ecx, %edi
	movl	__des_timeprec@GOT(%ebx), %ecx
	andl	$15, %edi
	movl	(%ecx), %ecx
	subl	%edi, %ecx
	movl	(%esi,%ecx,8), %ebx
	imull	%edx, %ebx
	movl	4(%esi,%ecx,8), %edx
	imull	%eax, %edx
	addl	%edx, %ebx
	mull	(%esi,%ecx,8)
	addl	%ebx, %edx
.L299:
	movl	28(%esp), %edi
	xorl	%gs:20, %edi
	jne	.L311
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L310:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	movl	__xs@GOT(%ebx), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 80
	call	__msgexpr_tostr@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 68
	pushl	%eax
	.cfi_def_cfa_offset 72
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	$565
	.cfi_def_cfa_offset 80
	call	__sgfwarn@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L309:
	movl	8(%edx), %eax
	testb	$2, 3(%ecx)
	fldl	(%eax)
	fstl	8(%esp)
	jne	.L313
	movzbl	2(%ecx), %eax
	movl	__des_timeprec@GOT(%ebx), %edx
	movl	(%edx), %edx
	shrb	%al
	andl	$15, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	__dbl_toticks_tab@GOT(%ebx), %edx
	fmull	(%edx,%eax,8)
	fstpl	8(%esp)
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L313:
	fstp	%st(0)
.L301:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	16(%esp)
	.cfi_def_cfa_offset 72
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	leal	28(%esp), %esi
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__real_to_v64tim@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L312
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L305:
	movl	(%esi), %eax
	movl	4(%esi), %edx
	jmp	.L306
	.p2align 4,,10
	.p2align 3
.L312:
	movl	__xs@GOT(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	(%eax)
	.cfi_def_cfa_offset 80
	call	__to_timstr@PLT
	movl	%eax, (%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	28(%esp)
	.cfi_def_cfa_offset 84
	pushl	28(%esp)
	.cfi_def_cfa_offset 88
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	$563
	.cfi_def_cfa_offset 96
	call	__sgfwarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	jmp	.L299
.L311:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE456:
	.size	asl_loc_delx_to_deltim, .-asl_loc_delx_to_deltim
	.p2align 4,,15
	.type	linkout_cur_time, @function
linkout_cur_time:
.LFB356:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__cur_te_endp@GOT(%edx), %ebx
	movl	$0, 8(%eax)
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L329
	movl	48(%eax), %edx
	testl	%edx, %edx
	je	.L330
	movl	44(%eax), %esi
	testl	%esi, %esi
	je	.L331
	movl	%esi, 44(%edx)
	movl	44(%eax), %esi
	cmpl	%eax, %ecx
	movl	%edx, 48(%esi)
	jne	.L314
	movl	48(%ecx), %eax
	movl	%eax, (%ebx)
.L314:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L330:
	.cfi_restore_state
	cmpl	%eax, %ecx
	je	.L332
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L314
	movl	$0, 48(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L331:
	.cfi_restore_state
	movl	%edx, (%ebx)
	movl	$0, 44(%edx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L332:
	.cfi_restore_state
	movl	$0, (%ebx)
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L329:
	movl	__p0_te_hdrp@GOT(%edx), %esi
	cmpl	(%esi), %eax
	je	.L333
.L316:
	movl	48(%eax), %ecx
	movl	44(%eax), %ebx
	testl	%ecx, %ecx
	je	.L334
	testl	%ebx, %ebx
	je	.L335
	movl	__p0_te_endp@GOT(%edx), %edx
	movl	%ebx, 44(%ecx)
	movl	44(%eax), %ebx
	cmpl	(%edx), %eax
	movl	%ecx, 48(%ebx)
	jne	.L314
	movl	48(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L333:
	movl	__p0_te_endp@GOT(%edx), %ecx
	cmpl	(%ecx), %eax
	jne	.L316
	movl	$0, (%ecx)
	movl	$0, (%esi)
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L334:
	testl	%ebx, %ebx
	movl	%ebx, (%esi)
	je	.L314
	movl	$0, 48(%ebx)
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L335:
	movl	__p0_te_endp@GOT(%edx), %eax
	movl	$0, 44(%ecx)
	movl	%ecx, (%eax)
	jmp	.L314
	.cfi_endproc
.LFE356:
	.size	linkout_cur_time, .-linkout_cur_time
	.p2align 4,,15
	.type	linkout_tevp, @function
linkout_tevp:
.LFB355:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	24(%eax), %edx
	movl	28(%eax), %ecx
	movl	__simtime@GOT(%ebx), %esi
	xorl	(%esi), %edx
	xorl	4(%esi), %ecx
	orl	%edx, %ecx
	je	.L343
	movl	20(%eax), %esi
	movl	$0, 8(%eax)
	movl	$0, 20(%eax)
	cmpl	%eax, 12(%esi)
	je	.L344
.L338:
	movl	48(%eax), %edx
	movl	44(%eax), %ecx
	testl	%edx, %edx
	je	.L345
	testl	%ecx, %ecx
	je	.L346
	movl	%ecx, 44(%edx)
	movl	44(%eax), %eax
	movl	%edx, 48(%eax)
.L336:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L344:
	.cfi_restore_state
	cmpl	%eax, 16(%esi)
	jne	.L338
	call	asl_loc_get_new_event
	movl	__process_cancel_ev_enterp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 12(%eax)
	movl	%eax, 16(%esi)
	movl	%eax, 12(%esi)
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L345:
	movl	%ecx, 12(%esi)
	movl	$0, 48(%ecx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L346:
	.cfi_restore_state
	movl	%edx, 16(%esi)
	movl	$0, 44(%edx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L343:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	linkout_cur_time
	.cfi_endproc
.LFE355:
	.size	linkout_tevp, .-linkout_tevp
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"v_aslib.c"
	.text
	.p2align 4,,15
	.type	set_trchan_1vtx_nchg_fld, @function
set_trchan_1vtx_nchg_fld:
.LFB105:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	(%ecx), %esi
	leal	(%esi,%esi,4), %ebp
	movl	__chantab@GOT(%ebx), %esi
	sall	$2, %ebp
	addl	(%esi), %ebp
	testb	$16, 0(%ebp)
	je	.L357
.L347:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L357:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	movl	%ecx, %esi
	movl	%edx, %edi
	pushl	%eax
	.cfi_def_cfa_offset 48
	movl	%eax, %ebp
	call	__needs_netchg_record@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	.L347
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	4(%esi), %esi
	pushl	%edi
	.cfi_def_cfa_offset 40
	pushl	%edi
	.cfi_def_cfa_offset 44
	pushl	%ebp
	.cfi_def_cfa_offset 48
	call	__find_nchg_range@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	12(%esi), %ebp
	movl	%eax, %edi
	je	.L351
	leal	.LC3@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	$1213
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	__misc_terr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
.L351:
	testl	%edi, %edi
	je	.L358
.L352:
	movl	16(%edi), %edx
	movl	32(%esp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esi)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L358:
	.cfi_restore_state
	leal	.LC3@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	$1214
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	__misc_terr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L352
	.cfi_endproc
.LFE105:
	.size	set_trchan_1vtx_nchg_fld, .-set_trchan_1vtx_nchg_fld
	.p2align 4,,15
	.type	asl_loc_get_impth_del.isra.4, @function
asl_loc_get_impth_del.isra.4:
.LFB512:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	%eax, 36(%esp)
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	(%edx,%eax,4), %esi
	movl	20(%esi), %eax
	movl	24(%esi), %edx
	movl	%eax, 16(%esp)
	movzbl	(%esi), %eax
	movl	%edx, 20(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	8(%esi)
	.cfi_def_cfa_offset 80
	call	__get_del@PLT
	movl	28(%esi), %esi
	movl	__pdmindel@GOT(%ebx), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%esi, %esi
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	je	.L371
	.p2align 4,,10
	.p2align 3
.L360:
	movl	24(%esi), %edi
	movl	12(%esp), %edx
	movl	20(%esi), %ebp
	movl	8(%esp), %eax
	cmpl	%edx, %edi
	jb	.L362
	ja	.L366
	cmpl	%eax, %ebp
	jb	.L362
.L366:
	movzbl	(%esi), %eax
	movl	%ecx, 20(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	8(%esi)
	.cfi_def_cfa_offset 80
	call	__get_del@PLT
	movl	%eax, 40(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	8(%esp), %ecx
	movl	12(%esp), %eax
	xorl	%ebp, %ecx
	xorl	%edi, %eax
	orl	%ecx, %eax
	movl	20(%esp), %ecx
	je	.L372
.L364:
	movl	24(%esp), %eax
	movl	%edx, 4(%ecx)
	movl	%ebp, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%ecx)
.L362:
	movl	28(%esi), %esi
	testl	%esi, %esi
	jne	.L360
	movl	8(%esp), %eax
	addl	(%ecx), %eax
	movl	12(%esp), %edx
	adcl	4(%ecx), %edx
	movl	28(%esp), %ebx
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L372:
	.cfi_restore_state
	cmpl	4(%ecx), %edx
	ja	.L362
	jb	.L364
	movl	24(%esp), %eax
	cmpl	(%ecx), %eax
	ja	.L362
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L371:
	addl	8(%esp), %eax
	movl	28(%esp), %ebx
	adcl	12(%esp), %edx
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE512:
	.size	asl_loc_get_impth_del.isra.4, .-asl_loc_get_impth_del.isra.4
	.p2align 4,,15
	.type	asl_loc_get_path_del.isra.6, @function
asl_loc_get_path_del.isra.6:
.LFB514:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	(%eax,%edx,4), %edi
	testl	%edi, %edi
	je	.L385
	movl	__pdmindel@GOT(%ebx), %eax
	movl	%ecx, 40(%esp)
	movl	$0, 32(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 28(%esp)
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	__idp@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	__xspi@GOT(%ebx), %eax
	movl	%eax, 36(%esp)
	jmp	.L384
	.p2align 4,,10
	.p2align 3
.L404:
	movl	12(%eax), %eax
	movl	__xspi@GOT(%ebx), %ecx
	testb	$1, (%eax)
	movl	(%ecx), %esi
	leal	-1(%esi), %edx
	je	.L401
.L378:
	movl	(%edi), %eax
	movl	%edx, (%ecx)
.L376:
	movl	20(%esp), %esi
	movl	8(%eax), %ecx
	movl	(%esi), %edx
	movl	(%edx,%ecx,4), %esi
	movl	4(%edx,%ecx,4), %ebp
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	%esi, 16(%esp)
	cmpl	%ecx, %ebp
	jb	.L379
	ja	.L386
	cmpl	%edx, %esi
	jb	.L379
.L386:
	movl	(%eax), %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movzwl	(%esi), %eax
	shrw	$4, %ax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	28(%esi)
	.cfi_def_cfa_offset 96
	call	__get_del@PLT
	movl	%eax, 40(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	16(%esp), %ecx
	movl	12(%esp), %eax
	xorl	8(%esp), %ecx
	xorl	%ebp, %eax
	orl	%ecx, %eax
	je	.L402
.L381:
	movl	28(%esp), %eax
	movl	24(%esp), %esi
	movl	%ebp, 12(%esp)
	movl	%edi, 32(%esp)
	movl	%esi, (%eax)
	movl	%edx, 4(%eax)
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
.L379:
	movl	4(%edi), %edi
	testl	%edi, %edi
	je	.L403
.L384:
	movl	(%edi), %eax
	movl	(%eax), %edx
	movl	36(%edx), %edx
	testl	%edx, %edx
	je	.L376
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	%edx
	.cfi_def_cfa_offset 96
	call	__eval2_xpr@PLT
	movl	8(%eax), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testb	$1, (%edx)
	je	.L404
	movl	36(%esp), %eax
	movl	%eax, %ecx
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	leal	-1(%eax), %edx
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L403:
	movl	28(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	cmpl	$-1, %ecx
	je	.L385
	addl	8(%esp), %eax
	movl	40(%esp), %ebx
	adcl	12(%esp), %edx
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
.L373:
	movl	32(%esp), %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L402:
	.cfi_restore_state
	movl	28(%esp), %eax
	testb	$32, 2(%esi)
	movl	(%eax), %ecx
	movl	%ecx, 44(%esp)
	movl	4(%eax), %ecx
	je	.L382
	movl	44(%esp), %eax
	xorl	24(%esp), %eax
	movl	%edx, %esi
	xorl	%ecx, %esi
	orl	%esi, %eax
	je	.L379
.L382:
	cmpl	%ecx, %edx
	ja	.L379
	jb	.L381
	movl	44(%esp), %ecx
	cmpl	%ecx, 24(%esp)
	ja	.L379
	jmp	.L381
	.p2align 4,,10
	.p2align 3
.L401:
	movl	%edx, (%ecx)
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L385:
	movl	$0, 32(%esp)
	jmp	.L373
	.cfi_endproc
.LFE514:
	.size	asl_loc_get_path_del.isra.6, .-asl_loc_get_path_del.isra.6
	.p2align 4,,15
	.type	asl_loc_get_path_del_scalar.isra.7, @function
asl_loc_get_path_del_scalar.isra.7:
.LFB515:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	12(%eax), %eax
	movl	$0, 32(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	(%eax), %edi
	movl	__pdmindel@GOT(%ebx), %eax
	testl	%edi, %edi
	movl	%eax, 28(%esp)
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	je	.L416
	movl	__idp@GOT(%ebx), %eax
	movl	%edx, 40(%esp)
	movl	%eax, 20(%esp)
	movl	__xspi@GOT(%ebx), %eax
	movl	%eax, 36(%esp)
	jmp	.L406
	.p2align 4,,10
	.p2align 3
.L437:
	movl	12(%eax), %eax
	movl	__xspi@GOT(%ebx), %ecx
	testb	$1, (%eax)
	movl	(%ecx), %esi
	leal	-1(%esi), %edx
	je	.L434
.L410:
	movl	(%edi), %eax
	movl	%edx, (%ecx)
.L408:
	movl	20(%esp), %esi
	movl	8(%eax), %ecx
	movl	(%esi), %edx
	movl	(%edx,%ecx,4), %esi
	movl	4(%edx,%ecx,4), %ebp
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	%esi, 16(%esp)
	cmpl	%ecx, %ebp
	jb	.L411
	ja	.L418
	cmpl	%edx, %esi
	jb	.L411
.L418:
	movl	(%eax), %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movzwl	(%esi), %eax
	shrw	$4, %ax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	28(%esi)
	.cfi_def_cfa_offset 96
	call	__get_del@PLT
	movl	%eax, 40(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	16(%esp), %ecx
	movl	12(%esp), %eax
	xorl	8(%esp), %ecx
	xorl	%ebp, %eax
	orl	%ecx, %eax
	je	.L435
.L413:
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	movl	%ebp, 12(%esp)
	movl	%edi, 32(%esp)
	movl	%ecx, (%eax)
	movl	%edx, 4(%eax)
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
.L411:
	movl	4(%edi), %edi
	testl	%edi, %edi
	je	.L436
.L406:
	movl	(%edi), %eax
	movl	(%eax), %edx
	movl	36(%edx), %edx
	testl	%edx, %edx
	je	.L408
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	%edx
	.cfi_def_cfa_offset 96
	call	__eval2_xpr@PLT
	movl	8(%eax), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testb	$1, (%edx)
	je	.L437
	movl	36(%esp), %eax
	movl	%eax, %ecx
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	leal	-1(%eax), %edx
	jmp	.L410
	.p2align 4,,10
	.p2align 3
.L435:
	movl	28(%esp), %eax
	testb	$32, 2(%esi)
	movl	(%eax), %ecx
	movl	%ecx, 44(%esp)
	movl	4(%eax), %ecx
	je	.L414
	movl	44(%esp), %eax
	xorl	24(%esp), %eax
	movl	%edx, %esi
	xorl	%ecx, %esi
	orl	%esi, %eax
	je	.L411
.L414:
	cmpl	%ecx, %edx
	ja	.L411
	jb	.L413
	movl	44(%esp), %ecx
	cmpl	%ecx, 24(%esp)
	ja	.L411
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L436:
	movl	28(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	cmpl	$-1, %ecx
	je	.L416
	addl	8(%esp), %eax
	movl	40(%esp), %ebx
	adcl	12(%esp), %edx
	movl	%eax, (%ebx)
	movl	32(%esp), %eax
	movl	%edx, 4(%ebx)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L434:
	.cfi_restore_state
	movl	%edx, (%ecx)
	jmp	.L411
	.p2align 4,,10
	.p2align 3
.L416:
	movl	$0, 32(%esp)
	movl	32(%esp), %eax
	addl	$60, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE515:
	.size	asl_loc_get_path_del_scalar.isra.7, .-asl_loc_get_path_del_scalar.isra.7
	.p2align 4,,15
	.type	asl_loc_ld_vtx_netbit, @function
asl_loc_ld_vtx_netbit:
.LFB420:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	testb	$4, 2(%ecx)
	je	.L444
	movl	__xspi@GOT(%ebx), %ebp
	movl	%edx, 12(%esp)
	movl	%ecx, %esi
	movl	%eax, 8(%esp)
	movl	__maxxnest@GOT(%ebx), %edx
	movl	0(%ebp), %eax
	addl	$1, %eax
	cmpl	(%edx), %eax
	movl	%eax, 0(%ebp)
	jge	.L445
.L441:
	movl	__xstk@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %edi
	movl	8(%esi), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	cmpl	4(%edi), %eax
	jg	.L446
.L442:
	movl	8(%edi), %ecx
	movl	%edx, (%edi)
	leal	(%ecx,%eax,4), %eax
	movl	%eax, 12(%edi)
	pushl	%edx
	.cfi_def_cfa_offset 52
	movl	52(%esi), %edx
	pushl	(%edx)
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%ecx
	.cfi_def_cfa_offset 64
	call	__ld_perinst_val@PLT
	movl	64(%esp), %edx
	movl	8(%edi), %eax
	movl	64(%esp), %ecx
	movl	24(%esp), %esi
	sarl	$5, %edx
	movl	(%eax,%edx,4), %eax
	andl	$31, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, (%esi)
	movl	12(%edi), %eax
	movl	28(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	(%eax,%edx,4), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, (%esi)
	subl	$1, 0(%ebp)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L444:
	.cfi_restore_state
	movl	52(%ecx), %esi
	movl	__idp@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	movl	(%esi), %ebx
	movl	(%ecx), %ecx
	movzbl	(%ebx,%ecx), %ecx
	movl	%ecx, (%eax)
	shrl	%ecx
	andl	$1, %ecx
	movl	%ecx, (%edx)
	andl	$1, (%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L446:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	__chg_xstk_width@PLT
	movl	8(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	leal	31(%edx), %eax
	sarl	$5, %eax
	jmp	.L442
	.p2align 4,,10
	.p2align 3
.L445:
	call	__grow_xstk@PLT
	movl	0(%ebp), %eax
	jmp	.L441
	.cfi_endproc
.LFE420:
	.size	asl_loc_ld_vtx_netbit, .-asl_loc_ld_vtx_netbit
	.p2align 4,,15
	.type	asl_loc_eval_combine_bid_chan.isra.10, @function
asl_loc_eval_combine_bid_chan.isra.10:
.LFB518:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edi, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	__acum_b@GOT(%ebx), %esi
	movl	__acum_a@GOT(%ebx), %ecx
	movl	%edi, 12(%esp)
	movl	%eax, %edi
	movl	%edx, 20(%esp)
	movl	%gs:20, %eax
	movl	%eax, 44(%esp)
	xorl	%eax, %eax
	movl	__idp@GOT(%ebx), %eax
	movl	$0, (%ecx)
	movl	%esi, 4(%esp)
	movl	$1, (%esi)
	movl	(%edx), %esi
	movl	%ecx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	(%eax), %eax
	testl	%esi, %esi
	movl	%eax, 28(%esp)
	je	.L456
	leal	40(%esp), %eax
	xorl	%ebp, %ebp
	movl	%eax, 24(%esp)
	jmp	.L454
	.p2align 4,,10
	.p2align 3
.L470:
	cmpl	$-1, %edx
	jne	.L451
	movl	24(%esi), %eax
	movl	(%ecx,%eax,4), %edx
	movl	%edx, %ecx
	andl	$1, %edx
	shrl	%ecx
	movl	%edx, 36(%esp)
	andl	$1, %ecx
	movl	%ecx, 40(%esp)
	.p2align 4,,10
	.p2align 3
.L452:
	movzbl	(%esi), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 96
	pushl	%ecx
	.cfi_def_cfa_offset 100
	pushl	%edx
	.cfi_def_cfa_offset 104
	pushl	28(%esp)
	.cfi_def_cfa_offset 108
	pushl	44(%esp)
	.cfi_def_cfa_offset 112
	movl	44(%esp), %ebx
	call	__eval_1w_nonstren@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	testb	$1, 3(%esi)
	je	.L453
	movl	4(%esp), %eax
	movl	$0, (%eax)
.L453:
	movl	20(%esp), %eax
	addl	$1, %ebp
	addl	$12, %edi
	cmpl	%ebp, (%eax)
	jbe	.L469
.L454:
	movl	4(%edi), %edx
	movl	(%edi), %esi
	movl	$0, %ebx
	movl	8(%edi), %eax
	cmpl	$-1, %edx
	cmovne	%edx, %ebx
	testb	$32, 4(%esi)
	movl	4(%eax), %ecx
	movl	8(%esp), %eax
	movl	%ecx, (%eax)
	je	.L450
	movl	(%ecx), %eax
	imull	8(%esi), %eax
	addl	%ebx, %eax
	movl	68(%esi), %ebx
	leal	(%eax,%eax,2), %eax
	leal	(%ebx,%eax,8), %eax
	testb	$1, (%eax)
	jne	.L470
.L450:
	leal	36(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	movl	%esi, %ecx
	pushl	%edx
	.cfi_def_cfa_offset 96
	movl	40(%esp), %edx
	call	asl_loc_ld_vtx_netbit
	movl	56(%esp), %ecx
	movl	52(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L451:
	pushl	%edx
	.cfi_def_cfa_offset 84
	pushl	%esi
	.cfi_def_cfa_offset 88
	pushl	32(%esp)
	.cfi_def_cfa_offset 92
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 96
	movl	28(%esp), %ebx
	call	__ld_bit@PLT
	movl	56(%esp), %ecx
	movl	52(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L469:
	movl	16(%esp), %eax
	movl	(%eax), %eax
.L448:
	movl	8(%esp), %edi
	movl	28(%esp), %ebx
	movl	%ebx, (%edi)
	movl	44(%esp), %edi
	xorl	%gs:20, %edi
	jne	.L471
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L456:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L448
.L471:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE518:
	.size	asl_loc_eval_combine_bid_chan.isra.10, .-asl_loc_eval_combine_bid_chan.isra.10
	.p2align 4,,15
	.type	__asl_st_string_array_const.part.21, @function
__asl_st_string_array_const.part.21:
.LFB529:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	(%edx,%edx,2), %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	addl	24(%eax), %edx
	movl	48(%esp), %edi
	movl	%edx, %eax
	movl	__idp@GOT(%ebx), %edx
	movl	(%edx), %edx
	leal	(%edx,%eax,4), %esi
	movl	8(%esi), %edx
	movl	(%esi), %eax
	cmpl	%edi, %edx
	jl	.L475
.L473:
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%edi
	.cfi_def_cfa_offset 56
	pushl	%ecx
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	strncpy@PLT
	movl	%edi, 4(%esi)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L475:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	(%edi,%edi), %ebp
	movl	%ecx, 12(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%ebp
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__my_realloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, (%esi)
	movl	%ebp, 8(%esi)
	movl	12(%esp), %ecx
	jmp	.L473
	.cfi_endproc
.LFE529:
	.size	__asl_st_string_array_const.part.21, .-__asl_st_string_array_const.part.21
	.p2align 4,,15
	.type	asl_loc_rtl_dist_uniform.part.1.constprop.22, @function
asl_loc_rtl_dist_uniform.part.1.constprop.22:
.LFB546:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	.L485
	fldl	.LC4@GOTOFF(%ecx)
	movl	$-1844104698, (%eax)
	jmp	.L484
	.p2align 4,,10
	.p2align 3
.L486:
	fstp	%st(0)
.L484:
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	orb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L485:
	.cfi_restore_state
	imull	$69069, %edx, %edx
	addl	$1, %edx
	movl	%edx, %ebx
	movl	%edx, (%eax)
	shrl	$9, %ebx
	orl	$1065353216, %ebx
	movl	%ebx, 4(%esp)
	flds	4(%esp)
	fld	%st(0)
	fmuls	.LC5@GOTOFF(%ecx)
	faddp	%st, %st(1)
	fld1
	fsubr	%st, %st(1)
	fldl	.LC7@GOTOFF(%ecx)
	fmul	%st, %st(2)
	flds	.LC8@GOTOFF(%ecx)
	fsubr	%st, %st(3)
	fadd	%st, %st(3)
	fxch	%st(3)
	fdivp	%st, %st(1)
	fmuls	.LC9@GOTOFF(%ecx)
	fsubp	%st, %st(2)
	fldz
	fxch	%st(2)
	fucomi	%st(2), %st
	fstp	%st(2)
	jnb	.L486
	fsubrp	%st, %st(1)
	jmp	.L484
	.cfi_endproc
.LFE546:
	.size	asl_loc_rtl_dist_uniform.part.1.constprop.22, .-asl_loc_rtl_dist_uniform.part.1.constprop.22
	.p2align 4,,15
	.type	asl_loc_reschedule_1wev.part.5, @function
asl_loc_reschedule_1wev.part.5:
.LFB513:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %edi
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	call	linkout_tevp
	movl	__cur_tevp@GOT(%esi), %eax
	movl	%edi, 24(%ebx)
	movl	%ebp, 28(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L488
	movl	$0, 44(%ebx)
.L488:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%esi), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L494
	xorl	4(%edx), %edi
	xorl	8(%edx), %ebp
	orl	%edi, %ebp
	jne	.L491
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L495
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	movl	$1, 8(%ebx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L491:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_conflict_list
	movl	$1, 8(%ebx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L494:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	movl	$1, 8(%ebx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L495:
	.cfi_restore_state
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	movl	$1, 8(%ebx)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE513:
	.size	asl_loc_reschedule_1wev.part.5, .-asl_loc_reschedule_1wev.part.5
	.p2align 4,,15
	.type	asl_loc_schedule_1wev, @function
asl_loc_schedule_1wev:
.LFB430:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, %ebx
	movl	40(%esp), %eax
	movl	44(%esp), %edi
	movl	%eax, 24(%edx)
	movl	%edi, 28(%edx)
	movl	36(%esp), %edx
	orl	32(%esp), %edx
	jne	.L497
	movl	__p0_te_hdrp@GOT(%ecx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L505
	movl	__p0_te_endp@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	%ebx, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ecx), %eax
	movl	%ebx, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%ebx)
.L499:
	movl	48(%esp), %eax
	movl	%esi, 4(%ebx)
	movl	$1, 8(%ebx)
	movb	%al, 2(%ebx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L505:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ecx), %edx
	movl	%ebx, (%eax)
	movl	%ebx, (%edx)
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L497:
	movl	__cur_tevp@GOT(%ecx), %edx
	movl	$0, 48(%ebx)
	cmpl	(%edx), %ebx
	je	.L500
	movl	$0, 44(%ebx)
.L500:
	movl	%edi, %ebp
	movl	__time_hash@GOT(%ecx), %edx
	xorl	%eax, %ebp
	imull	$-1640531535, %ebp, %ebp
	andl	$4095, %ebp
	movl	(%edx,%ebp,4), %edx
	testl	%edx, %edx
	je	.L506
	xorl	4(%edx), %eax
	xorl	8(%edx), %edi
	orl	%eax, %edi
	jne	.L502
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L507
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L502:
	movl	%ebx, %eax
	call	asl_loc_conflict_list
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L506:
	movl	%ebp, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L507:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L499
	.cfi_endproc
.LFE430:
	.size	asl_loc_schedule_1wev, .-asl_loc_schedule_1wev
	.section	.rodata.str1.4
	.align 4
.LC11:
	.string	"distributed longer or no path delay"
	.section	.rodata.str1.1
.LC12:
	.string	"pulse"
.LC13:
	.string	"inout unstable"
	.text
	.p2align 4,,15
	.type	asl_loc_schd_1bitpthdrvr, @function
asl_loc_schd_1bitpthdrvr:
.LFB399:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%gs:20, %eax
	movl	%eax, 44(%esp)
	xorl	%eax, %eax
	movl	__new_gateval@GOT(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	8(%ecx), %edx
	movl	%eax, 8(%esp)
	movl	(%eax), %ebp
	movl	__old_gateval@GOT(%ebx), %eax
	testl	%edx, %edx
	movl	(%eax), %eax
	movl	%eax, (%esp)
	jne	.L509
	cmpl	%eax, %ebp
	je	.L548
	movzbl	2(%edi), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
.L539:
	movl	36(%edi), %eax
	movl	4(%esp), %edx
	leal	32(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	12(%eax), %eax
	call	asl_loc_get_path_del.isra.6
	testl	%eax, %eax
	movl	%eax, %ecx
	je	.L549
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	%eax, 16(%esp)
	movl	__simtime@GOT(%ebx), %eax
	movl	%edx, 20(%esp)
	movl	20(%esp), %edx
	cmpl	4(%eax), %edx
	movl	%eax, 28(%esp)
	jbe	.L553
.L515:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	.L554
	cmpl	(%esp), %ebp
	je	.L514
	movl	%ebp, %eax
	cmpb	%al, 2(%esi)
	je	.L548
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	je	.L534
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L555
.L534:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	.L552
	movl	%ebp, %eax
	movl	32(%esp), %edx
	movl	36(%esp), %ecx
	movb	%al, 2(%esi)
	movl	28(%esi), %ebx
	movl	24(%esi), %eax
	xorl	%ecx, %ebx
	xorl	%edx, %eax
	orl	%eax, %ebx
	je	.L548
	movl	%esi, %eax
	call	asl_loc_reschedule_1wev.part.5
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L509:
	movzbl	2(%edi), %eax
	shrb	$7, %al
	cmpl	(%esp), %ebp
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	jne	.L539
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
.L514:
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L556
.L527:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	je	.L529
.L552:
	movl	__showe_onevent@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L537
	cmpl	$1, 12(%esp)
	sbbl	%eax, %eax
	andl	$40, %eax
	subl	$37, %eax
	movb	%al, 2(%esi)
.L548:
	xorl	%edi, %edi
.L508:
	movl	44(%esp), %edx
	xorl	%gs:20, %edx
	movl	%edi, %eax
	jne	.L557
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L537:
	.cfi_restore_state
	movl	%esi, %eax
	call	linkout_tevp
.L522:
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	testl	%edx, %edx
	je	.L523
	movl	$219, (%eax)
	.p2align 4,,10
	.p2align 3
.L549:
	movl	$1, %edi
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L553:
	jb	.L543
	movl	16(%esp), %edx
	cmpl	(%eax), %edx
	ja	.L515
.L543:
	movl	__no_informs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L558
.L517:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	.L549
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	.L520
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	.L520
	movl	%ecx, (%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	$592
	.cfi_def_cfa_offset 96
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	(%esp), %ecx
	jne	.L520
	leal	.LC11@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	20(%esp)
	.cfi_def_cfa_offset 92
	pushl	%eax
	.cfi_def_cfa_offset 96
	leal	24(%esi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 100
	pushl	48(%esp)
	.cfi_def_cfa_offset 104
	pushl	%esi
	.cfi_def_cfa_offset 108
	pushl	%ecx
	.cfi_def_cfa_offset 112
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	.p2align 4,,10
	.p2align 3
.L520:
	movl	%esi, %eax
	call	linkout_tevp
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L522
	jmp	.L549
	.p2align 4,,10
	.p2align 3
.L556:
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	jne	.L527
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	$592
	.cfi_def_cfa_offset 96
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	.L527
	leal	.LC12@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	20(%esp)
	.cfi_def_cfa_offset 92
	pushl	%eax
	.cfi_def_cfa_offset 96
	leal	24(%esi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 100
	pushl	%esi
	.cfi_def_cfa_offset 104
	pushl	28(%esp)
	.cfi_def_cfa_offset 108
	pushl	%edi
	.cfi_def_cfa_offset 112
	call	__emit_path_samewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	jmp	.L527
	.p2align 4,,10
	.p2align 3
.L554:
	movl	__pdmindel@GOT(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	movl	%esi, %edx
	pushl	%ebp
	.cfi_def_cfa_offset 96
	pushl	36(%esp)
	.cfi_def_cfa_offset 100
	xorl	%edi, %edi
	pushl	36(%esp)
	.cfi_def_cfa_offset 104
	pushl	4(%eax)
	.cfi_def_cfa_offset 108
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	movl	36(%esp), %eax
	call	asl_loc_schedule_1wev
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L523:
	movl	$3, (%eax)
	movl	$1, %edi
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L558:
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	__pdmindel@GOT(%ebx)
	.cfi_def_cfa_offset 88
	pushl	%ecx
	.cfi_def_cfa_offset 92
	movl	%ecx, 12(%esp)
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__emit_path_distinform@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	(%esp), %ecx
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L529:
	movl	%esi, %eax
	call	linkout_tevp
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L555:
	movl	%ecx, (%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	$592
	.cfi_def_cfa_offset 96
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	(%esp), %ecx
	jne	.L534
	leal	.LC13@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	20(%esp)
	.cfi_def_cfa_offset 92
	pushl	%eax
	.cfi_def_cfa_offset 96
	leal	24(%esi), %eax
	pushl	40(%esp)
	.cfi_def_cfa_offset 100
	pushl	%eax
	.cfi_def_cfa_offset 104
	pushl	%esi
	.cfi_def_cfa_offset 108
	pushl	%ecx
	.cfi_def_cfa_offset 112
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	jmp	.L534
.L557:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE399:
	.size	asl_loc_schd_1bitpthdrvr, .-asl_loc_schd_1bitpthdrvr
	.p2align 4,,15
	.globl	__alnk_init_mdp
	.type	__alnk_init_mdp, @function
__alnk_init_mdp:
.LFB88:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %ecx
	movl	__dsgn_mod_ndx@GOT(%eax), %edx
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%edx), %edx
	movl	(%edx,%ecx,4), %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE88:
	.size	__alnk_init_mdp, .-__alnk_init_mdp
	.p2align 4,,15
	.globl	__alnk_fixup_allmods_comm_idp_areas
	.type	__alnk_fixup_allmods_comm_idp_areas, @function
__alnk_fixup_allmods_comm_idp_areas:
.LFB89:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__dsgn_num_mods@GOT(%eax), %edi
	movl	%eax, 4(%esp)
	movl	(%edi), %edx
	movl	%edi, 28(%esp)
	testl	%edx, %edx
	jle	.L560
	movl	__dsgn_mod_ndx@GOT(%eax), %edi
	leal	.LC3@GOTOFF(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, 24(%esp)
	.p2align 4,,10
	.p2align 3
.L576:
	movl	24(%esp), %eax
	movl	12(%esp), %edi
	movl	(%eax), %eax
	movl	(%eax,%edi,4), %eax
	movl	%eax, 8(%esp)
	movl	152(%eax), %esi
	movl	36(%eax), %eax
	testl	%eax, %eax
	jle	.L562
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L573:
	movl	44(%esi), %eax
	testl	%eax, %eax
	je	.L563
	.p2align 4,,10
	.p2align 3
.L565:
	movzbl	1(%eax), %edx
	andl	$3, %edx
	cmpb	$2, %dl
	jne	.L564
	movzbl	(%eax), %edx
	andl	$48, %edx
	cmpb	$32, %dl
	jne	.L564
	movl	20(%eax), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %ebx
	movl	260(%ecx), %ecx
	leal	(%ecx,%ebx,4), %ecx
	movl	%ecx, 24(%edx)
.L564:
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L565
.L563:
	movl	48(%esi), %eax
	testl	%eax, %eax
	je	.L566
	.p2align 4,,10
	.p2align 3
.L568:
	movzbl	1(%eax), %edx
	andl	$3, %edx
	cmpb	$2, %dl
	jne	.L567
	movzbl	(%eax), %edx
	andl	$48, %edx
	cmpb	$32, %dl
	jne	.L567
	movl	20(%eax), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %ebx
	movl	260(%ecx), %ecx
	leal	(%ecx,%ebx,4), %ecx
	movl	%ecx, 24(%edx)
.L567:
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L568
.L566:
	movl	40(%esi), %ebp
	testl	%ebp, %ebp
	jne	.L572
	jmp	.L569
	.p2align 4,,10
	.p2align 3
.L570:
	movl	72(%ebp), %ebp
	testl	%ebp, %ebp
	je	.L569
.L572:
	cmpb	$0, 2(%ebp)
	jns	.L570
	movl	24(%ebp), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	je	.L603
.L571:
	movl	4(%eax), %ecx
	movl	(%eax), %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	260(%ecx), %ecx
	leal	(%ecx,%ebx,4), %ecx
	movl	12(%eax), %ebx
	movl	%ecx, 56(%ebp)
	movl	8(%eax), %ecx
	movl	260(%ebx), %eax
	leal	(%eax,%ecx,4), %eax
	movl	%eax, 60(%ebp)
	pushl	$16
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	20(%esp), %ebx
	call	__my_free@PLT
	movl	$0, 24(%ebp)
	movl	72(%ebp), %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%ebp, %ebp
	jne	.L572
.L569:
	movl	8(%esp), %eax
	addl	$1, %edi
	addl	$136, %esi
	cmpl	36(%eax), %edi
	jl	.L573
.L562:
	movl	8(%esp), %eax
	movl	12(%eax), %ecx
	movl	260(%eax), %edx
	testl	%ecx, %ecx
	jle	.L574
	movl	264(%eax), %edi
	movl	160(%eax), %eax
	leal	0(,%edi,4), %ebx
	leal	(%eax,%ecx,4), %esi
	movl	%edi, 8(%esp)
	.p2align 4,,10
	.p2align 3
.L575:
	movl	(%eax), %ecx
	addl	$4, %eax
	movl	%edx, 4(%ecx)
	addl	%ebx, %edx
	cmpl	%eax, %esi
	jne	.L575
.L574:
	movl	28(%esp), %eax
	addl	$1, 12(%esp)
	movl	12(%esp), %edi
	movl	(%eax), %eax
	cmpl	%edi, %eax
	jg	.L576
	testl	%eax, %eax
	jle	.L560
	movl	24(%esp), %edi
	movl	(%edi), %esi
	leal	(%esi,%eax,4), %edi
	.p2align 4,,10
	.p2align 3
.L580:
	movl	(%esi), %eax
	movl	12(%eax), %edx
	testl	%edx, %edx
	jle	.L577
	movl	160(%eax), %eax
	leal	(%eax,%edx,4), %ebx
	.p2align 4,,10
	.p2align 3
.L579:
	movl	(%eax), %ecx
	movl	8(%ecx), %edx
	testl	%edx, %edx
	je	.L578
	movl	4(%ecx), %ecx
	movl	4(%edx), %edx
	movl	%edx, 12(%ecx)
.L578:
	addl	$4, %eax
	cmpl	%ebx, %eax
	jne	.L579
.L577:
	addl	$4, %esi
	cmpl	%esi, %edi
	jne	.L580
.L560:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L603:
	.cfi_restore_state
	movl	%eax, 16(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$635
	.cfi_def_cfa_offset 76
	pushl	32(%esp)
	.cfi_def_cfa_offset 80
	movl	20(%esp), %ebx
	call	__misc_terr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	24(%ebp), %edx
	movl	16(%esp), %eax
	jmp	.L571
	.cfi_endproc
.LFE89:
	.size	__alnk_fixup_allmods_comm_idp_areas, .-__alnk_fixup_allmods_comm_idp_areas
	.p2align 4,,15
	.globl	__alnk_init_tev_dat
	.type	__alnk_init_tev_dat, @function
__alnk_init_tev_dat:
.LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	__init_mdp@GOT(%edx), %ecx
	movl	96(%esp), %eax
	movl	112(%esp), %edi
	movl	116(%esp), %ebp
	movl	(%ecx), %esi
	movl	__tevdat_template@GOTOFF(%edx), %ecx
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	movl	%ecx, (%eax)
	movl	4+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 12(%eax)
	movl	16+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	20+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	24+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 24(%eax)
	movl	28+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 28(%eax)
	movl	32+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	36+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	40+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 40(%eax)
	movl	44+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 44(%eax)
	movl	48+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 48(%eax)
	movl	52+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 52(%eax)
	movl	56+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%edi, 36(%eax)
	movl	%ebp, 40(%eax)
	movl	%ecx, 56(%eax)
	movl	104(%esp), %ecx
	cmpl	$1, 12(%esi)
	movl	%ecx, 12(%eax)
	movl	260(%esi), %ecx
	movl	%ecx, 8(%esp)
	movl	%ecx, 32(%eax)
	jle	.L605
	movl	108(%esp), %edi
	movl	%eax, (%ecx,%edi,4)
.L605:
	cmpl	$1, 100(%esp)
	jle	.L604
	leal	__tevdat_template@GOTOFF, %edi
	leal	32+__tevdat_template@GOTOFF, %ebx
	leal	52+__tevdat_template@GOTOFF, %ebp
	movl	$1, %ecx
	movl	%edi, 56(%esp)
	leal	4+__tevdat_template@GOTOFF, %edi
	movl	%ebx, 12(%esp)
	leal	40+__tevdat_template@GOTOFF, %ebx
	movl	%ebp, 64(%esp)
	movl	%edi, 32(%esp)
	leal	8+__tevdat_template@GOTOFF, %edi
	movl	%ebx, 20(%esp)
	leal	48+__tevdat_template@GOTOFF, %ebx
	movl	%edi, 36(%esp)
	leal	12+__tevdat_template@GOTOFF, %edi
	movl	%ebx, 28(%esp)
	movl	%edi, 40(%esp)
	leal	16+__tevdat_template@GOTOFF, %edi
	movl	%edi, 44(%esp)
	leal	20+__tevdat_template@GOTOFF, %edi
	movl	%edi, 48(%esp)
	leal	24+__tevdat_template@GOTOFF, %edi
	movl	%edi, 52(%esp)
	leal	28+__tevdat_template@GOTOFF, %edi
	movl	%edi, 60(%esp)
	leal	36+__tevdat_template@GOTOFF, %edi
	movl	%edi, 16(%esp)
	leal	44+__tevdat_template@GOTOFF, %edi
	movl	%edi, 24(%esp)
	leal	56+__tevdat_template@GOTOFF, %edi
	movl	%edi, 68(%esp)
	.p2align 4,,10
	.p2align 3
.L608:
	movl	56(%esp), %edi
	addl	$60, %eax
	movl	(%edi,%edx), %ebx
	movl	32(%esp), %edi
	movl	%ebx, (%eax)
	movl	(%edi,%edx), %ebx
	movl	36(%esp), %edi
	movl	%ebx, 4(%eax)
	movl	(%edi,%edx), %ebx
	movl	40(%esp), %edi
	movl	%ebx, 8(%eax)
	movl	(%edi,%edx), %ebx
	movl	44(%esp), %edi
	movl	%ebx, 12(%eax)
	movl	(%edi,%edx), %ebx
	movl	48(%esp), %edi
	movl	%ebx, 16(%eax)
	movl	(%edi,%edx), %ebx
	movl	52(%esp), %edi
	movl	%ebx, 20(%eax)
	movl	(%edi,%edx), %ebx
	movl	60(%esp), %edi
	movl	%ebx, 24(%eax)
	movl	(%edi,%edx), %ebx
	movl	12(%esp), %edi
	movl	%ebx, 28(%eax)
	movl	(%edi,%edx), %ebx
	movl	16(%esp), %edi
	movl	%ebx, 32(%eax)
	movl	(%edi,%edx), %ebx
	movl	20(%esp), %edi
	movl	%ebx, 36(%eax)
	movl	(%edi,%edx), %ebx
	movl	%ebx, 40(%eax)
	movl	24(%esp), %edi
	movl	4(%esp), %ebp
	movl	(%edi,%edx), %ebx
	movl	28(%esp), %edi
	movl	%ebx, 44(%eax)
	movl	(%edi,%edx), %ebx
	movl	104(%esp), %edi
	movl	%ebx, 48(%eax)
	movl	64(%esp), %ebx
	movl	(%ebx,%edx), %ebx
	movl	%ebx, 52(%eax)
	movl	68(%esp), %ebx
	movl	(%ebx,%edx), %ebx
	movl	%edi, 12(%eax)
	movl	(%esp), %edi
	movl	%ebp, 40(%eax)
	movl	%ebx, 56(%eax)
	movl	264(%esi), %ebx
	movl	%edi, 36(%eax)
	movl	8(%esp), %edi
	imull	%ecx, %ebx
	cmpl	$1, 12(%esi)
	leal	(%edi,%ebx,4), %ebp
	movl	%ebp, 32(%eax)
	jle	.L607
	addl	108(%esp), %ebx
	movl	%eax, (%edi,%ebx,4)
.L607:
	addl	$1, %ecx
	cmpl	%ecx, 100(%esp)
	jne	.L608
.L604:
	addl	$76, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE91:
	.size	__alnk_init_tev_dat, .-__alnk_init_tev_dat
	.p2align 4,,15
	.globl	__alnk_init_tev_dat_nodelay
	.type	__alnk_init_tev_dat_nodelay, @function
__alnk_init_tev_dat_nodelay:
.LFB92:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	__init_mdp@GOT(%edx), %ecx
	movl	80(%esp), %eax
	movl	(%ecx), %esi
	movl	__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, (%eax)
	movl	4+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 12(%eax)
	movl	16+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	20+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	24+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 24(%eax)
	movl	28+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 28(%eax)
	movl	32+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	36+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	40+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 40(%eax)
	movl	44+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 44(%eax)
	movl	48+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 48(%eax)
	movl	52+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 52(%eax)
	movl	56+__tevdat_template@GOTOFF(%edx), %ecx
	movl	%ecx, 56(%eax)
	movl	88(%esp), %ecx
	cmpl	$1, 12(%esi)
	movl	%ecx, 12(%eax)
	movl	260(%esi), %ecx
	movl	%ecx, (%esp)
	movl	%ecx, 32(%eax)
	jle	.L612
	movl	92(%esp), %edi
	movl	%eax, (%ecx,%edi,4)
.L612:
	cmpl	$1, 84(%esp)
	jle	.L611
	leal	__tevdat_template@GOTOFF, %edi
	leal	48+__tevdat_template@GOTOFF, %ebx
	leal	52+__tevdat_template@GOTOFF, %ebp
	movl	$1, %ecx
	movl	%edi, 32(%esp)
	leal	4+__tevdat_template@GOTOFF, %edi
	movl	%ebx, 40(%esp)
	movl	%edi, 16(%esp)
	leal	8+__tevdat_template@GOTOFF, %edi
	movl	%edi, 24(%esp)
	leal	12+__tevdat_template@GOTOFF, %edi
	movl	%edi, 36(%esp)
	leal	16+__tevdat_template@GOTOFF, %edi
	movl	%edi, 44(%esp)
	leal	20+__tevdat_template@GOTOFF, %edi
	movl	%edi, 48(%esp)
	leal	24+__tevdat_template@GOTOFF, %edi
	movl	%edi, 52(%esp)
	leal	28+__tevdat_template@GOTOFF, %edi
	movl	%edi, 4(%esp)
	leal	32+__tevdat_template@GOTOFF, %edi
	movl	%edi, 8(%esp)
	leal	36+__tevdat_template@GOTOFF, %edi
	movl	%edi, 12(%esp)
	leal	40+__tevdat_template@GOTOFF, %edi
	movl	%edi, 20(%esp)
	leal	44+__tevdat_template@GOTOFF, %edi
	movl	%edi, 28(%esp)
	leal	56+__tevdat_template@GOTOFF, %edi
	movl	%edi, 56(%esp)
	.p2align 4,,10
	.p2align 3
.L615:
	movl	32(%esp), %edi
	addl	$60, %eax
	movl	(%edi,%edx), %ebx
	movl	16(%esp), %edi
	movl	%ebx, (%eax)
	movl	(%edi,%edx), %ebx
	movl	24(%esp), %edi
	movl	%ebx, 4(%eax)
	movl	(%edi,%edx), %ebx
	movl	36(%esp), %edi
	movl	%ebx, 8(%eax)
	movl	(%edi,%edx), %ebx
	movl	44(%esp), %edi
	movl	%ebx, 12(%eax)
	movl	(%edi,%edx), %ebx
	movl	48(%esp), %edi
	movl	%ebx, 16(%eax)
	movl	(%edi,%edx), %ebx
	movl	52(%esp), %edi
	movl	%ebx, 20(%eax)
	movl	(%edi,%edx), %ebx
	movl	4(%esp), %edi
	movl	%ebx, 24(%eax)
	movl	(%edi,%edx), %ebx
	movl	8(%esp), %edi
	movl	%ebx, 28(%eax)
	movl	(%edi,%edx), %ebx
	movl	12(%esp), %edi
	movl	%ebx, 32(%eax)
	movl	(%edi,%edx), %ebx
	movl	20(%esp), %edi
	movl	%ebx, 36(%eax)
	movl	(%edi,%edx), %ebx
	movl	%ebx, 40(%eax)
	movl	28(%esp), %edi
	movl	(%edi,%edx), %ebx
	movl	40(%esp), %edi
	movl	%ebx, 44(%eax)
	movl	(%edi,%edx), %ebx
	movl	88(%esp), %edi
	movl	%ebx, 48(%eax)
	movl	0(%ebp,%edx), %ebx
	movl	%ebx, 52(%eax)
	movl	56(%esp), %ebx
	movl	(%ebx,%edx), %ebx
	movl	%edi, 12(%eax)
	movl	(%esp), %edi
	movl	%ebx, 56(%eax)
	movl	264(%esi), %ebx
	imull	%ecx, %ebx
	cmpl	$1, 12(%esi)
	leal	(%edi,%ebx,4), %edi
	movl	%edi, 32(%eax)
	jle	.L614
	addl	92(%esp), %ebx
	movl	(%esp), %edi
	movl	%eax, (%edi,%ebx,4)
.L614:
	addl	$1, %ecx
	cmpl	%ecx, 84(%esp)
	jne	.L615
.L611:
	addl	$60, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE92:
	.size	__alnk_init_tev_dat_nodelay, .-__alnk_init_tev_dat_nodelay
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el
	.type	__alnk_init_nchglst_el, @function
__alnk_init_nchglst_el:
.LFB93:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	__init_mdp@GOT(%eax), %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %edx
	movl	(%ecx), %esi
	movl	__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 16(%edx)
	movl	20+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 20(%edx)
	movl	24+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 24(%edx)
	movl	28+__nchglst_template@GOTOFF(%eax), %eax
	movl	%eax, 28(%edx)
	movl	24(%esp), %eax
	movl	260(%esi), %edi
	movl	%eax, 4(%edx)
	imull	$136, 28(%esp), %eax
	addl	152(%esi), %eax
	cmpl	$-1, 32(%esp)
	movl	%edi, 24(%edx)
	movl	%eax, 20(%edx)
	je	.L619
	movl	32(%esp), %eax
	movl	%edx, (%edi,%eax,4)
.L619:
	cmpl	$1, 12(%esi)
	jle	.L618
	leal	32(%edx), %eax
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L622:
	movl	(%edx), %ebx
	movl	%ebx, (%eax)
	movl	4(%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	movl	16(%edx), %ebx
	movl	%ebx, 16(%eax)
	movl	20(%edx), %ebx
	movl	%ebx, 20(%eax)
	movl	24(%edx), %ebx
	movl	%ebx, 24(%eax)
	movl	28(%edx), %ebx
	movl	%ebx, 28(%eax)
	movl	264(%esi), %ebx
	imull	%ecx, %ebx
	cmpl	$-1, 32(%esp)
	leal	(%edi,%ebx,4), %ebp
	movl	%ebp, 24(%eax)
	je	.L621
	addl	32(%esp), %ebx
	movl	%eax, (%edi,%ebx,4)
.L621:
	addl	$1, %ecx
	addl	$32, %eax
	cmpl	%ecx, 12(%esi)
	jg	.L622
.L618:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE93:
	.size	__alnk_init_nchglst_el, .-__alnk_init_nchglst_el
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el_npp
	.type	__alnk_init_nchglst_el_npp, @function
__alnk_init_nchglst_el_npp:
.LFB94:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	__init_mdp@GOT(%eax), %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %edx
	movl	(%ecx), %esi
	movl	__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 16(%edx)
	movl	20+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 20(%edx)
	movl	24+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 24(%edx)
	movl	28+__nchglst_template@GOTOFF(%eax), %eax
	movl	36(%esp), %ecx
	movl	%eax, 28(%edx)
	movl	24(%esp), %eax
	movl	260(%esi), %edi
	movl	%eax, 4(%edx)
	imull	$136, 28(%esp), %eax
	addl	152(%esi), %eax
	movl	%eax, 20(%edx)
	movl	%ecx, 92(%eax)
	movl	%edi, 24(%edx)
	cmpl	$-1, 32(%esp)
	je	.L632
	movl	32(%esp), %eax
	movl	%edx, (%edi,%eax,4)
.L632:
	cmpl	$1, 12(%esi)
	jle	.L631
	leal	32(%edx), %eax
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L635:
	movl	(%edx), %ebx
	movl	%ebx, (%eax)
	movl	4(%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	movl	16(%edx), %ebx
	movl	%ebx, 16(%eax)
	movl	20(%edx), %ebx
	movl	%ebx, 20(%eax)
	movl	24(%edx), %ebx
	movl	%ebx, 24(%eax)
	movl	28(%edx), %ebx
	movl	%ebx, 28(%eax)
	movl	264(%esi), %ebx
	imull	%ecx, %ebx
	cmpl	$-1, 32(%esp)
	leal	(%edi,%ebx,4), %ebp
	movl	%ebp, 24(%eax)
	je	.L634
	addl	32(%esp), %ebx
	movl	%eax, (%edi,%ebx,4)
.L634:
	addl	$1, %ecx
	addl	$32, %eax
	cmpl	%ecx, 12(%esi)
	jg	.L635
.L631:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE94:
	.size	__alnk_init_nchglst_el_npp, .-__alnk_init_nchglst_el_npp
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el_rng
	.type	__alnk_init_nchglst_el_rng, @function
__alnk_init_nchglst_el_rng:
.LFB95:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	__init_mdp@GOT(%eax), %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %edx
	movl	(%ecx), %esi
	movl	__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 16(%edx)
	movl	20+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 20(%edx)
	movl	24+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 24(%edx)
	movl	28+__nchglst_template@GOTOFF(%eax), %eax
	movl	%eax, 28(%edx)
	movl	24(%esp), %eax
	movl	%eax, 4(%edx)
	movl	36(%esp), %eax
	movl	%eax, 12(%edx)
	movl	40(%esp), %eax
	movl	%eax, 16(%edx)
	imull	$136, 28(%esp), %eax
	addl	152(%esi), %eax
	movl	%eax, 20(%edx)
	movl	260(%esi), %edi
	cmpl	$-1, 32(%esp)
	movl	%edi, 24(%edx)
	je	.L645
	movl	32(%esp), %eax
	movl	%edx, (%edi,%eax,4)
.L645:
	cmpl	$1, 12(%esi)
	jle	.L644
	leal	32(%edx), %eax
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L648:
	movl	(%edx), %ebx
	movl	%ebx, (%eax)
	movl	4(%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	movl	16(%edx), %ebx
	movl	%ebx, 16(%eax)
	movl	20(%edx), %ebx
	movl	%ebx, 20(%eax)
	movl	24(%edx), %ebx
	movl	%ebx, 24(%eax)
	movl	28(%edx), %ebx
	movl	%ebx, 28(%eax)
	movl	264(%esi), %ebx
	imull	%ecx, %ebx
	cmpl	$-1, 32(%esp)
	leal	(%edi,%ebx,4), %ebp
	movl	%ebp, 24(%eax)
	je	.L647
	addl	32(%esp), %ebx
	movl	%eax, (%edi,%ebx,4)
.L647:
	addl	$1, %ecx
	addl	$32, %eax
	cmpl	%ecx, 12(%esi)
	jg	.L648
.L644:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE95:
	.size	__alnk_init_nchglst_el_rng, .-__alnk_init_nchglst_el_rng
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el_rng_npp
	.type	__alnk_init_nchglst_el_rng_npp, @function
__alnk_init_nchglst_el_rng_npp:
.LFB96:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	__init_mdp@GOT(%eax), %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %edx
	movl	(%ecx), %esi
	movl	__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 16(%edx)
	movl	20+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 20(%edx)
	movl	24+__nchglst_template@GOTOFF(%eax), %ecx
	movl	%ecx, 24(%edx)
	movl	28+__nchglst_template@GOTOFF(%eax), %eax
	movl	%eax, 28(%edx)
	movl	24(%esp), %eax
	movl	%eax, 4(%edx)
	movl	36(%esp), %eax
	movl	%eax, 12(%edx)
	movl	40(%esp), %eax
	movl	%eax, 16(%edx)
	imull	$136, 28(%esp), %eax
	addl	152(%esi), %eax
	movl	%eax, 20(%edx)
	movl	44(%esp), %ecx
	cmpl	$-1, 32(%esp)
	movl	260(%esi), %edi
	movl	%ecx, 92(%eax)
	movl	%edi, 24(%edx)
	je	.L658
	movl	32(%esp), %eax
	movl	%edx, (%edi,%eax,4)
.L658:
	cmpl	$1, 12(%esi)
	jle	.L657
	leal	32(%edx), %eax
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L661:
	movl	(%edx), %ebx
	movl	%ebx, (%eax)
	movl	4(%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	movl	16(%edx), %ebx
	movl	%ebx, 16(%eax)
	movl	20(%edx), %ebx
	movl	%ebx, 20(%eax)
	movl	24(%edx), %ebx
	movl	%ebx, 24(%eax)
	movl	28(%edx), %ebx
	movl	%ebx, 28(%eax)
	movl	264(%esi), %ebx
	imull	%ecx, %ebx
	cmpl	$-1, 32(%esp)
	leal	(%edi,%ebx,4), %ebp
	movl	%ebp, 24(%eax)
	je	.L660
	addl	32(%esp), %ebx
	movl	%eax, (%edi,%ebx,4)
.L660:
	addl	$1, %ecx
	addl	$32, %eax
	cmpl	%ecx, 12(%esi)
	jg	.L661
.L657:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE96:
	.size	__alnk_init_nchglst_el_rng_npp, .-__alnk_init_nchglst_el_rng_npp
	.p2align 4,,15
	.globl	__alnk_set_tev_gp_u
	.type	__alnk_set_tev_gp_u, @function
__alnk_set_tev_gp_u:
.LFB97:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %ecx
	movl	12(%esp), %ebx
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	16(%esp), %eax
	testl	%ecx, %ecx
	jle	.L670
	movl	__init_mdp@GOT(%edx), %edx
	imull	$60, %ecx, %ecx
	movl	(%edx), %esi
	leal	(%eax,%eax,2), %edx
	leal	4(%ebx), %eax
	leal	4(%ebx,%ecx), %ecx
	sall	$4, %edx
	addl	132(%esi), %edx
	.p2align 4,,10
	.p2align 3
.L672:
	movl	%edx, (%eax)
	addl	$60, %eax
	cmpl	%ecx, %eax
	jne	.L672
.L670:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE97:
	.size	__alnk_set_tev_gp_u, .-__alnk_set_tev_gp_u
	.p2align 4,,15
	.globl	__alnk_set_tev_nxtptr
	.type	__alnk_set_tev_nxtptr, @function
__alnk_set_tev_nxtptr:
.LFB98:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__process_next_ev_enterp@GOT(%eax), %eax
	movl	(%eax), %edx
	movl	4(%esp), %eax
	movl	%edx, 16(%eax)
	ret
	.cfi_endproc
.LFE98:
	.size	__alnk_set_tev_nxtptr, .-__alnk_set_tev_nxtptr
	.p2align 4,,15
	.globl	__alnk_set_tev_nb_free_nextevptr
	.type	__alnk_set_tev_nb_free_nextevptr, @function
__alnk_set_tev_nb_free_nextevptr:
.LFB99:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %ecx
	movl	8(%esp), %ebx
	movl	12(%esp), %edx
	testl	%ecx, %ecx
	jle	.L676
	imull	$60, %ecx, %ecx
	leal	16(%ebx), %eax
	leal	16(%ebx,%ecx), %ecx
	.p2align 4,,10
	.p2align 3
.L678:
	movl	%edx, (%eax)
	addl	$60, %eax
	cmpl	%ecx, %eax
	jne	.L678
.L676:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE99:
	.size	__alnk_set_tev_nb_free_nextevptr, .-__alnk_set_tev_nb_free_nextevptr
	.p2align 4,,15
	.globl	__alnk_tev_set_tu_nbrhs
	.type	__alnk_tev_set_tu_nbrhs, @function
__alnk_tev_set_tu_nbrhs:
.LFB100:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %eax
	movl	24(%esp), %ebx
	movl	12(%esp), %esi
	leal	7(%eax), %ecx
	testl	%eax, %eax
	cmovns	%eax, %ecx
	sall	$2, %ecx
	sarl	$5, %ecx
	testl	%ebx, %ebx
	jle	.L681
	imull	$60, %ebx, %ebx
	movl	16(%esp), %edx
	leal	4(%esi), %eax
	sall	$3, %ecx
	leal	4(%esi,%ebx), %ebx
	.p2align 4,,10
	.p2align 3
.L683:
	movl	%edx, (%eax)
	addl	$60, %eax
	addl	%ecx, %edx
	cmpl	%ebx, %eax
	jne	.L683
.L681:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE100:
	.size	__alnk_tev_set_tu_nbrhs, .-__alnk_tev_set_tu_nbrhs
	.p2align 4,,15
	.globl	__alnk_tev_set_tu_nbrhs_2s
	.type	__alnk_tev_set_tu_nbrhs_2s, @function
__alnk_tev_set_tu_nbrhs_2s:
.LFB101:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %eax
	movl	24(%esp), %ebx
	movl	12(%esp), %esi
	leal	3(%eax), %ecx
	testl	%eax, %eax
	cmovns	%eax, %ecx
	sall	$3, %ecx
	sarl	$5, %ecx
	testl	%ebx, %ebx
	jle	.L686
	imull	$60, %ebx, %ebx
	movl	16(%esp), %edx
	leal	4(%esi), %eax
	sall	$2, %ecx
	leal	4(%esi,%ebx), %ebx
	.p2align 4,,10
	.p2align 3
.L688:
	movl	%edx, (%eax)
	addl	$60, %eax
	addl	%ecx, %edx
	cmpl	%ebx, %eax
	jne	.L688
.L686:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE101:
	.size	__alnk_tev_set_tu_nbrhs_2s, .-__alnk_tev_set_tu_nbrhs_2s
	.p2align 4,,15
	.globl	__alnk_set_tev_del
	.type	__alnk_set_tev_del, @function
__alnk_set_tev_del:
.LFB102:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	24(%esp), %edx
	movl	12(%esp), %esi
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	testl	%edx, %edx
	jle	.L691
	imull	$60, %edx, %edx
	leal	36(%esi), %eax
	leal	36(%esi,%edx), %edx
	.p2align 4,,10
	.p2align 3
.L693:
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
	addl	$60, %eax
	cmpl	%edx, %eax
	jne	.L693
.L691:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE102:
	.size	__alnk_set_tev_del, .-__alnk_set_tev_del
	.p2align 4,,15
	.globl	__alnk_cp_is1v_32b_tev_dels
	.type	__alnk_cp_is1v_32b_tev_dels, @function
__alnk_cp_is1v_32b_tev_dels:
.LFB103:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %ecx
	movl	8(%esp), %ebx
	cmpl	$1, %ecx
	jle	.L696
	movl	12(%esp), %eax
	imull	$60, %ecx, %ecx
	leal	4(%eax), %edx
	leal	96(%ebx), %eax
	leal	36(%ebx,%ecx), %ecx
	.p2align 4,,10
	.p2align 3
.L698:
	movl	(%edx), %ebx
	addl	$60, %eax
	movl	$0, -56(%eax)
	addl	$4, %edx
	movl	%ebx, -60(%eax)
	cmpl	%ecx, %eax
	jne	.L698
.L696:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE103:
	.size	__alnk_cp_is1v_32b_tev_dels, .-__alnk_cp_is1v_32b_tev_dels
	.p2align 4,,15
	.globl	__alnk_set_trchan_vtx_nchgs
	.type	__alnk_set_trchan_vtx_nchgs, @function
__alnk_set_trchan_vtx_nchgs:
.LFB104:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	__init_mdp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	152(%eax), %ecx
	movl	%eax, 40(%esp)
	movl	%ecx, 4(%esp)
	movl	36(%eax), %ecx
	testl	%ecx, %ecx
	jle	.L701
	movl	__chantab@GOT(%ebx), %eax
	movl	$0, 44(%esp)
	movl	%eax, 36(%esp)
	.p2align 4,,10
	.p2align 3
.L717:
	movl	4(%esp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	movl	%eax, 28(%esp)
	je	.L703
	movl	4(%eax), %eax
	movl	36(%esp), %edi
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	addl	(%edi), %eax
	testb	$64, (%eax)
	jne	.L703
	movl	40(%esp), %eax
	movl	12(%eax), %edx
	testl	%edx, %edx
	jle	.L703
	movl	$0, 24(%esp)
	.p2align 4,,10
	.p2align 3
.L716:
	movl	40(%esp), %eax
	movl	24(%esp), %ecx
	movl	160(%eax), %eax
	movl	(%eax,%ecx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, 32(%esp)
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, 8(%esp)
	js	.L704
	.p2align 4,,10
	.p2align 3
.L715:
	imull	24(%esp), %eax
	movl	28(%esp), %esi
	movl	8(%esp), %ecx
	movl	4(%esi), %edx
	addl	%ecx, %eax
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	.L705
	movl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	36(%esp), %eax
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	movl	%eax, 12(%esp)
	movl	4(%esp), %eax
	testb	$4, 2(%eax)
	je	.L706
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	%ecx
	.cfi_def_cfa_offset 88
	pushl	%ecx
	.cfi_def_cfa_offset 92
	pushl	%eax
	.cfi_def_cfa_offset 96
	call	__net_chg_nd_store@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	.L743
.L708:
	movl	12(%esp), %eax
	movl	12(%eax), %esi
	testl	%esi, %esi
	je	.L705
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L705
	xorl	%ebp, %ebp
	jmp	.L714
	.p2align 4,,10
	.p2align 3
.L745:
	movl	4(%esi), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	%edx
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	movl	%edx, 32(%esp)
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__net_chg_nd_store@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	20(%esp), %edx
	jne	.L744
.L711:
	movl	12(%esp), %eax
	addl	$1, %ebp
	addl	$12, %esi
	cmpl	%ebp, 16(%eax)
	jbe	.L705
.L714:
	movl	(%esi), %edi
	cmpl	4(%esp), %edi
	je	.L711
	testb	$4, 2(%edi)
	jne	.L745
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	$-1
	.cfi_def_cfa_offset 88
	pushl	$-1
	.cfi_def_cfa_offset 92
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__net_chg_nd_store@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	.L711
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	movl	%edi, %eax
	movl	$-1, %edx
	pushl	44(%esp)
	.cfi_def_cfa_offset 96
	movl	32(%esp), %ecx
	addl	$1, %ebp
	addl	$12, %esi
	call	set_trchan_1vtx_nchg_fld
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	12(%esp), %eax
	cmpl	%ebp, 16(%eax)
	ja	.L714
	.p2align 4,,10
	.p2align 3
.L705:
	subl	$1, 8(%esp)
	movl	8(%esp), %eax
	cmpl	$-1, %eax
	je	.L704
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	jmp	.L715
	.p2align 4,,10
	.p2align 3
.L706:
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	$-1
	.cfi_def_cfa_offset 88
	pushl	$-1
	.cfi_def_cfa_offset 92
	pushl	16(%esp)
	.cfi_def_cfa_offset 96
	call	__net_chg_nd_store@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	.L708
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	movl	$-1, %edx
	pushl	44(%esp)
	.cfi_def_cfa_offset 96
	movl	32(%esp), %ecx
	movl	20(%esp), %eax
	call	set_trchan_1vtx_nchg_fld
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L708
	.p2align 4,,10
	.p2align 3
.L744:
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	movl	%edi, %eax
	pushl	44(%esp)
	.cfi_def_cfa_offset 96
	movl	32(%esp), %ecx
	call	set_trchan_1vtx_nchg_fld
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L711
	.p2align 4,,10
	.p2align 3
.L704:
	movl	40(%esp), %edx
	addl	$1, 24(%esp)
	movl	24(%esp), %eax
	cmpl	%eax, 12(%edx)
	jg	.L716
.L703:
	movl	40(%esp), %ecx
	addl	$1, 44(%esp)
	movl	44(%esp), %eax
	addl	$136, 4(%esp)
	cmpl	%eax, 36(%ecx)
	jg	.L717
.L701:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L743:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	44(%esp)
	.cfi_def_cfa_offset 96
	movl	32(%esp), %ecx
	movl	24(%esp), %edx
	movl	20(%esp), %eax
	call	set_trchan_1vtx_nchg_fld
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L708
	.cfi_endproc
.LFE104:
	.size	__alnk_set_trchan_vtx_nchgs, .-__alnk_set_trchan_vtx_nchgs
	.p2align 4,,15
	.globl	__alnk_set_udptab_adrs
	.type	__alnk_set_udptab_adrs, @function
__alnk_set_udptab_adrs:
.LFB106:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %ecx
	movl	__dsgn_udp_ndx@GOT(%edx), %edx
	movl	12(%esp), %eax
	movl	(%edx), %edx
	testl	%eax, %eax
	movl	(%edx,%ecx,4), %edx
	movl	8(%esp), %ecx
	movl	28(%edx), %edx
	movl	(%edx), %ebx
	movl	%ebx, (%ecx)
	je	.L746
	movl	4(%edx), %edx
	movl	%edx, (%eax)
.L746:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE106:
	.size	__alnk_set_udptab_adrs, .-__alnk_set_udptab_adrs
	.p2align 4,,15
	.globl	__alnk_set_pth_del_adr
	.type	__alnk_set_pth_del_adr, @function
__alnk_set_pth_del_adr:
.LFB107:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%esp), %edx
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	316(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	28(%eax), %edx
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE107:
	.size	__alnk_set_pth_del_adr, .-__alnk_set_pth_del_adr
	.p2align 4,,15
	.globl	__alnk_set_tchk_tchg_adr
	.type	__alnk_set_tchk_tchg_adr, @function
__alnk_set_tchk_tchg_adr:
.LFB108:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	__init_mdp@GOT(%ebx), %eax
	movl	20(%esp), %edx
	movl	(%eax), %eax
	movl	320(%eax), %eax
	movl	(%eax,%edx,4), %esi
	movzbl	(%esi), %eax
	andl	$-64, %eax
	cmpb	$-128, %al
	je	.L754
	leal	.LC3@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	pushl	$1275
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	__misc_terr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
.L754:
	movl	16(%esi), %edx
	movl	16(%esp), %eax
	movl	%edx, (%eax)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE108:
	.size	__alnk_set_tchk_tchg_adr, .-__alnk_set_tchk_tchg_adr
	.p2align 4,,15
	.globl	__alnk_set_stmt_entptr
	.type	__alnk_set_stmt_entptr, @function
__alnk_set_stmt_entptr:
.LFB109:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%esp), %edx
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	304(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%esp), %edx
	movl	%edx, 40(%eax)
	ret
	.cfi_endproc
.LFE109:
	.size	__alnk_set_stmt_entptr, .-__alnk_set_stmt_entptr
	.p2align 4,,15
	.globl	__alnk_set_npp_entptr
	.type	__alnk_set_npp_entptr, @function
__alnk_set_npp_entptr:
.LFB110:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%eax), %edx
	imull	$136, 8(%esp), %eax
	addl	152(%edx), %eax
	movl	4(%esp), %edx
	movl	%edx, 92(%eax)
	ret
	.cfi_endproc
.LFE110:
	.size	__alnk_set_npp_entptr, .-__alnk_set_npp_entptr
	.p2align 4,,15
	.globl	__alnk_set_dcevnt
	.type	__alnk_set_dcevnt, @function
__alnk_set_dcevnt:
.LFB111:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%eax), %edx
	imull	$136, 8(%esp), %eax
	addl	152(%edx), %eax
	movl	12(%esp), %edx
	movl	100(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %edx
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE111:
	.size	__alnk_set_dcevnt, .-__alnk_set_dcevnt
	.p2align 4,,15
	.globl	__alnk_set_gref
	.type	__alnk_set_gref, @function
__alnk_set_gref:
.LFB112:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	8(%esp), %eax
	movl	__init_mdp@GOT(%edx), %edx
	movl	(%edx), %ecx
	leal	(%eax,%eax,8), %edx
	movl	312(%ecx), %eax
	leal	(%eax,%edx,8), %edx
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE112:
	.size	__alnk_set_gref, .-__alnk_set_gref
	.p2align 4,,15
	.globl	__alnk_set_gate
	.type	__alnk_set_gate, @function
__alnk_set_gate:
.LFB113:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	8(%esp), %eax
	movl	__init_mdp@GOT(%edx), %edx
	leal	(%eax,%eax,2), %eax
	movl	(%edx), %edx
	sall	$4, %eax
	addl	132(%edx), %eax
	movl	4(%esp), %edx
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE113:
	.size	__alnk_set_gate, .-__alnk_set_gate
	.p2align 4,,15
	.globl	__alnk_set_conta
	.type	__alnk_set_conta, @function
__alnk_set_conta:
.LFB114:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	8(%esp), %eax
	movl	__init_mdp@GOT(%edx), %edx
	leal	(%eax,%eax,2), %eax
	movl	(%edx), %edx
	sall	$4, %eax
	addl	136(%edx), %eax
	movl	4(%esp), %edx
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE114:
	.size	__alnk_set_conta, .-__alnk_set_conta
	.p2align 4,,15
	.globl	__alnk_set_net_addr
	.type	__alnk_set_net_addr, @function
__alnk_set_net_addr:
.LFB115:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%eax), %edx
	imull	$136, 8(%esp), %eax
	addl	152(%edx), %eax
	movl	4(%esp), %edx
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE115:
	.size	__alnk_set_net_addr, .-__alnk_set_net_addr
	.p2align 4,,15
	.globl	__alnk_set_task_addr
	.type	__alnk_set_task_addr, @function
__alnk_set_task_addr:
.LFB116:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%esp), %ecx
	movl	__init_mdp@GOT(%eax), %eax
	testl	%ecx, %ecx
	movl	(%eax), %eax
	movl	248(%eax), %edx
	jle	.L767
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L768:
	addl	$1, %eax
	movl	64(%edx), %edx
	cmpl	%eax, %ecx
	jne	.L768
.L767:
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE116:
	.size	__alnk_set_task_addr, .-__alnk_set_task_addr
	.p2align 4,,15
	.globl	__alnk_set_npp_addr
	.type	__alnk_set_npp_addr, @function
__alnk_set_npp_addr:
.LFB117:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%esp), %edx
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	320(%eax), %eax
	movl	(%eax,%edx,4), %edx
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE117:
	.size	__alnk_set_npp_addr, .-__alnk_set_npp_addr
	.p2align 4,,15
	.globl	__alnk_set_xpr_addr
	.type	__alnk_set_xpr_addr, @function
__alnk_set_xpr_addr:
.LFB118:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%esp), %edx
	movl	__init_mdp@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	280(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %edx
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE118:
	.size	__alnk_set_xpr_addr, .-__alnk_set_xpr_addr
	.p2align 4,,15
	.globl	__alnk_ialst_enters
	.type	__alnk_ialst_enters, @function
__alnk_ialst_enters:
.LFB119:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%esp), %edx
	movl	__dsgn_mod_ndx@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	252(%eax), %eax
	testl	%eax, %eax
	je	.L772
	movl	4(%esp), %edx
	.p2align 4,,10
	.p2align 3
.L775:
	testb	$1, 1(%eax)
	jne	.L774
	movl	(%edx), %ecx
	movl	%ecx, 24(%eax)
.L774:
	movl	28(%eax), %eax
	addl	$4, %edx
	testl	%eax, %eax
	jne	.L775
.L772:
	rep ret
	.cfi_endproc
.LFE119:
	.size	__alnk_ialst_enters, .-__alnk_ialst_enters
	.p2align 4,,15
	.globl	__asl_get_uprel_idp
	.type	__asl_get_uprel_idp, @function
__asl_get_uprel_idp:
.LFB120:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__idp@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	4(%esp), %eax
	movl	48(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	ret
	.cfi_endproc
.LFE120:
	.size	__asl_get_uprel_idp, .-__asl_get_uprel_idp
	.p2align 4,,15
	.globl	__asl_get_downrel_idp
	.type	__asl_get_downrel_idp, @function
__asl_get_downrel_idp:
.LFB121:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	pushl	$0
	.cfi_def_cfa_offset 24
	pushl	8(%eax)
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__find_unrt_targitp@PLT
	movl	4(%eax), %eax
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE121:
	.size	__asl_get_downrel_idp, .-__asl_get_downrel_idp
	.p2align 4,,15
	.globl	__asl_sched_proc_delay
	.type	__asl_sched_proc_delay, @function
__asl_sched_proc_delay:
.LFB122:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	48(%esp), %edi
	movl	8(%esi), %ecx
	testl	%ecx, %ecx
	jne	.L794
	movl	$1, 8(%esi)
.L785:
	movl	16(%edi), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%edx, %ebp
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	movl	__cur_thd@GOT(%ebx), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	(%ecx), %ecx
	movl	%edi, 24(%esi)
	orl	%eax, %edx
	movl	%ebp, 28(%esi)
	movl	%esi, 44(%ecx)
	movl	%ecx, 4(%esi)
	jne	.L786
	movl	__p0_te_hdrp@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L795
	movl	__p0_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ebx), %eax
	movl	%esi, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%esi)
.L783:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L795:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	%esi, (%eax)
	movl	%esi, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L786:
	.cfi_restore_state
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$0, 48(%esi)
	cmpl	(%eax), %esi
	je	.L789
	movl	$0, 44(%esi)
.L789:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L796
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L791
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L797
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L794:
	.cfi_restore_state
	movl	%esi, %eax
	call	asl_loc_get_new_event
	movl	%eax, %esi
	jmp	.L785
	.p2align 4,,10
	.p2align 3
.L791:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L796:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L783
	.p2align 4,,10
	.p2align 3
.L797:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L783
	.cfi_endproc
.LFE122:
	.size	__asl_sched_proc_delay, .-__asl_sched_proc_delay
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_const
	.type	__asl_sched_proc_delay_const, @function
__asl_sched_proc_delay_const:
.LFB125:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L807
	movl	$1, 8(%ebx)
.L800:
	movl	__simtime@GOT(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	__cur_thd@GOT(%ebp), %eax
	addl	36(%ebx), %esi
	adcl	40(%ebx), %edi
	movl	(%eax), %eax
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	%ebx, 44(%eax)
	movl	%eax, 4(%ebx)
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L801
	movl	$0, 44(%ebx)
.L801:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L808
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L804
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L809
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L804:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L807:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_get_new_event
	movl	%eax, %ebx
	jmp	.L800
	.p2align 4,,10
	.p2align 3
.L808:
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L809:
	.cfi_restore_state
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE125:
	.size	__asl_sched_proc_delay_const, .-__asl_sched_proc_delay_const
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_task_const
	.type	__asl_sched_proc_delay_task_const, @function
__asl_sched_proc_delay_task_const:
.LFB126:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L819
	movl	$1, 8(%ebx)
.L812:
	movl	__simtime@GOT(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	__cur_thd@GOT(%ebp), %eax
	addl	36(%ebx), %esi
	adcl	40(%ebx), %edi
	movl	(%eax), %eax
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	%ebx, 44(%eax)
	movl	%eax, 4(%ebx)
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L813
	movl	$0, 44(%ebx)
.L813:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L820
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L816
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L821
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L816:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L819:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_get_new_event
	movl	%eax, %ebx
	jmp	.L812
	.p2align 4,,10
	.p2align 3
.L820:
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L821:
	.cfi_restore_state
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE126:
	.size	__asl_sched_proc_delay_task_const, .-__asl_sched_proc_delay_task_const
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_pnd0
	.type	__asl_sched_proc_delay_pnd0, @function
__asl_sched_proc_delay_pnd0:
.LFB127:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L828
	movl	$1, 8(%eax)
.L824:
	movl	__cur_thd@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%eax, 44(%edx)
	movl	%edx, 4(%eax)
	movl	__p0_te_hdrp@GOT(%ebx), %edx
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L829
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	__free_event_pnd0_tevp@GOT(%ebx), %edx
	movl	%eax, 44(%ecx)
	movl	(%edx), %edx
	movl	%edx, 44(%eax)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L828:
	.cfi_restore_state
	call	asl_loc_get_new_event
	jmp	.L824
	.p2align 4,,10
	.p2align 3
.L829:
	movl	__p0_te_endp@GOT(%ebx), %ecx
	movl	%eax, (%edx)
	movl	%eax, (%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE127:
	.size	__asl_sched_proc_delay_pnd0, .-__asl_sched_proc_delay_pnd0
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_task_pnd0
	.type	__asl_sched_proc_delay_task_pnd0, @function
__asl_sched_proc_delay_task_pnd0:
.LFB535:
	.cfi_startproc
	jmp	__asl_sched_proc_delay_pnd0
	.cfi_endproc
.LFE535:
	.size	__asl_sched_proc_delay_task_pnd0, .-__asl_sched_proc_delay_task_pnd0
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_nt
	.type	__asl_sched_proc_delay_nt, @function
__asl_sched_proc_delay_nt:
.LFB129:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %eax
	movl	60(%esp), %esi
	movl	16(%eax), %edx
	movl	$1, 8(%esi)
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%edi, 24(%esi)
	orl	%eax, %edx
	movl	%ebp, 28(%esi)
	jne	.L832
	movl	__p0_te_hdrp@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L840
	movl	__p0_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ebx), %eax
	movl	%esi, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%esi)
.L831:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L840:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	%esi, (%eax)
	movl	%esi, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L832:
	.cfi_restore_state
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$0, 48(%esi)
	cmpl	(%eax), %esi
	je	.L835
	movl	$0, 44(%esi)
.L835:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L841
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L837
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L842
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L837:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L841:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L831
	.p2align 4,,10
	.p2align 3
.L842:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L831
	.cfi_endproc
.LFE129:
	.size	__asl_sched_proc_delay_nt, .-__asl_sched_proc_delay_nt
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_const_nt
	.type	__asl_sched_proc_delay_const_nt, @function
__asl_sched_proc_delay_const_nt:
.LFB130:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	__simtime@GOT(%ecx), %eax
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	__cur_tevp@GOT(%ecx), %eax
	addl	36(%ebx), %esi
	adcl	40(%ebx), %edi
	movl	$1, 8(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	je	.L844
	movl	$0, 44(%ebx)
.L844:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ecx), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L850
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L847
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L851
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L847:
	.cfi_restore_state
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L850:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L851:
	.cfi_restore_state
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE130:
	.size	__asl_sched_proc_delay_const_nt, .-__asl_sched_proc_delay_const_nt
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_pnd0_nt
	.type	__asl_sched_proc_delay_pnd0_nt, @function
__asl_sched_proc_delay_pnd0_nt:
.LFB131:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L858
	movl	$1, 8(%eax)
.L854:
	movl	__simtime@GOT(%ebx), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	movl	%edx, 24(%eax)
	movl	__p0_te_hdrp@GOT(%ebx), %edx
	movl	%ecx, 28(%eax)
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L859
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	__free_event_pnd0_tevp@GOT(%ebx), %edx
	movl	%eax, 44(%ecx)
	movl	(%edx), %edx
	movl	%edx, 44(%eax)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L858:
	.cfi_restore_state
	call	asl_loc_get_new_event
	jmp	.L854
	.p2align 4,,10
	.p2align 3
.L859:
	movl	__p0_te_endp@GOT(%ebx), %ecx
	movl	%eax, (%edx)
	movl	%eax, (%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE131:
	.size	__asl_sched_proc_delay_pnd0_nt, .-__asl_sched_proc_delay_pnd0_nt
	.p2align 4,,15
	.globl	__asl_arm_ectrl
	.type	__asl_arm_ectrl, @function
__asl_arm_ectrl:
.LFB132:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %edx
	movl	__cur_thd@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, 44(%eax)
	movl	%eax, 4(%edx)
	movl	8(%esp), %edx
	movl	%edx, 52(%eax)
	ret
	.cfi_endproc
.LFE132:
	.size	__asl_arm_ectrl, .-__asl_arm_ectrl
	.p2align 4,,15
	.globl	__asl_setsav_assoc_tsk
	.type	__asl_setsav_assoc_tsk, @function
__asl_setsav_assoc_tsk:
.LFB133:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %ecx
	movl	__cur_thd@GOT(%eax), %eax
	movl	16(%ecx), %ecx
	movl	(%eax), %edx
	movl	48(%edx), %eax
	movl	%ecx, 48(%edx)
	ret
	.cfi_endproc
.LFE133:
	.size	__asl_setsav_assoc_tsk, .-__asl_setsav_assoc_tsk
	.p2align 4,,15
	.globl	__asl_repl_curth_itp
	.type	__asl_repl_curth_itp, @function
__asl_repl_curth_itp:
.LFB134:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__cur_thd@GOT(%eax), %edx
	movl	__idp@GOT(%eax), %eax
	movl	(%edx), %edx
	movl	(%eax), %eax
	movl	%eax, 60(%edx)
	ret
	.cfi_endproc
.LFE134:
	.size	__asl_repl_curth_itp, .-__asl_repl_curth_itp
	.p2align 4,,15
	.globl	__asl_repl_itstk_top
	.type	__asl_repl_itstk_top, @function
__asl_repl_itstk_top:
.LFB135:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__cur_thd@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	ret
	.cfi_endproc
.LFE135:
	.size	__asl_repl_itstk_top, .-__asl_repl_itstk_top
	.p2align 4,,15
	.globl	__asl_bld_nb_nodelay_tev
	.type	__asl_bld_nb_nodelay_tev, @function
__asl_bld_nb_nodelay_tev:
.LFB136:
	.cfi_startproc
	movl	4(%esp), %eax
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L864
	movl	__nb_te_endp@GOT(%edx), %edx
	movl	$1, 8(%eax)
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	%eax, 44(%ecx)
.L864:
	rep ret
	.cfi_endproc
.LFE136:
	.size	__asl_bld_nb_nodelay_tev, .-__asl_bld_nb_nodelay_tev
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl
	.type	__asl_sched_nbrhs_scalar_dctrl, @function
__asl_sched_nbrhs_scalar_dctrl:
.LFB137:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %eax
	movl	48(%esp), %esi
	movl	52(%esp), %ebp
	movl	%eax, 12(%esp)
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L877
	movl	$1, 8(%esi)
.L868:
	movl	16(%ebp), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, 16(%esp)
	movl	%eax, %edi
	movzbl	28(%esp), %eax
	movl	%edx, 20(%esp)
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movb	%al, 3(%esi)
	movl	4(%esp), %edx
	movl	(%esp), %eax
	movl	%edi, 24(%esi)
	movl	%ebp, 28(%esi)
	orl	%eax, %edx
	jne	.L869
	movl	__nb_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%esi, 44(%edx)
.L866:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L869:
	.cfi_restore_state
	movl	__last_nb_hp@GOT(%ebx), %eax
	movl	%eax, (%esp)
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	xorl	%edi, %edx
	xorl	%ebp, %ecx
	orl	%edx, %ecx
	je	.L878
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L879
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L874
	movl	(%esp), %eax
	movl	%edx, (%eax)
	movl	24(%edx), %eax
	movl	%esi, 24(%edx)
	testl	%eax, %eax
	je	.L880
	movl	%esi, 44(%eax)
	jmp	.L866
	.p2align 4,,10
	.p2align 3
.L877:
	movl	%esi, %eax
	call	asl_loc_get_new_event_nb
	movl	%eax, %esi
	jmp	.L868
	.p2align 4,,10
	.p2align 3
.L874:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L878:
	.cfi_restore_state
	movl	24(%eax), %edx
	movl	%esi, 24(%eax)
	testl	%edx, %edx
	je	.L881
	movl	%esi, 44(%edx)
	jmp	.L866
	.p2align 4,,10
	.p2align 3
.L881:
	movl	%esi, 20(%eax)
	jmp	.L866
	.p2align 4,,10
	.p2align 3
.L879:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	(%esp), %ebx
	movl	%esi, 24(%eax)
	movl	%esi, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%ebx)
	jmp	.L866
	.p2align 4,,10
	.p2align 3
.L880:
	movl	%esi, 20(%edx)
	jmp	.L866
	.cfi_endproc
.LFE137:
	.size	__asl_sched_nbrhs_scalar_dctrl, .-__asl_sched_nbrhs_scalar_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl_const
	.type	__asl_sched_nbrhs_scalar_dctrl_const, @function
__asl_sched_nbrhs_scalar_dctrl_const:
.LFB138:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	52(%esp), %edi
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L892
	movl	$1, 8(%ebx)
.L884:
	movl	__simtime@GOT(%esi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	adcl	40(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%eax, 24(%ebx)
	movl	%edi, %eax
	movl	__last_nb_hp@GOT(%esi), %edi
	movb	%al, 3(%ebx)
	movl	%edx, 12(%esp)
	movl	8(%esp), %eax
	movl	12(%esp), %ebp
	movl	%edx, 28(%ebx)
	movl	(%edi), %ecx
	xorl	4(%ecx), %eax
	xorl	8(%ecx), %ebp
	orl	%ebp, %eax
	je	.L893
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	%edx, %ecx
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L894
	movl	8(%esp), %edx
	movl	4(%esi), %eax
	movl	12(%esp), %ecx
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	jne	.L889
	movl	24(%esi), %eax
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	testl	%eax, %eax
	je	.L895
.L890:
	movl	%ebx, 44(%eax)
.L882:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L889:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L893:
	.cfi_restore_state
	movl	24(%ecx), %eax
	movl	%ebx, 24(%ecx)
	testl	%eax, %eax
	jne	.L890
	movl	%ebx, 20(%ecx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L892:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_get_new_event_nb
	movl	%eax, %ebx
	jmp	.L884
	.p2align 4,,10
	.p2align 3
.L894:
	movl	%ebx, %eax
	movl	%ecx, %edx
	call	asl_loc_add_new_heap_time
	movl	%eax, (%edi)
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L895:
	.cfi_restore_state
	movl	%ebx, 20(%esi)
	jmp	.L882
	.cfi_endproc
.LFE138:
	.size	__asl_sched_nbrhs_scalar_dctrl_const, .-__asl_sched_nbrhs_scalar_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl_const_t
	.type	__asl_sched_nbrhs_scalar_dctrl_const_t, @function
__asl_sched_nbrhs_scalar_dctrl_const_t:
.LFB139:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	movl	20(%esp), %edi
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L904
	movl	$1, 8(%ebx)
.L898:
	movl	%edi, %eax
	movl	__last_nb_hp@GOT(%esi), %edi
	movb	%al, 3(%ebx)
	movl	(%edi), %eax
	testl	%eax, %eax
	je	.L905
	movl	24(%eax), %edx
	movl	%ebx, 44(%edx)
	movl	%ebx, 24(%eax)
.L896:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L904:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_get_new_event_nb
	movl	%eax, %ebx
	jmp	.L898
	.p2align 4,,10
	.p2align 3
.L905:
	movl	__simtime@GOT(%esi), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	adcl	40(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	%edx, %ecx
	movl	%edx, 28(%ebx)
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L906
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	4(%esi), %eax
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	je	.L907
	movl	%esi, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L907:
	.cfi_restore_state
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	movl	%ebx, 20(%esi)
	jmp	.L896
	.p2align 4,,10
	.p2align 3
.L906:
	movl	%ecx, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%eax, (%edi)
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	jmp	.L896
	.cfi_endproc
.LFE139:
	.size	__asl_sched_nbrhs_scalar_dctrl_const_t, .-__asl_sched_nbrhs_scalar_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl_const_last
	.type	__asl_sched_nbrhs_scalar_dctrl_const_last, @function
__asl_sched_nbrhs_scalar_dctrl_const_last:
.LFB140:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L912
	movl	$1, 8(%eax)
.L910:
	movl	20(%esp), %edx
	movb	%dl, 3(%eax)
	movl	__last_nb_hp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	24(%edx), %ecx
	movl	%eax, 44(%ecx)
	movl	%eax, 24(%edx)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L912:
	.cfi_restore_state
	call	asl_loc_get_new_event_nb
	jmp	.L910
	.cfi_endproc
.LFE140:
	.size	__asl_sched_nbrhs_scalar_dctrl_const_last, .-__asl_sched_nbrhs_scalar_dctrl_const_last
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_nomem_dctrl_const
	.type	__asl_sched_nbrhs_nomem_dctrl_const, @function
__asl_sched_nbrhs_nomem_dctrl_const:
.LFB141:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L923
	movl	$1, 8(%ebx)
.L915:
	movl	__simtime@GOT(%esi), %eax
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	movl	(%edi), %ecx
	adcl	40(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	xorl	4(%ecx), %eax
	movl	12(%esp), %ebp
	xorl	8(%ecx), %ebp
	movl	%edx, 28(%ebx)
	orl	%ebp, %eax
	je	.L924
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	%edx, %ecx
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L925
	movl	8(%esp), %edx
	movl	4(%esi), %eax
	movl	12(%esp), %ecx
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	jne	.L920
	movl	24(%esi), %eax
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	testl	%eax, %eax
	je	.L926
.L921:
	movl	%ebx, 44(%eax)
.L913:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L920:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L924:
	.cfi_restore_state
	movl	24(%ecx), %eax
	movl	%ebx, 24(%ecx)
	testl	%eax, %eax
	jne	.L921
	movl	%ebx, 20(%ecx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L923:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_get_new_event_nb
	movl	%eax, %ebx
	jmp	.L915
	.p2align 4,,10
	.p2align 3
.L925:
	movl	%ebx, %eax
	movl	%ecx, %edx
	call	asl_loc_add_new_heap_time
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L926:
	.cfi_restore_state
	movl	%ebx, 20(%esi)
	jmp	.L913
	.cfi_endproc
.LFE141:
	.size	__asl_sched_nbrhs_nomem_dctrl_const, .-__asl_sched_nbrhs_nomem_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_nomem_dctrl_const_t
	.type	__asl_sched_nbrhs_nomem_dctrl_const_t, @function
__asl_sched_nbrhs_nomem_dctrl_const_t:
.LFB142:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L935
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	$1, 8(%ebx)
	movl	(%edi), %eax
	testl	%eax, %eax
	je	.L936
.L930:
	movl	24(%eax), %edx
	movl	%ebx, 44(%edx)
	movl	%ebx, 24(%eax)
.L927:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L935:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_get_new_event_nb
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	%eax, %ebx
	movl	(%edi), %eax
	testl	%eax, %eax
	jne	.L930
.L936:
	movl	__simtime@GOT(%esi), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	adcl	40(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	%edx, %ecx
	movl	%edx, 28(%ebx)
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L937
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	4(%esi), %eax
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	je	.L938
	movl	%esi, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L938:
	.cfi_restore_state
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	movl	%ebx, 20(%esi)
	jmp	.L927
	.p2align 4,,10
	.p2align 3
.L937:
	movl	%ecx, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%eax, (%edi)
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	jmp	.L927
	.cfi_endproc
.LFE142:
	.size	__asl_sched_nbrhs_nomem_dctrl_const_t, .-__asl_sched_nbrhs_nomem_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_nomem_dctrl_const_last
	.type	__asl_sched_nbrhs_nomem_dctrl_const_last, @function
__asl_sched_nbrhs_nomem_dctrl_const_last:
.LFB143:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L943
	movl	$1, 8(%eax)
.L941:
	movl	__last_nb_hp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	24(%edx), %ecx
	movl	%eax, 44(%ecx)
	movl	%eax, 24(%edx)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L943:
	.cfi_restore_state
	call	asl_loc_get_new_event_nb
	jmp	.L941
	.cfi_endproc
.LFE143:
	.size	__asl_sched_nbrhs_nomem_dctrl_const_last, .-__asl_sched_nbrhs_nomem_dctrl_const_last
	.p2align 4,,15
	.globl	__asl_schd_nb_vardel_rhsconst_dctrl
	.type	__asl_schd_nb_vardel_rhsconst_dctrl, @function
__asl_schd_nb_vardel_rhsconst_dctrl:
.LFB144:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	48(%esp), %edi
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L955
	movl	$1, 8(%esi)
.L946:
	movl	16(%edi), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%edi, 24(%esi)
	orl	%eax, %edx
	movl	%ebp, 28(%esi)
	jne	.L947
	movl	__nb_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%esi, 44(%edx)
.L944:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L947:
	.cfi_restore_state
	movl	__last_nb_hp@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	xorl	%edi, %edx
	xorl	%ebp, %ecx
	orl	%edx, %ecx
	je	.L956
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L957
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L952
	movl	8(%esp), %eax
	movl	%edx, (%eax)
	movl	24(%edx), %eax
	movl	%esi, 24(%edx)
	testl	%eax, %eax
	je	.L958
	movl	%esi, 44(%eax)
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L955:
	movl	%esi, %eax
	call	asl_loc_get_new_event_nb
	movl	%eax, %esi
	jmp	.L946
	.p2align 4,,10
	.p2align 3
.L952:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L956:
	.cfi_restore_state
	movl	24(%eax), %edx
	movl	%esi, 24(%eax)
	testl	%edx, %edx
	je	.L959
	movl	%esi, 44(%edx)
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L959:
	movl	%esi, 20(%eax)
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L957:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	8(%esp), %ebx
	movl	%esi, 24(%eax)
	movl	%esi, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%ebx)
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L958:
	movl	%esi, 20(%edx)
	jmp	.L944
	.cfi_endproc
.LFE144:
	.size	__asl_schd_nb_vardel_rhsconst_dctrl, .-__asl_schd_nb_vardel_rhsconst_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl
	.type	__asl_sched_nbrhs_dctrl, @function
__asl_sched_nbrhs_dctrl:
.LFB145:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L971
	movl	$1, 8(%esi)
.L962:
	movl	48(%esp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	16(%eax), %edx
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%edi, 24(%esi)
	orl	%eax, %edx
	movl	%ebp, 28(%esi)
	jne	.L963
	movl	__nb_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%esi, 44(%edx)
.L964:
	movl	4(%esi), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L963:
	.cfi_restore_state
	movl	__last_nb_hp@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	xorl	%edi, %edx
	xorl	%ebp, %ecx
	orl	%edx, %ecx
	je	.L972
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L973
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L968
	movl	8(%esp), %eax
	movl	%edx, (%eax)
	movl	24(%edx), %eax
	movl	%esi, 24(%edx)
	testl	%eax, %eax
	je	.L974
	movl	%esi, 44(%eax)
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L971:
	movl	56(%esp), %edx
	movl	%esi, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %esi
	jmp	.L962
	.p2align 4,,10
	.p2align 3
.L968:
	movl	%esi, %eax
	call	asl_loc_nb_conflict_list
	movl	4(%esi), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L972:
	.cfi_restore_state
	movl	24(%eax), %edx
	movl	%esi, 24(%eax)
	testl	%edx, %edx
	je	.L975
	movl	%esi, 44(%edx)
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L975:
	movl	%esi, 20(%eax)
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L973:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	8(%esp), %ebx
	movl	%esi, 24(%eax)
	movl	%esi, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%ebx)
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L974:
	movl	%esi, 20(%edx)
	jmp	.L964
	.cfi_endproc
.LFE145:
	.size	__asl_sched_nbrhs_dctrl, .-__asl_sched_nbrhs_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl_const
	.type	__asl_sched_nbrhs_dctrl_const, @function
__asl_sched_nbrhs_dctrl_const:
.LFB146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L986
	movl	$1, 8(%ebx)
.L978:
	movl	__simtime@GOT(%esi), %eax
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	movl	(%edi), %ecx
	adcl	40(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	xorl	4(%ecx), %eax
	movl	12(%esp), %ebp
	xorl	8(%ecx), %ebp
	movl	%edx, 28(%ebx)
	orl	%ebp, %eax
	je	.L987
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	%edx, %ecx
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L988
	movl	8(%esp), %edx
	movl	4(%esi), %eax
	movl	12(%esp), %ecx
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	jne	.L983
	movl	24(%esi), %eax
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	testl	%eax, %eax
	je	.L989
.L984:
	movl	%ebx, 44(%eax)
.L981:
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L983:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%esi, %edx
	call	asl_loc_nb_conflict_list
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L987:
	.cfi_restore_state
	movl	24(%ecx), %eax
	movl	%ebx, 24(%ecx)
	testl	%eax, %eax
	jne	.L984
	movl	%ebx, 20(%ecx)
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L986:
	.cfi_restore_state
	movl	52(%esp), %edx
	movl	%ebx, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %ebx
	jmp	.L978
	.p2align 4,,10
	.p2align 3
.L988:
	movl	%ebx, %eax
	movl	%ecx, %edx
	call	asl_loc_add_new_heap_time
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%edi)
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L989:
	.cfi_restore_state
	movl	%ebx, 20(%esi)
	jmp	.L981
	.cfi_endproc
.LFE146:
	.size	__asl_sched_nbrhs_dctrl_const, .-__asl_sched_nbrhs_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl_const_t
	.type	__asl_sched_nbrhs_dctrl_const_t, @function
__asl_sched_nbrhs_dctrl_const_t:
.LFB147:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L998
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	$1, 8(%ebx)
	movl	4(%ebx), %ebp
	movl	(%edi), %eax
	testl	%eax, %eax
	je	.L999
.L993:
	movl	24(%eax), %edx
	movl	%ebx, 44(%edx)
	movl	%ebx, 24(%eax)
.L990:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L998:
	.cfi_restore_state
	movl	36(%esp), %edx
	movl	%ebx, %eax
	call	asl_loc_get_new_nbmem_event
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	%eax, %ebx
	movl	4(%ebx), %ebp
	movl	(%edi), %eax
	testl	%eax, %eax
	jne	.L993
.L999:
	movl	__simtime@GOT(%esi), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	adcl	40(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	%edx, %ecx
	movl	%edx, 28(%ebx)
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L1000
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	4(%esi), %eax
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	je	.L1001
	movl	%esi, %edx
	movl	%ebx, %eax
	call	asl_loc_nb_conflict_list
	jmp	.L990
	.p2align 4,,10
	.p2align 3
.L1001:
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	movl	%ebx, 20(%esi)
	jmp	.L990
	.p2align 4,,10
	.p2align 3
.L1000:
	movl	%ecx, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%eax, (%edi)
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	jmp	.L990
	.cfi_endproc
.LFE147:
	.size	__asl_sched_nbrhs_dctrl_const_t, .-__asl_sched_nbrhs_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl_const_last
	.type	__asl_sched_nbrhs_dctrl_const_last, @function
__asl_sched_nbrhs_dctrl_const_last:
.LFB148:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L1006
	movl	$1, 8(%eax)
.L1004:
	movl	__last_nb_hp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	24(%edx), %ecx
	movl	%eax, 44(%ecx)
	movl	%eax, 24(%edx)
	movl	4(%eax), %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1006:
	.cfi_restore_state
	movl	20(%esp), %edx
	call	asl_loc_get_new_nbmem_event
	jmp	.L1004
	.cfi_endproc
.LFE148:
	.size	__asl_sched_nbrhs_dctrl_const_last, .-__asl_sched_nbrhs_dctrl_const_last
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl
	.type	__asl_sched_nbrhs_varndx_dctrl, @function
__asl_sched_nbrhs_varndx_dctrl:
.LFB149:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %esi
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L1018
	movl	$1, 8(%esi)
.L1009:
	movl	48(%esp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	16(%eax), %edx
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	movl	68(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%edi, 24(%esi)
	movl	%ecx, 52(%esi)
	orl	%eax, %edx
	movl	%ebp, 28(%esi)
	jne	.L1010
	movl	__nb_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%esi, 44(%edx)
.L1011:
	movl	4(%esi), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1010:
	.cfi_restore_state
	movl	__last_nb_hp@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	xorl	%edi, %edx
	xorl	%ebp, %ecx
	orl	%edx, %ecx
	je	.L1019
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L1020
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L1015
	movl	8(%esp), %eax
	movl	%edx, (%eax)
	movl	24(%edx), %eax
	movl	%esi, 24(%edx)
	testl	%eax, %eax
	je	.L1021
	movl	%esi, 44(%eax)
	jmp	.L1011
	.p2align 4,,10
	.p2align 3
.L1018:
	movl	56(%esp), %edx
	movl	%esi, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %esi
	jmp	.L1009
	.p2align 4,,10
	.p2align 3
.L1015:
	movl	%esi, %eax
	call	asl_loc_nb_conflict_list
	movl	4(%esi), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1019:
	.cfi_restore_state
	movl	24(%eax), %edx
	movl	%esi, 24(%eax)
	testl	%edx, %edx
	je	.L1022
	movl	%esi, 44(%edx)
	jmp	.L1011
	.p2align 4,,10
	.p2align 3
.L1022:
	movl	%esi, 20(%eax)
	jmp	.L1011
	.p2align 4,,10
	.p2align 3
.L1020:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	8(%esp), %ebx
	movl	%esi, 24(%eax)
	movl	%esi, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%ebx)
	jmp	.L1011
	.p2align 4,,10
	.p2align 3
.L1021:
	movl	%esi, 20(%edx)
	jmp	.L1011
	.cfi_endproc
.LFE149:
	.size	__asl_sched_nbrhs_varndx_dctrl, .-__asl_sched_nbrhs_varndx_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const
	.type	__asl_sched_nbrhs_varndx_dctrl_const, @function
__asl_sched_nbrhs_varndx_dctrl_const:
.LFB150:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L1033
	movl	$1, 8(%ebx)
.L1025:
	movl	__simtime@GOT(%esi), %eax
	movl	48(%esp), %ecx
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	movl	%ecx, 52(%ebx)
	adcl	40(%ebx), %edx
	movl	(%edi), %ecx
	movl	%eax, 24(%ebx)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	xorl	4(%ecx), %eax
	movl	12(%esp), %ebp
	xorl	8(%ecx), %ebp
	movl	%edx, 28(%ebx)
	orl	%ebp, %eax
	je	.L1034
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	%edx, %ecx
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L1035
	movl	8(%esp), %edx
	movl	4(%esi), %eax
	movl	12(%esp), %ecx
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	jne	.L1030
	movl	24(%esi), %eax
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	testl	%eax, %eax
	je	.L1036
.L1031:
	movl	%ebx, 44(%eax)
.L1028:
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1030:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%esi, %edx
	call	asl_loc_nb_conflict_list
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1034:
	.cfi_restore_state
	movl	24(%ecx), %eax
	movl	%ebx, 24(%ecx)
	testl	%eax, %eax
	jne	.L1031
	movl	%ebx, 20(%ecx)
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1033:
	.cfi_restore_state
	movl	52(%esp), %edx
	movl	%ebx, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %ebx
	jmp	.L1025
	.p2align 4,,10
	.p2align 3
.L1035:
	movl	%ebx, %eax
	movl	%ecx, %edx
	call	asl_loc_add_new_heap_time
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%edi)
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1036:
	.cfi_restore_state
	movl	%ebx, 20(%esi)
	jmp	.L1028
	.cfi_endproc
.LFE150:
	.size	__asl_sched_nbrhs_varndx_dctrl_const, .-__asl_sched_nbrhs_varndx_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_t
	.type	__asl_sched_nbrhs_varndx_dctrl_const_t, @function
__asl_sched_nbrhs_varndx_dctrl_const_t:
.LFB151:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L1045
	movl	$1, 8(%ebx)
.L1039:
	movl	32(%esp), %eax
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	4(%ebx), %ebp
	movl	%eax, 52(%ebx)
	movl	(%edi), %eax
	testl	%eax, %eax
	je	.L1046
	movl	24(%eax), %edx
	movl	%ebx, 44(%edx)
	movl	%ebx, 24(%eax)
.L1037:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1045:
	.cfi_restore_state
	movl	36(%esp), %edx
	movl	%ebx, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %ebx
	jmp	.L1039
	.p2align 4,,10
	.p2align 3
.L1046:
	movl	__simtime@GOT(%esi), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	adcl	40(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	%edx, %ecx
	movl	%edx, 28(%ebx)
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L1047
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	4(%esi), %eax
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	je	.L1048
	movl	%esi, %edx
	movl	%ebx, %eax
	call	asl_loc_nb_conflict_list
	jmp	.L1037
	.p2align 4,,10
	.p2align 3
.L1048:
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	movl	%ebx, 20(%esi)
	jmp	.L1037
	.p2align 4,,10
	.p2align 3
.L1047:
	movl	%ecx, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%eax, (%edi)
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	jmp	.L1037
	.cfi_endproc
.LFE151:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_t, .-__asl_sched_nbrhs_varndx_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nb_pnd0_lhs_varndx
	.type	__asl_sched_nb_pnd0_lhs_varndx, @function
__asl_sched_nb_pnd0_lhs_varndx:
.LFB152:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	24(%esp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L1053
	movl	$1, 8(%eax)
.L1051:
	movl	__simtime@GOT(%ebx), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	movl	%edx, 24(%eax)
	movl	16(%esp), %edx
	movl	%ecx, 28(%eax)
	movl	%edx, 52(%eax)
	movl	__nb_te_endp@GOT(%ebx), %edx
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	%eax, 44(%ecx)
	movl	4(%eax), %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1053:
	.cfi_restore_state
	movl	20(%esp), %edx
	call	asl_loc_get_new_nbmem_event
	jmp	.L1051
	.cfi_endproc
.LFE152:
	.size	__asl_sched_nb_pnd0_lhs_varndx, .-__asl_sched_nb_pnd0_lhs_varndx
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_sel_dctrl
	.type	__asl_sched_nbrhs_varndx_sel_dctrl, @function
__asl_sched_nbrhs_varndx_sel_dctrl:
.LFB153:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %esi
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L1065
	movl	$1, 8(%esi)
.L1056:
	movl	48(%esp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	16(%eax), %edx
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%edx, %ebp
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	movl	68(%esp), %ecx
	movl	%ecx, 52(%esi)
	movl	80(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%edi, 24(%esi)
	movl	%ebp, 28(%esi)
	movl	%ecx, 56(%esi)
	orl	%eax, %edx
	jne	.L1057
	movl	__nb_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%esi, 44(%edx)
.L1058:
	movl	4(%esi), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1057:
	.cfi_restore_state
	movl	__last_nb_hp@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	xorl	%edi, %edx
	xorl	%ebp, %ecx
	orl	%edx, %ecx
	je	.L1066
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L1067
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L1062
	movl	8(%esp), %eax
	movl	%edx, (%eax)
	movl	24(%edx), %eax
	movl	%esi, 24(%edx)
	testl	%eax, %eax
	je	.L1068
	movl	%esi, 44(%eax)
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1065:
	movl	56(%esp), %edx
	movl	%esi, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %esi
	jmp	.L1056
	.p2align 4,,10
	.p2align 3
.L1062:
	movl	%esi, %eax
	call	asl_loc_nb_conflict_list
	movl	4(%esi), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1066:
	.cfi_restore_state
	movl	24(%eax), %edx
	movl	%esi, 24(%eax)
	testl	%edx, %edx
	je	.L1069
	movl	%esi, 44(%edx)
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1069:
	movl	%esi, 20(%eax)
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1067:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	8(%esp), %ebx
	movl	%esi, 24(%eax)
	movl	%esi, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%ebx)
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1068:
	movl	%esi, 20(%edx)
	jmp	.L1058
	.cfi_endproc
.LFE153:
	.size	__asl_sched_nbrhs_varndx_sel_dctrl, .-__asl_sched_nbrhs_varndx_sel_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_sel_const
	.type	__asl_sched_nbrhs_varndx_dctrl_sel_const, @function
__asl_sched_nbrhs_varndx_dctrl_sel_const:
.LFB154:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L1080
	movl	$1, 8(%ebx)
.L1072:
	movl	48(%esp), %ecx
	movl	__simtime@GOT(%esi), %eax
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	%ecx, 52(%ebx)
	movl	60(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	adcl	40(%ebx), %edx
	movl	%ecx, 56(%ebx)
	movl	(%edi), %ecx
	movl	%eax, 24(%ebx)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	xorl	4(%ecx), %eax
	movl	12(%esp), %ebp
	xorl	8(%ecx), %ebp
	movl	%edx, 28(%ebx)
	orl	%ebp, %eax
	je	.L1081
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	%edx, %ecx
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L1082
	movl	8(%esp), %edx
	movl	4(%esi), %eax
	movl	12(%esp), %ecx
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	jne	.L1077
	movl	24(%esi), %eax
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	testl	%eax, %eax
	je	.L1083
.L1078:
	movl	%ebx, 44(%eax)
.L1075:
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1077:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%esi, %edx
	call	asl_loc_nb_conflict_list
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1081:
	.cfi_restore_state
	movl	24(%ecx), %eax
	movl	%ebx, 24(%ecx)
	testl	%eax, %eax
	jne	.L1078
	movl	%ebx, 20(%ecx)
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1080:
	.cfi_restore_state
	movl	52(%esp), %edx
	movl	%ebx, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %ebx
	jmp	.L1072
	.p2align 4,,10
	.p2align 3
.L1082:
	movl	%ebx, %eax
	movl	%ecx, %edx
	call	asl_loc_add_new_heap_time
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%edi)
	movl	4(%ebx), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1083:
	.cfi_restore_state
	movl	%ebx, 20(%esi)
	jmp	.L1075
	.cfi_endproc
.LFE154:
	.size	__asl_sched_nbrhs_varndx_dctrl_sel_const, .-__asl_sched_nbrhs_varndx_dctrl_sel_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_sel_t
	.type	__asl_sched_nbrhs_varndx_dctrl_const_sel_t, @function
__asl_sched_nbrhs_varndx_dctrl_const_sel_t:
.LFB155:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	.L1092
	movl	$1, 8(%ebx)
.L1086:
	movl	32(%esp), %eax
	movl	__last_nb_hp@GOT(%esi), %edi
	movl	4(%ebx), %ebp
	movl	%eax, 52(%ebx)
	movl	44(%esp), %eax
	movl	%eax, 56(%ebx)
	movl	(%edi), %eax
	testl	%eax, %eax
	je	.L1093
	movl	24(%eax), %edx
	movl	%ebx, 44(%edx)
	movl	%ebx, 24(%eax)
.L1084:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1092:
	.cfi_restore_state
	movl	36(%esp), %edx
	movl	%ebx, %eax
	call	asl_loc_get_new_nbmem_event
	movl	%eax, %ebx
	jmp	.L1086
	.p2align 4,,10
	.p2align 3
.L1093:
	movl	__simtime@GOT(%esi), %eax
	movl	__time_hash@GOT(%esi), %esi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%ebx), %eax
	adcl	40(%ebx), %edx
	movl	%eax, 24(%ebx)
	movl	%edx, %ecx
	movl	%edx, 28(%ebx)
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%esi,%ecx,4), %esi
	testl	%esi, %esi
	je	.L1094
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	4(%esi), %eax
	xorl	%edx, %eax
	movl	8(%esi), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	je	.L1095
	movl	%esi, %edx
	movl	%ebx, %eax
	call	asl_loc_nb_conflict_list
	jmp	.L1084
	.p2align 4,,10
	.p2align 3
.L1095:
	movl	%esi, (%edi)
	movl	%ebx, 24(%esi)
	movl	%ebx, 20(%esi)
	jmp	.L1084
	.p2align 4,,10
	.p2align 3
.L1094:
	movl	%ecx, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%eax, (%edi)
	movl	%ebx, 24(%eax)
	movl	%ebx, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	jmp	.L1084
	.cfi_endproc
.LFE155:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_sel_t, .-__asl_sched_nbrhs_varndx_dctrl_const_sel_t
	.p2align 4,,15
	.globl	__asl_sched_nb_pnd0_lhs_varndx_sel
	.type	__asl_sched_nb_pnd0_lhs_varndx_sel, @function
__asl_sched_nb_pnd0_lhs_varndx_sel:
.LFB156:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	24(%esp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L1100
	movl	$1, 8(%eax)
.L1098:
	movl	__simtime@GOT(%ebx), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	movl	%edx, 24(%eax)
	movl	16(%esp), %edx
	movl	%ecx, 28(%eax)
	movl	%edx, 52(%eax)
	movl	28(%esp), %edx
	movl	%edx, 56(%eax)
	movl	__nb_te_endp@GOT(%ebx), %edx
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	%eax, 44(%ecx)
	movl	4(%eax), %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1100:
	.cfi_restore_state
	movl	20(%esp), %edx
	call	asl_loc_get_new_nbmem_event
	jmp	.L1098
	.cfi_endproc
.LFE156:
	.size	__asl_sched_nb_pnd0_lhs_varndx_sel, .-__asl_sched_nb_pnd0_lhs_varndx_sel
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_concat
	.type	__asl_sched_nbrhs_varndx_dctrl_concat, @function
__asl_sched_nbrhs_varndx_dctrl_concat:
.LFB157:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	64(%esp), %ebp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	jne	.L1115
	movl	$1, 8(%ebp)
.L1103:
	movl	48(%esp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	16(%eax), %edx
	movl	(%edx), %eax
	shrl	$13, %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	8(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	%eax, %esi
	movl	__simtime@GOT(%ebx), %eax
	movl	%edx, %edi
	movl	%esi, %edx
	movl	%edi, %ecx
	addl	(%eax), %edx
	adcl	4(%eax), %ecx
	movl	%edx, %eax
	movl	%ecx, 28(%ebp)
	movl	%eax, 24(%ebp)
	movl	$32, (%esp)
	call	__my_malloc@PLT
	movl	%eax, 24(%esp)
	movl	%eax, 4(%ebp)
	popl	%eax
	.cfi_def_cfa_offset 60
	pushl	72(%esp)
	.cfi_def_cfa_offset 64
	call	__my_malloc@PLT
	movl	24(%esp), %edx
	movl	%eax, %ecx
	movl	%eax, (%edx)
	movl	76(%esp), %eax
	movl	%eax, 4(%edx)
	movl	68(%esp), %eax
	movl	%eax, 16(%edx)
	movl	84(%esp), %eax
	movl	%eax, 28(%edx)
	movl	72(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 8(%edx)
	movl	%edi, %edx
	orl	%esi, %edx
	jne	.L1104
	movl	__nb_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ebp, (%eax)
	movl	%ebp, 44(%edx)
.L1101:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1104:
	.cfi_restore_state
	movl	__last_nb_hp@GOT(%ebx), %esi
	movl	24(%ebp), %eax
	movl	28(%ebp), %edi
	movl	(%esi), %edx
	movl	%esi, 12(%esp)
	movl	4(%edx), %esi
	xorl	%eax, %esi
	movl	%esi, 8(%esp)
	movl	8(%edx), %esi
	xorl	%edi, %esi
	orl	8(%esp), %esi
	je	.L1114
	movl	%edi, %esi
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%eax, %esi
	imull	$-1640531535, %esi, %esi
	andl	$4095, %esi
	movl	(%edx,%esi,4), %edx
	testl	%edx, %edx
	je	.L1116
	xorl	8(%edx), %edi
	xorl	4(%edx), %eax
	movl	%edi, %ebx
	orl	%eax, %ebx
	jne	.L1109
	movl	12(%esp), %eax
	movl	%edx, (%eax)
.L1114:
	movl	24(%edx), %eax
	movl	%ebp, 24(%edx)
	testl	%eax, %eax
	je	.L1117
	movl	%ebp, 44(%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1115:
	.cfi_restore_state
	movl	%ebp, %eax
	call	asl_loc_get_new_event
	movl	%eax, %ebp
	jmp	.L1103
	.p2align 4,,10
	.p2align 3
.L1109:
	movl	%ebp, %eax
	movl	%ecx, 8(%esp)
	call	asl_loc_nb_conflict_list
	movl	8(%esp), %ecx
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	movl	%ecx, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1117:
	.cfi_restore_state
	movl	%ebp, 20(%edx)
	jmp	.L1101
	.p2align 4,,10
	.p2align 3
.L1116:
	movl	%esi, %edx
	movl	%ebp, %eax
	movl	%ecx, 8(%esp)
	call	asl_loc_add_new_heap_time
	movl	12(%esp), %edi
	movl	%ebp, 24(%eax)
	movl	%ebp, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	8(%esp), %ecx
	movl	%eax, (%edi)
	jmp	.L1101
	.cfi_endproc
.LFE157:
	.size	__asl_sched_nbrhs_varndx_dctrl_concat, .-__asl_sched_nbrhs_varndx_dctrl_concat
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_concat
	.type	__asl_sched_nbrhs_varndx_dctrl_const_concat, @function
__asl_sched_nbrhs_varndx_dctrl_const_concat:
.LFB158:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %esi
	movl	56(%esp), %edi
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L1131
	movl	$1, 8(%esi)
.L1120:
	movl	__simtime@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%esi), %eax
	adcl	40(%esi), %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 24(%esi)
	movl	%edx, 28(%esi)
	pushl	$32
	.cfi_def_cfa_offset 64
	call	__my_malloc@PLT
	movl	%eax, %ebp
	movl	%eax, 4(%esi)
	movl	%edi, (%esp)
	call	__my_malloc@PLT
	movl	%eax, 24(%esp)
	movl	%eax, 0(%ebp)
	movl	64(%esp), %eax
	movl	__last_nb_hp@GOT(%ebx), %edx
	movl	%edi, 4(%ebp)
	movl	28(%esi), %ecx
	movl	%eax, 16(%ebp)
	movl	68(%esp), %eax
	movl	%edx, 28(%esp)
	movl	(%edx), %edx
	movl	%eax, 8(%ebp)
	movl	80(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	4(%edx), %edi
	movl	%eax, 28(%ebp)
	movl	24(%esi), %eax
	movl	8(%edx), %ebp
	xorl	%eax, %edi
	xorl	%ecx, %ebp
	orl	%edi, %ebp
	je	.L1130
	movl	%ecx, %edi
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%eax, %edi
	imull	$-1640531535, %edi, %edi
	andl	$4095, %edi
	movl	(%edx,%edi,4), %edx
	testl	%edx, %edx
	je	.L1132
	xorl	4(%edx), %eax
	xorl	8(%edx), %ecx
	orl	%eax, %ecx
	jne	.L1125
	movl	12(%esp), %eax
	movl	%edx, (%eax)
.L1130:
	movl	24(%edx), %eax
	movl	%esi, 24(%edx)
	testl	%eax, %eax
	je	.L1133
	movl	%esi, 44(%eax)
	movl	8(%esp), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1125:
	.cfi_restore_state
	movl	%esi, %eax
	call	asl_loc_nb_conflict_list
	movl	8(%esp), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1131:
	.cfi_restore_state
	movl	%esi, %eax
	call	asl_loc_get_new_event
	movl	%eax, %esi
	jmp	.L1120
	.p2align 4,,10
	.p2align 3
.L1133:
	movl	%esi, 20(%edx)
	movl	8(%esp), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1132:
	.cfi_restore_state
	movl	%edi, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	12(%esp), %ecx
	movl	%esi, 24(%eax)
	movl	%esi, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	movl	%eax, (%ecx)
	movl	8(%esp), %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE158:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_concat, .-__asl_sched_nbrhs_varndx_dctrl_const_concat
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_concat_t
	.type	__asl_sched_nbrhs_varndx_dctrl_const_concat_t, @function
__asl_sched_nbrhs_varndx_dctrl_const_concat_t:
.LFB159:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	44(%esp), %esi
	movl	8(%esi), %edx
	testl	%edx, %edx
	jne	.L1142
	movl	$1, 8(%esi)
.L1136:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	$32
	.cfi_def_cfa_offset 48
	call	__my_malloc@PLT
	movl	%eax, %ebp
	movl	%eax, 4(%esi)
	popl	%eax
	.cfi_def_cfa_offset 44
	pushl	52(%esp)
	.cfi_def_cfa_offset 48
	call	__my_malloc@PLT
	movl	%eax, 0(%ebp)
	movl	%eax, %edi
	movl	56(%esp), %eax
	movl	%eax, 4(%ebp)
	movl	48(%esp), %eax
	movl	%eax, 16(%ebp)
	movl	52(%esp), %eax
	movl	%eax, 8(%ebp)
	movl	64(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 28(%ebp)
	movl	__last_nb_hp@GOT(%ebx), %ebp
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	.L1143
	movl	24(%eax), %edx
	movl	%esi, 44(%edx)
	movl	%esi, 24(%eax)
.L1134:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1142:
	.cfi_restore_state
	movl	%esi, %eax
	call	asl_loc_get_new_event
	movl	%eax, %esi
	jmp	.L1136
	.p2align 4,,10
	.p2align 3
.L1143:
	movl	__simtime@GOT(%ebx), %eax
	movl	__time_hash@GOT(%ebx), %ebx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	36(%esi), %eax
	adcl	40(%esi), %edx
	movl	%eax, 24(%esi)
	movl	%edx, %ecx
	movl	%edx, 28(%esi)
	xorl	%eax, %ecx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movl	(%ebx,%ecx,4), %ebx
	testl	%ebx, %ebx
	je	.L1144
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	4(%ebx), %eax
	xorl	%edx, %eax
	movl	8(%ebx), %edx
	xorl	%ecx, %edx
	orl	%eax, %edx
	je	.L1145
	movl	%ebx, %edx
	movl	%esi, %eax
	call	asl_loc_nb_conflict_list
	jmp	.L1134
	.p2align 4,,10
	.p2align 3
.L1145:
	movl	%ebx, 0(%ebp)
	movl	%esi, 24(%ebx)
	movl	%esi, 20(%ebx)
	jmp	.L1134
	.p2align 4,,10
	.p2align 3
.L1144:
	movl	%ecx, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%eax, 0(%ebp)
	movl	%esi, 24(%eax)
	movl	%esi, 20(%eax)
	movl	$0, 16(%eax)
	movl	$0, 12(%eax)
	jmp	.L1134
	.cfi_endproc
.LFE159:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_concat_t, .-__asl_sched_nbrhs_varndx_dctrl_const_concat_t
	.p2align 4,,15
	.globl	__asl_sched_nb_pnd0_lhs_varndx_concat
	.type	__asl_sched_nb_pnd0_lhs_varndx_concat, @function
__asl_sched_nb_pnd0_lhs_varndx_concat:
.LFB160:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	44(%esp), %edi
	movl	40(%esp), %esi
	movl	8(%edi), %eax
	testl	%eax, %eax
	jne	.L1150
	movl	$1, 8(%edi)
.L1148:
	movl	__simtime@GOT(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 28(%edi)
	movl	%eax, 24(%edi)
	pushl	$32
	.cfi_def_cfa_offset 48
	call	__my_malloc@PLT
	movl	%eax, 4(%edi)
	movl	%eax, %ebp
	movl	%esi, (%esp)
	call	__my_malloc@PLT
	movl	48(%esp), %edx
	movl	%eax, 0(%ebp)
	movl	%esi, 4(%ebp)
	movl	%edx, 16(%ebp)
	movl	64(%esp), %edx
	movl	%edx, 28(%ebp)
	movl	52(%esp), %edx
	movl	%edx, 8(%ebp)
	movl	__nb_te_endp@GOT(%ebx), %edx
	movl	(%edx), %ecx
	movl	%edi, (%edx)
	movl	%edi, 44(%ecx)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1150:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	asl_loc_get_new_event
	movl	%eax, %edi
	jmp	.L1148
	.cfi_endproc
.LFE160:
	.size	__asl_sched_nb_pnd0_lhs_varndx_concat, .-__asl_sched_nb_pnd0_lhs_varndx_concat
	.p2align 4,,15
	.globl	__asl_arm_nb_ectrl
	.type	__asl_arm_nb_ectrl, @function
__asl_arm_nb_ectrl:
.LFB161:
	.cfi_startproc
	movl	8(%esp), %eax
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L1156
	movl	4(%esp), %ecx
	movl	__idp@GOT(%edx), %edx
	orb	$2, (%eax)
	movl	$1, 8(%eax)
	movl	16(%ecx), %ecx
	movl	(%edx), %edx
	movl	16(%ecx), %ecx
	leal	(%edx,%ecx,4), %ecx
	movl	(%ecx), %edx
	testl	%edx, %edx
	jne	.L1155
	movl	%eax, (%ecx)
.L1156:
	movl	4(%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1157:
	movl	%ecx, %edx
.L1155:
	movl	44(%edx), %ecx
	testl	%ecx, %ecx
	jne	.L1157
	movl	%eax, 44(%edx)
	movl	%edx, 48(%eax)
	movl	$0, 44(%eax)
	movl	4(%eax), %eax
	ret
	.cfi_endproc
.LFE161:
	.size	__asl_arm_nb_ectrl, .-__asl_arm_nb_ectrl
	.p2align 4,,15
	.globl	__asl_arm_nb_varndx_ectrl
	.type	__asl_arm_nb_varndx_ectrl, @function
__asl_arm_nb_varndx_ectrl:
.LFB162:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	12(%esp), %eax
	movl	__simtime@GOT(%edx), %ecx
	movl	4(%ecx), %ebx
	movl	(%ecx), %ecx
	movl	%ecx, 24(%eax)
	movl	16(%esp), %ecx
	movl	%ebx, 28(%eax)
	movl	%ecx, 52(%eax)
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L1163
	movl	8(%esp), %ecx
	movl	__idp@GOT(%edx), %edx
	movl	$1, 8(%eax)
	movl	16(%ecx), %ecx
	movl	(%edx), %edx
	movl	16(%ecx), %ecx
	leal	(%edx,%ecx,4), %ecx
	movl	(%ecx), %edx
	testl	%edx, %edx
	jne	.L1162
	movl	%eax, (%ecx)
.L1163:
	movl	4(%eax), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1164:
	.cfi_restore_state
	movl	%ecx, %edx
.L1162:
	movl	44(%edx), %ecx
	testl	%ecx, %ecx
	jne	.L1164
	movl	%eax, 44(%edx)
	movl	%edx, 48(%eax)
	movl	$0, 44(%eax)
	movl	4(%eax), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE162:
	.size	__asl_arm_nb_varndx_ectrl, .-__asl_arm_nb_varndx_ectrl
	.p2align 4,,15
	.globl	__asl_loc_get_new_thread_event
	.type	__asl_loc_get_new_thread_event, @function
__asl_loc_get_new_thread_event:
.LFB167:
	.cfi_startproc
	jmp	asl_loc_get_new_thread_event
	.cfi_endproc
.LFE167:
	.size	__asl_loc_get_new_thread_event, .-__asl_loc_get_new_thread_event
	.p2align 4,,15
	.globl	__asl_loc_get_new_event
	.type	__asl_loc_get_new_event, @function
__asl_loc_get_new_event:
.LFB168:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	asl_loc_get_new_event
	.cfi_endproc
.LFE168:
	.size	__asl_loc_get_new_event, .-__asl_loc_get_new_event
	.p2align 4,,15
	.globl	__asl_sched_namblk_thd
	.type	__asl_sched_namblk_thd, @function
__asl_sched_namblk_thd:
.LFB169:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %edi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	__cur_thd@GOT(%ebx), %esi
	movl	16(%edi), %ecx
	movl	(%esi), %edx
	movl	(%edx), %eax
	andl	$-1073741761, %eax
	orl	$64, %eax
	movl	%eax, (%edx)
	movl	36(%edi), %eax
	movl	12(%edx), %edi
	movl	%eax, 20(%edx)
	pushl	%ecx
	.cfi_def_cfa_offset 32
	call	__setup_tsk_thread@PLT
	movl	(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esi)
	movl	%edx, 24(%eax)
	movl	%eax, 36(%edx)
	movl	__idp@GOT(%ebx), %edx
	movl	%edi, 12(%eax)
	movl	(%edx), %edx
	movl	%edx, 60(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE169:
	.size	__asl_sched_namblk_thd, .-__asl_sched_namblk_thd
	.p2align 4,,15
	.globl	__asl_exec_stsk
	.type	__asl_exec_stsk, @function
__asl_exec_stsk:
.LFB172:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	52(%esp), %eax
	movl	__slin_cnt@GOT(%ebx), %edi
	movl	__sfnam_ind@GOT(%ebx), %esi
	movl	8(%eax), %ecx
	movl	(%edi), %edx
	movl	(%esi), %ebp
	movl	%ecx, (%edi)
	movzwl	4(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	16(%eax), %edx
	movl	%ecx, (%esi)
	leal	16(%eax), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	12(%edx)
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__exec_stsk@PLT
	movl	28(%esp), %edx
	movl	%ebp, (%esi)
	movl	%edx, (%edi)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE172:
	.size	__asl_exec_stsk, .-__asl_exec_stsk
	.p2align 4,,15
	.globl	__asl_new_auto_idp_area
	.type	__asl_new_auto_idp_area, @function
__asl_new_auto_idp_area:
.LFB173:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %ebp
	movl	4(%ebp), %eax
	movl	264(%eax), %esi
	sall	$2, %esi
	pushl	%esi
	.cfi_def_cfa_offset 48
	call	__my_malloc@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 40
	pushl	%ebp
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	memcpy@PLT
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE173:
	.size	__asl_new_auto_idp_area, .-__asl_new_auto_idp_area
	.p2align 4,,15
	.globl	__asl_cp_auto_idp_area_func
	.type	__asl_cp_auto_idp_area_func, @function
__asl_cp_auto_idp_area_func:
.LFB174:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	20(%esp), %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	4(%esi), %edi
	movl	272(%edi), %eax
	sall	$2, %eax
	pushl	%eax
	.cfi_def_cfa_offset 24
	pushl	%esi
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	memcpy@PLT
	popl	%eax
	.cfi_def_cfa_offset 28
	popl	%edx
	.cfi_def_cfa_offset 24
	pushl	264(%edi)
	.cfi_def_cfa_offset 28
	pushl	%esi
	.cfi_def_cfa_offset 32
	call	__my_free@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE174:
	.size	__asl_cp_auto_idp_area_func, .-__asl_cp_auto_idp_area_func
	.section	.rodata.str1.1
.LC14:
	.string	"\n"
	.text
	.p2align 4,,15
	.globl	__asl_exec_display
	.type	__asl_exec_display, @function
__asl_exec_display:
.LFB175:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	pushl	$3
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	pushl	20(%eax)
	.cfi_def_cfa_offset 32
	call	__do_disp@PLT
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	__cvsim_msg@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE175:
	.size	__asl_exec_display, .-__asl_exec_display
	.p2align 4,,15
	.globl	__asl_reg_qcaf_inhibit
	.type	__asl_reg_qcaf_inhibit, @function
__asl_reg_qcaf_inhibit:
.LFB176:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	68(%edx), %ecx
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax,2), %edx
	xorl	%eax, %eax
	sall	$4, %edx
	testb	$1, (%ecx,%edx)
	jne	.L1178
	movzbl	24(%ecx,%edx), %eax
	notl	%eax
	andl	$1, %eax
.L1178:
	rep ret
	.cfi_endproc
.LFE176:
	.size	__asl_reg_qcaf_inhibit, .-__asl_reg_qcaf_inhibit
	.p2align 4,,15
	.globl	__asl_scalar_wire_inhibit
	.type	__asl_scalar_wire_inhibit, @function
__asl_scalar_wire_inhibit:
.LFB177:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	addl	68(%edx), %eax
	movzbl	(%eax), %eax
	notl	%eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE177:
	.size	__asl_scalar_wire_inhibit, .-__asl_scalar_wire_inhibit
	.p2align 4,,15
	.globl	__asl_bsel_wirfrc_inhibit
	.type	__asl_bsel_wirfrc_inhibit, @function
__asl_bsel_wirfrc_inhibit:
.LFB178:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	68(%edx), %ecx
	movl	(%eax), %eax
	movl	(%eax), %eax
	imull	8(%edx), %eax
	addl	8(%esp), %eax
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movzbl	(%eax), %eax
	notl	%eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE178:
	.size	__asl_bsel_wirfrc_inhibit, .-__asl_bsel_wirfrc_inhibit
	.p2align 4,,15
	.globl	__asl_stren_correct_frc
	.type	__asl_stren_correct_frc, @function
__asl_stren_correct_frc:
.LFB179:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	__idp@GOT(%eax), %eax
	movl	28(%esp), %ebx
	movl	24(%esp), %edi
	movl	(%eax), %ebp
	movl	24(%ebx), %esi
	movl	8(%ebx), %eax
	movl	0(%ebp), %edx
	sall	$2, %esi
	imull	%eax, %edx
	testl	%eax, %eax
	jle	.L1187
	leal	(%edx,%edx,2), %ecx
	movl	$0, (%esp)
	xorl	%edx, %edx
	addl	%ebp, %esi
	sall	$3, %ecx
	jmp	.L1186
	.p2align 4,,10
	.p2align 3
.L1191:
	movzbl	(%esi,%edx), %eax
	addl	$24, %ecx
	movb	%al, (%edi,%edx)
	addl	$1, %edx
	cmpl	%edx, 8(%ebx)
	jle	.L1183
.L1186:
	movl	68(%ebx), %eax
	testb	$1, (%eax,%ecx)
	jne	.L1191
	addl	$1, %edx
	addl	$24, %ecx
	cmpl	%edx, 8(%ebx)
	movl	$1, (%esp)
	jg	.L1186
.L1183:
	movl	(%esp), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1187:
	.cfi_restore_state
	movl	$0, (%esp)
	movl	(%esp), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE179:
	.size	__asl_stren_correct_frc, .-__asl_stren_correct_frc
	.p2align 4,,15
	.globl	__asl_correct_frc
	.type	__asl_correct_frc, @function
__asl_correct_frc:
.LFB180:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__xspi@GOT(%ebx), %ecx
	movl	__maxxnest@GOT(%ebx), %esi
	movl	52(%esp), %edi
	movl	(%ecx), %eax
	movl	%ecx, 8(%esp)
	movl	%esi, 12(%esp)
	addl	$1, %eax
	cmpl	(%esi), %eax
	movl	%eax, (%ecx)
	jge	.L1206
.L1193:
	movl	__xstk@GOT(%ebx), %ebp
	movl	0(%ebp), %edx
	movl	(%edx,%eax,4), %esi
	movl	8(%edi), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	cmpl	4(%esi), %eax
	jg	.L1207
.L1194:
	movl	8(%esi), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%edx, (%esi)
	leal	(%ecx,%eax,4), %eax
	movl	%eax, 12(%esi)
	pushl	%edi
	.cfi_def_cfa_offset 60
	pushl	%ecx
	.cfi_def_cfa_offset 64
	call	__bld_forcedbits_mask@PLT
	movl	8(%edi), %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 52
	addl	$31, %eax
	sarl	$5, %eax
	sall	$2, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	12(%esi)
	.cfi_def_cfa_offset 64
	call	memset@PLT
	popl	%edx
	.cfi_def_cfa_offset 60
	popl	%ecx
	.cfi_def_cfa_offset 56
	pushl	8(%edi)
	.cfi_def_cfa_offset 60
	pushl	8(%esi)
	.cfi_def_cfa_offset 64
	call	__vval_is1@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L1208
	movl	8(%edi), %eax
	movl	8(%esi), %edx
	cmpl	$32, %eax
	jg	.L1197
	movl	(%edx), %eax
	testl	%eax, %eax
	sete	%dl
.L1198:
	movl	8(%esp), %ecx
	testb	%dl, %dl
	movl	(%ecx), %eax
	jne	.L1209
	movl	8(%esp), %edx
	addl	$1, %eax
	movl	%eax, (%edx)
	movl	12(%esp), %edx
	cmpl	(%edx), %eax
	jge	.L1210
.L1200:
	movl	0(%ebp), %edx
	movl	(%edx,%eax,4), %ebp
	movl	8(%edi), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	cmpl	4(%ebp), %eax
	jg	.L1211
.L1201:
	movl	8(%ebp), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%edx, 0(%ebp)
	leal	(%ecx,%eax,4), %eax
	movl	%eax, 12(%ebp)
	pushl	%edi
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	__ld_wire_val_xstk@PLT
	movl	8(%edi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	addl	$31, %eax
	sarl	$5, %eax
	testl	%eax, %eax
	leal	0(,%eax,4), %ebx
	jle	.L1202
	movl	48(%esp), %eax
	movl	8(%esi), %edx
	movl	12(%ebp), %ecx
	movl	8(%ebp), %esi
	leal	(%eax,%ebx), %ebp
	.p2align 4,,10
	.p2align 3
.L1203:
	movl	(%edx), %edi
	addl	$4, %edx
	notl	%edi
	andl	%edi, (%eax)
	movl	-4(%edx), %edi
	notl	%edi
	andl	%edi, (%eax,%ebx)
	movl	-4(%edx), %edi
	andl	%edi, (%esi)
	addl	$4, %esi
	movl	-4(%edx), %edi
	andl	%edi, (%ecx)
	addl	$4, %ecx
	movl	-4(%esi), %edi
	orl	%edi, (%eax)
	movl	-4(%ecx), %edi
	orl	%edi, (%eax,%ebx)
	addl	$4, %eax
	cmpl	%eax, %ebp
	jne	.L1203
.L1202:
	movl	8(%esp), %eax
	subl	$2, (%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1208:
	.cfi_restore_state
	movl	8(%esp), %eax
	subl	$1, (%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1207:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__chg_xstk_width@PLT
	movl	8(%edi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	leal	31(%edx), %eax
	sarl	$5, %eax
	jmp	.L1194
	.p2align 4,,10
	.p2align 3
.L1206:
	call	__grow_xstk@PLT
	movl	8(%esp), %eax
	movl	(%eax), %eax
	jmp	.L1193
	.p2align 4,,10
	.p2align 3
.L1209:
	subl	$1, %eax
	movl	%eax, (%ecx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1197:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	setne	%dl
	jmp	.L1198
	.p2align 4,,10
	.p2align 3
.L1211:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	__chg_xstk_width@PLT
	movl	8(%edi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	leal	31(%edx), %eax
	sarl	$5, %eax
	jmp	.L1201
	.p2align 4,,10
	.p2align 3
.L1210:
	call	__grow_xstk@PLT
	movl	8(%esp), %eax
	movl	(%eax), %eax
	jmp	.L1200
	.cfi_endproc
.LFE180:
	.size	__asl_correct_frc, .-__asl_correct_frc
	.p2align 4,,15
	.globl	__asl_psel_correct_frc
	.type	__asl_psel_correct_frc, @function
__asl_psel_correct_frc:
.LFB181:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %edi
	subl	76(%esp), %edi
	movl	__xspi@GOT(%ebx), %ebp
	movl	__maxxnest@GOT(%ebx), %ecx
	leal	1(%edi), %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 28(%esp)
	movl	0(%ebp), %eax
	addl	$1, %eax
	cmpl	(%ecx), %eax
	movl	%eax, 0(%ebp)
	jge	.L1228
.L1213:
	movl	__xstk@GOT(%ebx), %ecx
	addl	$32, %edi
	sarl	$5, %edi
	movl	%edi, 12(%esp)
	movl	(%ecx), %edx
	movl	%ecx, 20(%esp)
	movl	(%edx,%eax,4), %esi
	cmpl	4(%esi), %edi
	jg	.L1229
.L1214:
	movl	12(%esp), %edi
	movl	8(%esi), %edx
	addl	$1, %eax
	leal	0(,%edi,4), %ecx
	movl	8(%esp), %edi
	addl	%ecx, %edx
	movl	%ecx, 16(%esp)
	movl	24(%esp), %ecx
	movl	%edi, (%esi)
	movl	%edx, 12(%esi)
	movl	%eax, 0(%ebp)
	cmpl	(%ecx), %eax
	jge	.L1230
.L1215:
	movl	20(%esp), %edi
	movl	(%edi), %edx
	movl	(%edx,%eax,4), %edi
	movl	68(%esp), %eax
	movl	8(%eax), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	cmpl	4(%edi), %eax
	jg	.L1231
.L1216:
	movl	8(%edi), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%edx, (%edi)
	leal	(%ecx,%eax,4), %eax
	movl	%eax, 12(%edi)
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	%ecx
	.cfi_def_cfa_offset 80
	call	__bld_forcedbits_mask@PLT
	pushl	24(%esp)
	.cfi_def_cfa_offset 84
	pushl	96(%esp)
	.cfi_def_cfa_offset 88
	pushl	8(%edi)
	.cfi_def_cfa_offset 92
	pushl	8(%esi)
	.cfi_def_cfa_offset 96
	call	__rhspsel@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 72
	subl	$1, 0(%ebp)
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	pushl	8(%esi)
	.cfi_def_cfa_offset 80
	call	__vval_is1@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L1232
	cmpl	$32, 8(%esp)
	movl	8(%esi), %eax
	jg	.L1219
	movl	(%eax), %edx
	testl	%edx, %edx
	sete	%dl
.L1220:
	testb	%dl, %dl
	movl	0(%ebp), %eax
	jne	.L1233
	movl	24(%esp), %edi
	addl	$1, %eax
	movl	%eax, 0(%ebp)
	cmpl	(%edi), %eax
	jge	.L1234
.L1222:
	movl	20(%esp), %edi
	movl	12(%esp), %ecx
	movl	(%edi), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	4(%eax), %ecx
	jg	.L1235
.L1223:
	movl	16(%esp), %edi
	movl	8(%eax), %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	leal	(%ecx,%edi), %edx
	movl	20(%esp), %edi
	movl	%eax, 20(%esp)
	movl	%edx, 12(%eax)
	movl	%edi, (%eax)
	pushl	88(%esp)
	.cfi_def_cfa_offset 80
	pushl	88(%esp)
	.cfi_def_cfa_offset 84
	pushl	88(%esp)
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	pushl	%ecx
	.cfi_def_cfa_offset 96
	call	__ld_psel@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %eax
	testl	%eax, %eax
	jle	.L1224
	movl	8(%esp), %eax
	movl	8(%esi), %ecx
	movl	64(%esp), %ebx
	movl	8(%eax), %edi
	movl	12(%eax), %esi
	movl	28(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%esi, 20(%esp)
	addl	$31, %eax
	sarl	$5, %eax
	sall	$3, %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1225:
	movl	(%ecx,%eax), %edx
	movl	12(%esp), %esi
	movl	8(%esp), %edi
	notl	%edx
	andl	%edx, (%ebx,%eax)
	leal	(%esi,%eax), %edx
	movl	(%ecx,%eax), %esi
	addl	%ebx, %edx
	notl	%esi
	andl	%esi, (%edx)
	movl	(%ecx,%eax), %esi
	andl	%esi, (%edi,%eax)
	movl	20(%esp), %edi
	movl	(%ecx,%eax), %esi
	andl	%esi, (%edi,%eax)
	movl	8(%esp), %esi
	movl	(%esi,%eax), %esi
	orl	%esi, (%ebx,%eax)
	movl	(%edi,%eax), %esi
	addl	$4, %eax
	orl	%esi, (%edx)
	cmpl	%eax, 16(%esp)
	jne	.L1225
.L1224:
	subl	$2, 0(%ebp)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1232:
	.cfi_restore_state
	subl	$1, 0(%ebp)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1231:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__chg_xstk_width@PLT
	movl	84(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	8(%eax), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	jmp	.L1216
	.p2align 4,,10
	.p2align 3
.L1228:
	call	__grow_xstk@PLT
	movl	0(%ebp), %eax
	jmp	.L1213
	.p2align 4,,10
	.p2align 3
.L1230:
	call	__grow_xstk@PLT
	movl	0(%ebp), %eax
	jmp	.L1215
	.p2align 4,,10
	.p2align 3
.L1229:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	20(%esp)
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__chg_xstk_width@PLT
	movl	0(%ebp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L1214
	.p2align 4,,10
	.p2align 3
.L1233:
	subl	$1, %eax
	movl	%eax, 0(%ebp)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1219:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	setne	%dl
	jmp	.L1220
	.p2align 4,,10
	.p2align 3
.L1235:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	20(%esp)
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	%eax, 36(%esp)
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	20(%esp), %eax
	jmp	.L1223
	.p2align 4,,10
	.p2align 3
.L1234:
	call	__grow_xstk@PLT
	movl	0(%ebp), %eax
	jmp	.L1222
	.cfi_endproc
.LFE181:
	.size	__asl_psel_correct_frc, .-__asl_psel_correct_frc
	.p2align 4,,15
	.globl	__asl_stren_psel_correct_frc
	.type	__asl_stren_psel_correct_frc, @function
__asl_stren_psel_correct_frc:
.LFB182:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	28(%esp), %esi
	movl	__idp@GOT(%eax), %eax
	movl	32(%esp), %ebx
	movl	(%eax), %edi
	movl	24(%esi), %eax
	leal	0(,%eax,4), %ebp
	movl	8(%esi), %eax
	imull	(%edi), %eax
	subl	36(%esp), %ebx
	js	.L1240
	addl	36(%esp), %eax
	addl	36(%esp), %ebp
	addl	$1, %ebx
	xorl	%edx, %edx
	leal	(%eax,%eax,2), %ecx
	xorl	%eax, %eax
	addl	%ebp, %edi
	movl	%eax, (%esp)
	sall	$3, %ecx
	jmp	.L1239
	.p2align 4,,10
	.p2align 3
.L1245:
	movzbl	(%edi,%edx), %eax
	movl	24(%esp), %ebp
	addl	$24, %ecx
	addl	36(%esp), %ebp
	movb	%al, 0(%ebp,%edx)
	addl	$1, %edx
	cmpl	%edx, %ebx
	je	.L1244
.L1239:
	movl	68(%esi), %ebp
	testb	$1, 0(%ebp,%ecx)
	jne	.L1245
	addl	$1, %edx
	addl	$24, %ecx
	movl	$1, (%esp)
	cmpl	%edx, %ebx
	jne	.L1239
.L1244:
	movl	(%esp), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1240:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE182:
	.size	__asl_stren_psel_correct_frc, .-__asl_stren_psel_correct_frc
	.p2align 4,,15
	.globl	__asl_assign_qcaf_regform_concat
	.type	__asl_assign_qcaf_regform_concat, @function
__asl_assign_qcaf_regform_concat:
.LFB212:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	pushl	$0
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__exec_qc_assign@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE212:
	.size	__asl_assign_qcaf_regform_concat, .-__asl_assign_qcaf_regform_concat
	.p2align 4,,15
	.globl	__asl_assign_qcaf_concat
	.type	__asl_assign_qcaf_concat, @function
__asl_assign_qcaf_concat:
.LFB213:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__exec_qc_wireforce@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE213:
	.size	__asl_assign_qcaf_concat, .-__asl_assign_qcaf_concat
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign
	.type	__asl_exec_qc_deassign, @function
__asl_exec_qc_deassign:
.LFB219:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	20(%eax), %eax
	jmp	asl_loc_do_qc_deassign
	.cfi_endproc
.LFE219:
	.size	__asl_exec_qc_deassign, .-__asl_exec_qc_deassign
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign_concat
	.type	__asl_exec_qc_deassign_concat, @function
__asl_exec_qc_deassign_concat:
.LFB221:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	asl_loc_do_qc_deassign
	.cfi_endproc
.LFE221:
	.size	__asl_exec_qc_deassign_concat, .-__asl_exec_qc_deassign_concat
	.p2align 4,,15
	.globl	__asl_jmp_eq_stmask
	.type	__asl_jmp_eq_stmask, @function
__asl_jmp_eq_stmask:
.LFB224:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %ecx
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	testl	%ecx, %ecx
	jle	.L1256
	movzbl	(%ebx), %eax
	xorb	(%esi), %al
	testb	$3, %al
	jne	.L1258
	xorl	%eax, %eax
	jmp	.L1254
	.p2align 4,,10
	.p2align 3
.L1255:
	movzbl	(%ebx,%eax), %edx
	xorb	(%esi,%eax), %dl
	andl	$3, %edx
	jne	.L1258
.L1254:
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	.L1255
.L1256:
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1258:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE224:
	.size	__asl_jmp_eq_stmask, .-__asl_jmp_eq_stmask
	.p2align 4,,15
	.globl	__asl_trigger_ectrl
	.type	__asl_trigger_ectrl, @function
__asl_trigger_ectrl:
.LFB225:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__simtime@GOT(%ecx), %edx
	movl	12(%esp), %eax
	movl	4(%edx), %esi
	movl	(%edx), %ebx
	movl	__cur_tevp@GOT(%ecx), %edx
	movl	$1, 8(%eax)
	movl	%esi, 28(%eax)
	movl	__cur_te_endp@GOT(%ecx), %esi
	movl	%ebx, 24(%eax)
	movl	(%edx), %edx
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.L1271
	cmpl	%edx, %ebx
	je	.L1267
.L1270:
	movl	44(%edx), %ecx
	movl	%ecx, 44(%eax)
	movl	44(%edx), %ecx
	movl	%eax, 48(%ecx)
.L1268:
	movl	%eax, 44(%edx)
	movl	%edx, 48(%eax)
.L1260:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1267:
	.cfi_restore_state
	movl	__free_event_tevp@GOT(%ecx), %ecx
	movl	%eax, (%esi)
	movl	(%ecx), %ecx
	movl	%ecx, 44(%eax)
	jmp	.L1268
	.p2align 4,,10
	.p2align 3
.L1271:
	testl	%edx, %edx
	je	.L1272
	movl	__p0_te_endp@GOT(%ecx), %ebx
	cmpl	%edx, (%ebx)
	jne	.L1270
	movl	__free_event_pnd0_tevp@GOT(%ecx), %ecx
	movl	%eax, (%ebx)
	movl	(%ecx), %ecx
	movl	%ecx, 44(%eax)
	jmp	.L1268
	.p2align 4,,10
	.p2align 3
.L1272:
	movl	__p0_te_hdrp@GOT(%ecx), %edx
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	.L1273
	movl	%ebx, 44(%eax)
	movl	%eax, (%edx)
	jmp	.L1260
	.p2align 4,,10
	.p2align 3
.L1273:
	movl	__p0_te_endp@GOT(%ecx), %ecx
	movl	%eax, (%edx)
	movl	%eax, (%ecx)
	jmp	.L1260
	.cfi_endproc
.LFE225:
	.size	__asl_trigger_ectrl, .-__asl_trigger_ectrl
	.p2align 4,,15
	.globl	__asl_sched_fork
	.type	__asl_sched_fork, @function
__asl_sched_fork:
.LFB170:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %eax
	movl	%edi, 20(%esp)
	movl	16(%eax), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	je	.L1275
	movl	%edi, %eax
	movl	__sfnam_ind@GOT(%edi), %ebp
	movl	$4, 8(%esp)
	movl	__cur_thd@GOT(%eax), %edx
	movl	__idp@GOT(%eax), %eax
	movl	$0, 4(%esp)
	movl	__slin_cnt@GOT(%edi), %edi
	movl	%edx, 24(%esp)
	movl	%eax, 28(%esp)
	jmp	.L1280
	.p2align 4,,10
	.p2align 3
.L1277:
	movl	4(%esp), %eax
	movl	%eax, 32(%ebx)
	movl	%ebx, 28(%eax)
.L1278:
	movl	28(%esp), %eax
	movl	8(%esp), %ecx
	movl	%edx, 24(%ebx)
	movl	%ebx, 4(%esp)
	movl	(%eax), %eax
	orb	$8, (%ebx)
	movl	%eax, 60(%ebx)
	movl	64(%esp), %eax
	movl	16(%eax), %eax
	movl	(%eax,%ecx), %esi
	addl	$4, %ecx
	movl	%ecx, 8(%esp)
	testl	%esi, %esi
	je	.L1279
.L1280:
	movzbl	(%esi), %eax
	andl	$63, %eax
	cmpb	$13, %al
	jne	.L1276
	movl	16(%esi), %esi
.L1276:
	movzwl	4(%esi), %eax
	movl	20(%esp), %ebx
	movl	0(%ebp), %ecx
	movl	(%edi), %edx
	movl	%eax, 0(%ebp)
	movl	8(%esi), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%edi)
	call	__alloc_thrd@PLT
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	movl	%esi, 20(%ebx)
	movl	%eax, 16(%ebx)
	movl	(%edi), %eax
	movl	%eax, 4(%ebx)
	call	asl_loc_get_new_thread_event
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, 44(%ebx)
	movl	%ebx, 4(%eax)
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__asl_trigger_ectrl
	movl	28(%esp), %edx
	movl	40(%esp), %eax
	movl	32(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	%edx, (%edi)
	movl	(%eax), %edx
	movl	%ecx, 0(%ebp)
	movl	(%edx), %eax
	movl	%eax, %ecx
	andl	$-1073741761, %eax
	shrl	$6, %ecx
	addl	$1, %ecx
	andl	$16777215, %ecx
	sall	$6, %ecx
	orl	%ecx, %eax
	movl	%eax, (%edx)
	movl	4(%esp), %eax
	testl	%eax, %eax
	jne	.L1277
	movl	%ebx, 36(%edx)
	jmp	.L1278
	.p2align 4,,10
	.p2align 3
.L1275:
	movl	20(%esp), %eax
	movl	__cur_thd@GOT(%eax), %eax
	movl	(%eax), %edx
.L1279:
	movl	68(%esp), %eax
	movl	%eax, 20(%edx)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE170:
	.size	__asl_sched_fork, .-__asl_sched_fork
	.p2align 4,,15
	.globl	__asl_trigger_ectrl_xprop
	.type	__asl_trigger_ectrl_xprop, @function
__asl_trigger_ectrl_xprop:
.LFB226:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	%edx, 12(%eax)
	movl	__simtime@GOT(%ecx), %edx
	movl	$1, 8(%eax)
	movl	4(%edx), %esi
	movl	(%edx), %ebx
	movl	__cur_tevp@GOT(%ecx), %edx
	movl	%esi, 28(%eax)
	movl	__cur_te_endp@GOT(%ecx), %esi
	movl	%ebx, 24(%eax)
	movl	(%edx), %edx
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.L1296
	cmpl	%edx, %ebx
	je	.L1292
.L1295:
	movl	44(%edx), %ecx
	movl	%ecx, 44(%eax)
	movl	44(%edx), %ecx
	movl	%eax, 48(%ecx)
.L1293:
	movl	%eax, 44(%edx)
	movl	%edx, 48(%eax)
.L1285:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1292:
	.cfi_restore_state
	movl	__free_event_tevp@GOT(%ecx), %ecx
	movl	%eax, (%esi)
	movl	(%ecx), %ecx
	movl	%ecx, 44(%eax)
	jmp	.L1293
	.p2align 4,,10
	.p2align 3
.L1296:
	testl	%edx, %edx
	je	.L1297
	movl	__p0_te_endp@GOT(%ecx), %ebx
	cmpl	%edx, (%ebx)
	jne	.L1295
	movl	__free_event_pnd0_tevp@GOT(%ecx), %ecx
	movl	%eax, (%ebx)
	movl	(%ecx), %ecx
	movl	%ecx, 44(%eax)
	jmp	.L1293
	.p2align 4,,10
	.p2align 3
.L1297:
	movl	__p0_te_hdrp@GOT(%ecx), %edx
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	.L1298
	movl	%ebx, 44(%eax)
	movl	%eax, (%edx)
	jmp	.L1285
	.p2align 4,,10
	.p2align 3
.L1298:
	movl	__p0_te_endp@GOT(%ecx), %ecx
	movl	%eax, (%edx)
	movl	%eax, (%ecx)
	jmp	.L1285
	.cfi_endproc
.LFE226:
	.size	__asl_trigger_ectrl_xprop, .-__asl_trigger_ectrl_xprop
	.p2align 4,,15
	.globl	__asl_compiled_ev_to_front
	.type	__asl_compiled_ev_to_front, @function
__asl_compiled_ev_to_front:
.LFB227:
	.cfi_startproc
	jmp	__asl_trigger_ectrl
	.cfi_endproc
.LFE227:
	.size	__asl_compiled_ev_to_front, .-__asl_compiled_ev_to_front
	.p2align 4,,15
	.globl	__asl_nb_trigger_ectrl
	.type	__asl_nb_trigger_ectrl, @function
__asl_nb_trigger_ectrl:
.LFB228:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	__p0_te_hdrp@GOT(%eax), %ecx
	movl	(%ecx), %ebx
	testl	%ebx, %ebx
	je	.L1304
	movl	__p0_te_endp@GOT(%eax), %ecx
	movl	__free_event_pnd0_tevp@GOT(%eax), %eax
	movl	(%ecx), %ebx
	movl	(%eax), %eax
	movl	%edx, (%ecx)
	movl	%edx, 44(%ebx)
	movl	%eax, 44(%edx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1304:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%eax), %eax
	movl	%edx, (%ecx)
	movl	%edx, (%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE228:
	.size	__asl_nb_trigger_ectrl, .-__asl_nb_trigger_ectrl
	.p2align 4,,15
	.globl	__asl_fmonit_trigger
	.type	__asl_fmonit_trigger, @function
__asl_fmonit_trigger:
.LFB229:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	52(%eax), %esi
	movl	12(%esi), %eax
	testl	%eax, %eax
	je	.L1312
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1312:
	.cfi_restore_state
	movl	__fmse_freelst@GOT(%ebx), %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.L1313
	movl	4(%eax), %ecx
	movl	%ecx, (%edx)
.L1308:
	movl	__fmonse_hdr@GOT(%ebx), %edx
	movl	$0, 4(%eax)
	movl	%esi, (%eax)
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L1314
	movl	__fmonse_end@GOT(%ebx), %edx
	movl	(%edx), %ecx
	movl	%eax, 4(%ecx)
.L1310:
	movl	%eax, (%edx)
	movl	%eax, 12(%esi)
	movl	__slotend_action@GOT(%ebx), %eax
	orl	$8, (%eax)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1314:
	.cfi_restore_state
	movl	%eax, (%edx)
	movl	__fmonse_end@GOT(%ebx), %edx
	jmp	.L1310
	.p2align 4,,10
	.p2align 3
.L1313:
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$8
	.cfi_def_cfa_offset 32
	call	__my_malloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	jmp	.L1308
	.cfi_endproc
.LFE229:
	.size	__asl_fmonit_trigger, .-__asl_fmonit_trigger
	.p2align 4,,15
	.globl	__asl_movabw_fr_svec
	.type	__asl_movabw_fr_svec, @function
__asl_movabw_fr_svec:
.LFB230:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %eax
	movl	48(%esp), %esi
	addl	$31, %eax
	sarl	$5, %eax
	sall	$2, %eax
	leal	(%esi,%eax), %ebp
	movl	$0, -4(%esi,%eax)
	movl	$0, -4(%ebp,%eax)
	movl	56(%esp), %eax
	testl	%eax, %eax
	jle	.L1315
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L1317:
	movl	52(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movzbl	(%eax,%edi), %eax
	movl	%eax, %ecx
	movb	%al, 19(%esp)
	andl	$1, %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	%edi
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 52
	movzbl	19(%esp), %eax
	shrl	%eax
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	%edi
	.cfi_def_cfa_offset 60
	addl	$1, %edi
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	%edi, 56(%esp)
	jne	.L1317
.L1315:
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE230:
	.size	__asl_movabw_fr_svec, .-__asl_movabw_fr_svec
	.p2align 4,,15
	.globl	__asl_movabw_onew_fr_svec
	.type	__asl_movabw_onew_fr_svec, @function
__asl_movabw_onew_fr_svec:
.LFB231:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%eax, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	testl	%esi, %esi
	jle	.L1321
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1322:
	movzbl	(%edi,%ecx), %edx
	movl	%edx, %ebp
	shrl	%edx
	andl	$1, %ebp
	andl	$1, %edx
	sall	%cl, %ebp
	sall	%cl, %edx
	addl	$1, %ecx
	orl	%ebp, %eax
	orl	%edx, %ebx
	cmpl	%ecx, %esi
	jne	.L1322
.L1321:
#APP
# 4997 "v_aslib.c" 1
	movl %ebx, %ecx
# 0 "" 2
#NO_APP
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE231:
	.size	__asl_movabw_onew_fr_svec, .-__asl_movabw_onew_fr_svec
	.p2align 4,,15
	.globl	__asl_4state_to_2state_wide
	.type	__asl_4state_to_2state_wide, @function
__asl_4state_to_2state_wide:
.LFB232:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %eax
	movl	16(%esp), %esi
	testl	%eax, %eax
	jle	.L1326
	leal	0(,%eax,4), %ebx
	movl	12(%esp), %ecx
	leal	(%esi,%ebx), %edx
	leal	(%esi,%eax,8), %esi
	negl	%ebx
	.p2align 4,,10
	.p2align 3
.L1328:
	movl	(%edx), %eax
	addl	$4, %edx
	addl	$4, %ecx
	notl	%eax
	andl	-4(%edx,%ebx), %eax
	movl	%eax, -4(%ecx)
	cmpl	%esi, %edx
	jne	.L1328
.L1326:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE232:
	.size	__asl_4state_to_2state_wide, .-__asl_4state_to_2state_wide
	.p2align 4,,15
	.globl	__asl_movsb_fr_wstad
	.type	__asl_movsb_fr_wstad, @function
__asl_movsb_fr_wstad:
.LFB233:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	32(%esp), %esi
	movl	24(%esp), %edi
	movl	28(%esp), %ebx
	testl	%esi, %esi
	jle	.L1331
	movl	36(%esp), %ecx
	movl	__stren_map_tab@GOT(%eax), %ebp
	sall	$2, %ecx
	movl	%ecx, (%esp)
	xorl	%ecx, %ecx
	jmp	.L1335
	.p2align 4,,10
	.p2align 3
.L1333:
	orl	(%esp), %eax
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%ecx)
	addl	$1, %ecx
	cmpl	%ecx, %esi
	je	.L1331
.L1335:
	movl	4(%ebx), %eax
	movl	(%ebx), %edx
	shrl	%cl, %eax
	shrl	%cl, %edx
	addl	%eax, %eax
	andl	$1, %edx
	andl	$2, %eax
	orl	%edx, %eax
	cmpl	$2, %eax
	jne	.L1333
	movb	$2, (%edi,%ecx)
	addl	$1, %ecx
	cmpl	%ecx, %esi
	jne	.L1335
.L1331:
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE233:
	.size	__asl_movsb_fr_wstad, .-__asl_movsb_fr_wstad
	.p2align 4,,15
	.globl	__asl_movsb_fr_widestad
	.type	__asl_movsb_fr_widestad, @function
__asl_movsb_fr_widestad:
.LFB234:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	32(%esp), %edi
	movl	28(%esp), %esi
	leal	31(%edi), %edx
	sarl	$5, %edx
	sall	$2, %edx
	testl	%edi, %edi
	jle	.L1338
	movl	36(%esp), %edi
	xorl	%ebx, %ebx
	movl	__stren_map_tab@GOT(%eax), %ebp
	sall	$2, %edi
	movl	%edi, (%esp)
	leal	(%esi,%edx), %edi
	jmp	.L1342
	.p2align 4,,10
	.p2align 3
.L1340:
	orl	(%esp), %edx
	movl	24(%esp), %ecx
	movzbl	0(%ebp,%edx), %eax
	movb	%al, (%ecx,%ebx)
	addl	$1, %ebx
	cmpl	%ebx, 32(%esp)
	je	.L1338
.L1342:
	movl	%ebx, %eax
	movl	%ebx, %ecx
	sarl	$5, %eax
	andl	$31, %ecx
	movl	(%esi,%eax,4), %edx
	movl	(%edi,%eax,4), %eax
	shrl	%cl, %eax
	shrl	%cl, %edx
	addl	%eax, %eax
	andl	$1, %edx
	andl	$2, %eax
	orl	%eax, %edx
	cmpl	$2, %edx
	jne	.L1340
	movl	24(%esp), %eax
	movb	$2, (%eax,%ebx)
	addl	$1, %ebx
	cmpl	%ebx, 32(%esp)
	jne	.L1342
.L1338:
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE234:
	.size	__asl_movsb_fr_widestad, .-__asl_movsb_fr_widestad
	.p2align 4,,15
	.globl	__asl_movsb_fr_scalstad
	.type	__asl_movsb_fr_scalstad, @function
__asl_movsb_fr_scalstad:
.LFB235:
	.cfi_startproc
	movl	4(%esp), %edx
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	andl	$3, %edx
	cmpl	$2, %edx
	je	.L1347
	movl	8(%esp), %eax
	sall	$2, %eax
	orl	%edx, %eax
	movl	__stren_map_tab@GOT(%ecx), %edx
	movzbl	(%edx,%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1347:
	movl	$2, %eax
	ret
	.cfi_endproc
.LFE235:
	.size	__asl_movsb_fr_scalstad, .-__asl_movsb_fr_scalstad
	.p2align 4,,15
	.globl	__asl_rhs_conta_stren
	.type	__asl_rhs_conta_stren, @function
__asl_rhs_conta_stren:
.LFB236:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %ecx
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	testl	%ecx, %ecx
	jle	.L1348
	movl	16(%esp), %ebx
	movl	12(%esp), %edx
	movl	__stren_map_tab@GOT(%eax), %esi
	sall	$2, %ebx
	addl	%edx, %ecx
	.p2align 4,,10
	.p2align 3
.L1351:
	movzbl	(%edx), %eax
	andl	$3, %eax
	cmpb	$2, %al
	je	.L1350
	movzbl	%al, %eax
	orl	%ebx, %eax
	movzbl	(%esi,%eax), %eax
	movb	%al, (%edx)
.L1350:
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	.L1351
.L1348:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE236:
	.size	__asl_rhs_conta_stren, .-__asl_rhs_conta_stren
	.p2align 4,,15
	.globl	__asl_movr_fr_w
	.type	__asl_movr_fr_w, @function
__asl_movr_fr_w:
.LFB237:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	%gs:20, %ecx
	movl	%ecx, 44(%esp)
	xorl	%ecx, %ecx
	cmpl	$32, 68(%esp)
	movl	64(%esp), %eax
	movl	(%eax), %edx
	jg	.L1362
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	fildq	(%esp)
.L1357:
	movl	44(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L1363
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1362:
	.cfi_restore_state
	movl	4(%eax), %edx
	movl	(%eax), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__v64_to_real@PLT
	fldl	48(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L1357
.L1363:
	fstp	%st(0)
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE237:
	.size	__asl_movr_fr_w, .-__asl_movr_fr_w
	.p2align 4,,15
	.globl	__asl_movr_fr_sgnw
	.type	__asl_movr_fr_sgnw, @function
__asl_movr_fr_sgnw:
.LFB238:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %edx
	movl	64(%esp), %ecx
	movl	%gs:20, %eax
	movl	%eax, 44(%esp)
	xorl	%eax, %eax
	cmpl	$32, %edx
	movl	(%ecx), %eax
	jg	.L1376
	je	.L1367
	leal	-1(%edx), %ecx
	btl	%ecx, %eax
	jnc	.L1367
	movl	__masktab@GOT(%ebx), %ecx
	movl	(%ecx,%edx,4), %edx
	notl	%edx
	orl	%edx, %eax
.L1367:
	movl	%eax, 12(%esp)
	fildl	12(%esp)
.L1364:
	movl	44(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L1377
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1376:
	.cfi_restore_state
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__v64_to_real@PLT
	fldl	48(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L1364
.L1377:
	fstp	%st(0)
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE238:
	.size	__asl_movr_fr_sgnw, .-__asl_movr_fr_sgnw
	.p2align 4,,15
	.globl	__asl_movw_fr_r
	.type	__asl_movw_fr_r, @function
__asl_movw_fr_r:
.LFB239:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	fldz
	fldl	20(%esp)
	movl	16(%esp), %edx
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	.L1383
	fadds	.LC15@GOTOFF(%eax)
.L1385:
	fnstcw	6(%esp)
	movzwl	6(%esp), %eax
	orb	$12, %ah
	movw	%ax, 4(%esp)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %eax
	movl	$0, 4(%edx)
	movl	%eax, (%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1383:
	.cfi_restore_state
	fsubs	.LC15@GOTOFF(%eax)
	jmp	.L1385
	.cfi_endproc
.LFE239:
	.size	__asl_movw_fr_r, .-__asl_movw_fr_r
	.p2align 4,,15
	.globl	__asl_movw_fr_r_2state
	.type	__asl_movw_fr_r_2state, @function
__asl_movw_fr_r_2state:
.LFB240:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	fldz
	fldl	16(%esp)
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	.L1391
	fadds	.LC15@GOTOFF(%eax)
.L1394:
	fnstcw	6(%esp)
	movzwl	6(%esp), %eax
	orb	$12, %ah
	movw	%ax, 4(%esp)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1391:
	.cfi_restore_state
	fsubs	.LC15@GOTOFF(%eax)
	jmp	.L1394
	.cfi_endproc
.LFE240:
	.size	__asl_movw_fr_r_2state, .-__asl_movw_fr_r_2state
	.p2align 4,,15
	.globl	__asl_exec_sysfunc
	.type	__asl_exec_sysfunc, @function
__asl_exec_sysfunc:
.LFB241:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__exec_sysfunc@PLT
	movl	__xspi@GOT(%ebx), %ecx
	movl	__xstk@GOT(%ebx), %eax
	movl	(%ecx), %edx
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	subl	$1, %edx
	movl	%edx, (%ecx)
	movl	8(%eax), %eax
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE241:
	.size	__asl_exec_sysfunc, .-__asl_exec_sysfunc
	.p2align 4,,15
	.globl	__asl_exec_sysfunc_stmtloc
	.type	__asl_exec_sysfunc_stmtloc, @function
__asl_exec_sysfunc_stmtloc:
.LFB242:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	__sfnam_ind@GOT(%ebx), %edi
	movl	64(%esp), %eax
	movl	__slin_cnt@GOT(%ebx), %esi
	movl	(%edi), %edx
	movzwl	4(%eax), %ecx
	movl	8(%eax), %eax
	movl	(%esi), %ebp
	movl	%edx, 24(%esp)
	pushl	60(%esp)
	.cfi_def_cfa_offset 64
	movl	%ecx, (%edi)
	movl	%eax, (%esi)
	call	__exec_sysfunc@PLT
	movl	__xspi@GOT(%ebx), %ecx
	movl	28(%esp), %edx
	movl	__xstk@GOT(%ebx), %eax
	movl	%ebp, (%esi)
	movl	%edx, (%edi)
	movl	(%ecx), %edx
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	subl	$1, %edx
	movl	%edx, (%ecx)
	movl	8(%eax), %eax
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE242:
	.size	__asl_exec_sysfunc_stmtloc, .-__asl_exec_sysfunc_stmtloc
	.p2align 4,,15
	.globl	__asl_pop_xstk
	.type	__asl_pop_xstk, @function
__asl_pop_xstk:
.LFB243:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__xspi@GOT(%eax), %edx
	movl	(%edx), %eax
	subl	4(%esp), %eax
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE243:
	.size	__asl_pop_xstk, .-__asl_pop_xstk
	.p2align 4,,15
	.globl	__asl_widcas_eval
	.type	__asl_widcas_eval, @function
__asl_widcas_eval:
.LFB244:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	28(%esp), %eax
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	testl	%eax, %eax
	jle	.L1404
	leal	0(,%eax,4), %ebx
	movl	(%esi), %edx
	xorl	(%edi), %edx
	leal	(%esi,%ebx), %ebp
	addl	%edi, %ebx
	movl	0(%ebp), %eax
	xorl	(%ebx), %eax
	orl	%eax, %edx
	jne	.L1406
	xorl	%eax, %eax
	jmp	.L1402
	.p2align 4,,10
	.p2align 3
.L1403:
	movl	(%esi,%eax,4), %ecx
	movl	0(%ebp,%eax,4), %edx
	xorl	(%edi,%eax,4), %ecx
	xorl	(%ebx,%eax,4), %edx
	orl	%edx, %ecx
	jne	.L1406
.L1402:
	addl	$1, %eax
	cmpl	%eax, 28(%esp)
	jne	.L1403
.L1404:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1406:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE244:
	.size	__asl_widcas_eval, .-__asl_widcas_eval
	.p2align 4,,15
	.globl	__asl_widcasx_eval
	.type	__asl_widcasx_eval, @function
__asl_widcasx_eval:
.LFB245:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	28(%esp), %eax
	movl	20(%esp), %edx
	testl	%eax, %eax
	jle	.L1412
	leal	0(,%eax,4), %edi
	movl	24(%esp), %esi
	movl	(%edx), %eax
	leal	(%edx,%edi), %ebp
	addl	24(%esp), %edi
	xorl	(%esi), %eax
	movl	0(%ebp), %ecx
	movl	(%edi), %ebx
	movl	%ecx, %esi
	xorl	%ebx, %esi
	orl	%ebx, %ecx
	orl	%esi, %eax
	notl	%ecx
	testl	%ecx, %eax
	jne	.L1414
	xorl	%esi, %esi
	movl	24(%esp), %ebx
	jmp	.L1410
	.p2align 4,,10
	.p2align 3
.L1411:
	movl	(%edx,%esi,4), %eax
	movl	0(%ebp,%esi,4), %ecx
	xorl	(%ebx,%esi,4), %eax
	xorl	(%edi,%esi,4), %ecx
	orl	%ecx, %eax
	movl	0(%ebp,%esi,4), %ecx
	orl	(%edi,%esi,4), %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.L1414
.L1410:
	addl	$1, %esi
	cmpl	%esi, 28(%esp)
	jne	.L1411
.L1412:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1414:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE245:
	.size	__asl_widcasx_eval, .-__asl_widcasx_eval
	.p2align 4,,15
	.globl	__asl_widcasz_eval
	.type	__asl_widcasz_eval, @function
__asl_widcasz_eval:
.LFB246:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	32(%esp), %eax
	movl	32(%esp), %edx
	sall	$2, %eax
	testl	%edx, %edx
	jle	.L1419
	movl	24(%esp), %edi
	movl	28(%esp), %edx
	xorl	%ebp, %ebp
	leal	(%edi,%eax), %ebx
	addl	%eax, %edx
	movl	28(%esp), %edi
	jmp	.L1418
	.p2align 4,,10
	.p2align 3
.L1423:
	addl	$1, %ebp
	cmpl	%ebp, 32(%esp)
	je	.L1419
.L1418:
	movl	(%ebx,%ebp,4), %ecx
	movl	24(%esp), %eax
	notl	%ecx
	movl	(%eax,%ebp,4), %eax
	movl	%ecx, %esi
	movl	(%edx,%ebp,4), %ecx
	orl	%eax, %esi
	movl	%eax, (%esp)
	movl	(%esp), %eax
	notl	%ecx
	orl	(%edi,%ebp,4), %ecx
	xorl	(%edi,%ebp,4), %eax
	andl	%ecx, %esi
	movl	%esi, %ecx
	movl	(%ebx,%ebp,4), %esi
	xorl	(%edx,%ebp,4), %esi
	orl	%esi, %eax
	testl	%eax, %ecx
	je	.L1423
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1419:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE246:
	.size	__asl_widcasz_eval, .-__asl_widcasz_eval
	.p2align 4,,15
	.globl	__asl_wide_bitxor
	.type	__asl_wide_bitxor, @function
__asl_wide_bitxor:
.LFB247:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	24(%esp), %edx
	testl	%edx, %edx
	jle	.L1424
	movl	16(%esp), %eax
	movl	20(%esp), %ebx
	movl	12(%esp), %ecx
	leal	(%eax,%edx,4), %esi
	.p2align 4,,10
	.p2align 3
.L1426:
	movl	(%eax), %edx
	xorl	(%ebx), %edx
	addl	$4, %eax
	addl	$4, %ebx
	addl	$4, %ecx
	movl	%edx, -4(%ecx)
	cmpl	%esi, %eax
	jne	.L1426
.L1424:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE247:
	.size	__asl_wide_bitxor, .-__asl_wide_bitxor
	.p2align 4,,15
	.globl	__asl_wide_notl
	.type	__asl_wide_notl, @function
__asl_wide_notl:
.LFB248:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %ecx
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	testl	%ecx, %ecx
	jle	.L1429
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1431:
	movl	(%esi,%eax,4), %edx
	notl	%edx
	movl	%edx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	.L1431
.L1429:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE248:
	.size	__asl_wide_notl, .-__asl_wide_notl
	.p2align 4,,15
	.globl	__asl_wide_bitand
	.type	__asl_wide_bitand, @function
__asl_wide_bitand:
.LFB249:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	24(%esp), %edx
	testl	%edx, %edx
	jle	.L1434
	movl	16(%esp), %eax
	movl	20(%esp), %ebx
	movl	12(%esp), %ecx
	leal	(%eax,%edx,4), %esi
	.p2align 4,,10
	.p2align 3
.L1436:
	movl	(%eax), %edx
	andl	(%ebx), %edx
	addl	$4, %eax
	addl	$4, %ebx
	addl	$4, %ecx
	movl	%edx, -4(%ecx)
	cmpl	%esi, %eax
	jne	.L1436
.L1434:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE249:
	.size	__asl_wide_bitand, .-__asl_wide_bitand
	.p2align 4,,15
	.globl	__asl_wide_redxor
	.type	__asl_wide_redxor, @function
__asl_wide_redxor:
.LFB250:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	testl	%eax, %eax
	jle	.L1442
	movl	32(%esp), %esi
	xorl	%edi, %edi
	leal	(%esi,%eax,4), %ebp
	.p2align 4,,10
	.p2align 3
.L1441:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	(%esi)
	.cfi_def_cfa_offset 48
	addl	$4, %esi
	call	__wrd_redxor@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	xorl	%eax, %edi
	cmpl	%ebp, %esi
	jne	.L1441
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1442:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	xorl	%edi, %edi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE250:
	.size	__asl_wide_redxor, .-__asl_wide_redxor
	.p2align 4,,15
	.globl	__asl_wid_bin_bitor_x
	.type	__asl_wid_bin_bitor_x, @function
__asl_wid_bin_bitor_x:
.LFB251:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	36(%esp), %edi
	movl	40(%esp), %edx
	addl	$31, %eax
	sarl	$5, %eax
	leal	0(,%eax,4), %ebp
	addl	%ebp, %edi
	testl	%eax, %eax
	movl	%ebp, 8(%esp)
	movl	%edi, 12(%esp)
	jle	.L1446
	movl	44(%esp), %ecx
	leal	(%edx,%eax,8), %eax
	leal	(%edx,%ebp), %ebx
	movl	36(%esp), %esi
	movl	%eax, (%esp)
	addl	%ebp, %ecx
	negl	%ebp
	jmp	.L1449
	.p2align 4,,10
	.p2align 3
.L1452:
	movl	$0, (%edi)
	movl	(%ebx,%ebp), %eax
	orl	(%ecx,%ebp), %eax
	movl	%eax, (%esi)
.L1448:
	addl	$4, %ebx
	addl	$4, %ecx
	addl	$4, %edi
	addl	$4, %esi
	cmpl	(%esp), %ebx
	je	.L1446
.L1449:
	movl	(%ebx), %eax
	orl	(%ecx), %eax
	je	.L1452
	movl	(%ebx,%ebp), %edx
	orl	(%ecx,%ebp), %edx
	orl	%edx, %eax
	movl	%eax, (%esi)
	movl	(%ebx), %eax
	orl	(%ecx), %eax
	movl	%eax, (%edi)
	jmp	.L1448
	.p2align 4,,10
	.p2align 3
.L1446:
	movl	4(%esp), %esi
	movl	8(%esp), %eax
	movl	48(%esp), %edx
	movl	__masktab@GOT(%esi), %ecx
	movl	36(%esp), %esi
	subl	$4, %eax
	andl	$31, %edx
	movl	(%ecx,%edx,4), %edx
	andl	%edx, (%esi,%eax)
	movl	12(%esp), %esi
	andl	%edx, (%esi,%eax)
	addl	$16, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE251:
	.size	__asl_wid_bin_bitor_x, .-__asl_wid_bin_bitor_x
	.p2align 4,,15
	.globl	__asl_wid_un_redor_x
	.type	__asl_wid_un_redor_x, @function
__asl_wid_un_redor_x:
.LFB252:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	leal	31(%esi), %eax
	sarl	$5, %eax
	cmpl	$32, %esi
	leal	(%edi,%eax,4), %eax
	jg	.L1454
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	.L1458
	movl	(%edi), %eax
	testl	%eax, %eax
	setne	%al
.L1459:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1458:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$3, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1454:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	pushl	%esi
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	je	.L1458
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	pushl	%esi
	.cfi_def_cfa_offset 28
	pushl	%edi
	.cfi_def_cfa_offset 32
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	sete	%al
	jmp	.L1459
	.cfi_endproc
.LFE252:
	.size	__asl_wid_un_redor_x, .-__asl_wid_un_redor_x
	.p2align 4,,15
	.globl	__asl_has_xedge_wide
	.type	__asl_has_xedge_wide, @function
__asl_has_xedge_wide:
.LFB253:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	32(%esp), %eax
	movl	32(%esp), %edx
	sall	$2, %eax
	testl	%edx, %edx
	jle	.L1467
	movl	24(%esp), %edi
	movl	$0, (%esp)
	xorl	%ebx, %ebx
	leal	(%edi,%eax), %ebp
	movl	28(%esp), %edi
	addl	%eax, %edi
	.p2align 4,,10
	.p2align 3
.L1465:
	movl	24(%esp), %eax
	movl	0(%ebp,%ebx,4), %esi
	movl	(%eax,%ebx,4), %ecx
	movl	28(%esp), %eax
	movl	(%eax,%ebx,4), %edx
	movl	(%edi,%ebx,4), %eax
	andl	%ecx, %esi
	andl	%edx, %eax
	orl	%esi, %eax
	je	.L1463
	orl	%eax, %ecx
	orl	%edx, %eax
	cmpl	%eax, %ecx
	jne	.L1467
	movl	$1, (%esp)
.L1463:
	addl	$1, %ebx
	cmpl	%ebx, 32(%esp)
	jne	.L1465
	movl	(%esp), %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	xorl	$1, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1467:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE253:
	.size	__asl_has_xedge_wide, .-__asl_has_xedge_wide
	.p2align 4,,15
	.globl	__asl_has_xedge_wide_st
	.type	__asl_has_xedge_wide_st, @function
__asl_has_xedge_wide_st:
.LFB254:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	36(%esp), %eax
	testl	%eax, %eax
	jle	.L1477
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	$1, %edi
	addl	%ebx, %eax
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	movl	%eax, (%esp)
	.p2align 4,,10
	.p2align 3
.L1476:
	movzbl	(%ebx), %ecx
	movzbl	(%esi), %edx
	movl	%ecx, %eax
	andl	$1, %ecx
	shrb	%al
	movl	%eax, %ebp
	andl	%ecx, %ebp
	movl	%edx, %ecx
	andl	$1, %edx
	shrb	%cl
	movl	%ebp, %eax
	andl	%ecx, %edx
	orb	%dl, %al
	movl	(%esp), %eax
	cmovne	%edi, %eax
	addl	$1, %ebx
	addl	$1, %esi
	cmpl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	jne	.L1476
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1477:
	.cfi_restore_state
	addl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE254:
	.size	__asl_has_xedge_wide_st, .-__asl_has_xedge_wide_st
	.p2align 4,,15
	.globl	__asl_xprop_check_case_net_set
	.type	__asl_xprop_check_case_net_set, @function
__asl_xprop_check_case_net_set:
.LFB255:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	cmpl	$1, 68(%esp)
	movl	%ecx, 8(%esp)
	jle	.L1481
	movl	64(%esp), %eax
	movl	20(%eax), %edx
	movl	4(%edx), %esi
	testl	%esi, %esi
	jle	.L1481
	movl	__masktab@GOT(%ecx), %eax
	xorl	%esi, %esi
	movl	%edx, %edi
	movl	%eax, 28(%esp)
	movl	%eax, 16(%esp)
	.p2align 4,,10
	.p2align 3
.L1488:
	movl	36(%edi), %eax
	leal	0(,%esi,4), %edx
	movl	(%eax,%esi,4), %ebx
	testl	%ebx, %ebx
	je	.L1483
	movl	40(%edi), %eax
	addl	%edx, %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L1495
.L1483:
	addl	$1, %esi
	cmpl	%esi, 4(%edi)
	jg	.L1488
.L1481:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1495:
	.cfi_restore_state
	movl	44(%edi), %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movl	(%ecx,%edx), %ebp
	movl	$1, (%eax)
	movl	8(%ebp), %eax
	addl	$31, %eax
	sarl	$5, %eax
	movl	%eax, 16(%esp)
	sall	$2, %eax
	movl	%eax, 28(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 72
	movl	24(%edi), %eax
	pushl	$255
	.cfi_def_cfa_offset 76
	pushl	(%eax,%edx)
	.cfi_def_cfa_offset 80
	movl	24(%esp), %ebx
	movl	%edx, 36(%esp)
	call	memset@PLT
	movl	36(%esp), %edx
	movl	20(%edi), %eax
	movl	(%eax,%edx), %edx
	movl	8(%ebp), %eax
	leal	31(%eax), %ecx
	movl	%eax, 36(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	sarl	$5, %ecx
	testl	%ecx, %ecx
	jle	.L1484
	leal	0(,%ecx,4), %ebp
	movl	%edx, %eax
	leal	0(%ebp,%edx), %ebx
	.p2align 4,,10
	.p2align 3
.L1485:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%ebx, %eax
	jne	.L1485
	movl	20(%esp), %eax
	movl	16(%esp), %ebx
	andl	$31, %eax
	movl	(%ebx,%eax,4), %eax
	andl	%eax, -4(%edx,%ebp)
	movl	12(%esp), %ebp
	movl	24(%esp), %ebx
	addl	%ecx, %ebp
	addl	%edx, %ebx
	leal	(%edx,%ebp,4), %ebp
	.p2align 4,,10
	.p2align 3
.L1487:
	movl	$-1, (%ebx)
	addl	$4, %ebx
	cmpl	%ebx, %ebp
	jne	.L1487
.L1489:
	movl	12(%esp), %ebx
	leal	1073741823(%ebx,%ecx), %ecx
	andl	%eax, (%edx,%ecx,4)
	jmp	.L1483
	.p2align 4,,10
	.p2align 3
.L1484:
	movl	20(%esp), %eax
	movl	28(%esp), %ebx
	andl	$31, %eax
	movl	(%ebx,%eax,4), %eax
	andl	%eax, -4(%edx,%ecx,4)
	jmp	.L1489
	.cfi_endproc
.LFE255:
	.size	__asl_xprop_check_case_net_set, .-__asl_xprop_check_case_net_set
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_wide
	.type	__asl_stmt_assign_to_accum_wide, @function
__asl_stmt_assign_to_accum_wide:
.LFB256:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	20(%esp), %eax
	pushl	20(%eax)
	.cfi_def_cfa_offset 20
	pushl	32(%esp)
	.cfi_def_cfa_offset 24
	pushl	32(%esp)
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	pushl	16(%eax)
	.cfi_def_cfa_offset 32
	call	__assign_lhsx_to_accum@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE256:
	.size	__asl_stmt_assign_to_accum_wide, .-__asl_stmt_assign_to_accum_wide
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_1w
	.type	__asl_stmt_assign_to_accum_1w, @function
__asl_stmt_assign_to_accum_1w:
.LFB257:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	20(%esp), %eax
	pushl	20(%eax)
	.cfi_def_cfa_offset 20
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 24
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	pushl	16(%eax)
	.cfi_def_cfa_offset 32
	call	__assign_lhsx_to_accum@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE257:
	.size	__asl_stmt_assign_to_accum_1w, .-__asl_stmt_assign_to_accum_1w
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_1w_if_id
	.type	__asl_stmt_assign_to_accum_1w_if_id, @function
__asl_stmt_assign_to_accum_1w_if_id:
.LFB258:
	.cfi_startproc
	movl	16(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	20(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	12(%esp), %ecx
	jmp	asl_loc_stmt_assign_to_accum_1w_id
	.cfi_endproc
.LFE258:
	.size	__asl_stmt_assign_to_accum_1w_if_id, .-__asl_stmt_assign_to_accum_1w_if_id
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_wide_if_id
	.type	__asl_stmt_assign_to_accum_wide_if_id, @function
__asl_stmt_assign_to_accum_wide_if_id:
.LFB259:
	.cfi_startproc
	movl	16(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	20(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	12(%esp), %ecx
	jmp	asl_loc_stmt_assign_to_accum_wide_id
	.cfi_endproc
.LFE259:
	.size	__asl_stmt_assign_to_accum_wide_if_id, .-__asl_stmt_assign_to_accum_wide_if_id
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_wide_case_id
	.type	__asl_stmt_assign_to_accum_wide_case_id, @function
__asl_stmt_assign_to_accum_wide_case_id:
.LFB260:
	.cfi_startproc
	movl	16(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	20(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	12(%esp), %ecx
	jmp	asl_loc_stmt_assign_to_accum_wide_id
	.cfi_endproc
.LFE260:
	.size	__asl_stmt_assign_to_accum_wide_case_id, .-__asl_stmt_assign_to_accum_wide_case_id
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_1w_case_id
	.type	__asl_stmt_assign_to_accum_1w_case_id, @function
__asl_stmt_assign_to_accum_1w_case_id:
.LFB261:
	.cfi_startproc
	movl	16(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	20(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	12(%esp), %ecx
	jmp	asl_loc_stmt_assign_to_accum_1w_id
	.cfi_endproc
.LFE261:
	.size	__asl_stmt_assign_to_accum_1w_case_id, .-__asl_stmt_assign_to_accum_1w_case_id
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_block_case
	.type	__asl_set_xprop_accum_block_case, @function
__asl_set_xprop_accum_block_case:
.LFB265:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	20(%eax), %edi
	movl	4(%edi), %ecx
	orb	$32, 8(%edi)
	movl	$0, (%edi)
	testl	%ecx, %ecx
	jle	.L1504
	xorl	%esi, %esi
	jmp	.L1507
	.p2align 4,,10
	.p2align 3
.L1506:
	addl	$1, %esi
	cmpl	%esi, 4(%edi)
	jle	.L1504
.L1507:
	movl	44(%edi), %eax
	movl	52(%edi), %edx
	movl	(%eax,%esi,4), %eax
	movl	132(%eax), %ecx
	movl	%ecx, (%edx,%esi,4)
	movl	36(%edi), %edx
	movl	%esi, 132(%eax)
	movl	$0, (%edx,%esi,4)
	movl	40(%edi), %edx
	movl	$0, (%edx,%esi,4)
	movl	12(%edi), %edx
	movl	(%edx,%esi,4), %edx
	testl	%edx, %edx
	jne	.L1506
	movl	8(%eax), %ebp
	movl	24(%edi), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	addl	$31, %ebp
	sarl	$5, %ebp
	sall	$2, %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 40
	pushl	$0
	.cfi_def_cfa_offset 44
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 48
	call	memset@PLT
	movl	28(%edi), %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 36
	pushl	%ebp
	.cfi_def_cfa_offset 40
	pushl	$0
	.cfi_def_cfa_offset 44
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 48
	call	memset@PLT
	movl	32(%edi), %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 36
	pushl	%ebp
	.cfi_def_cfa_offset 40
	pushl	$0
	.cfi_def_cfa_offset 44
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 48
	addl	$1, %esi
	call	memset@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	%esi, 4(%edi)
	jg	.L1507
.L1504:
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE265:
	.size	__asl_set_xprop_accum_block_case, .-__asl_set_xprop_accum_block_case
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_block_if
	.type	__asl_set_xprop_accum_block_if, @function
__asl_set_xprop_accum_block_if:
.LFB266:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	20(%eax), %edi
	movl	4(%edi), %ecx
	orb	$32, 8(%edi)
	movl	$0, (%edi)
	testl	%ecx, %ecx
	jle	.L1510
	xorl	%esi, %esi
	jmp	.L1513
	.p2align 4,,10
	.p2align 3
.L1512:
	addl	$1, %esi
	cmpl	%esi, 4(%edi)
	jle	.L1510
.L1513:
	movl	44(%edi), %eax
	movl	52(%edi), %edx
	movl	(%eax,%esi,4), %eax
	movl	132(%eax), %ecx
	movl	%ecx, (%edx,%esi,4)
	movl	36(%edi), %edx
	movl	%esi, 132(%eax)
	movl	$0, (%edx,%esi,4)
	movl	40(%edi), %edx
	movl	$0, (%edx,%esi,4)
	movl	12(%edi), %edx
	movl	(%edx,%esi,4), %edx
	testl	%edx, %edx
	jne	.L1512
	movl	8(%eax), %ebp
	movl	24(%edi), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	addl	$31, %ebp
	sarl	$5, %ebp
	sall	$2, %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 40
	pushl	$0
	.cfi_def_cfa_offset 44
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 48
	call	memset@PLT
	movl	28(%edi), %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 36
	pushl	%ebp
	.cfi_def_cfa_offset 40
	pushl	$0
	.cfi_def_cfa_offset 44
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 48
	call	memset@PLT
	movl	32(%edi), %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 36
	pushl	%ebp
	.cfi_def_cfa_offset 40
	pushl	$0
	.cfi_def_cfa_offset 44
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 48
	addl	$1, %esi
	call	memset@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	%esi, 4(%edi)
	jg	.L1513
.L1510:
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE266:
	.size	__asl_set_xprop_accum_block_if, .-__asl_set_xprop_accum_block_if
	.p2align 4,,15
	.globl	__asl_set_restore_xprop_accum_block
	.type	__asl_set_restore_xprop_accum_block, @function
__asl_set_restore_xprop_accum_block:
.LFB267:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	20(%eax), %eax
	jmp	asl_loc_set_restore_xprop_accum_block
	.cfi_endproc
.LFE267:
	.size	__asl_set_restore_xprop_accum_block, .-__asl_set_restore_xprop_accum_block
	.p2align 4,,15
	.globl	__asl_set_restore_xprop_accum_toself
	.type	__asl_set_restore_xprop_accum_toself, @function
__asl_set_restore_xprop_accum_toself:
.LFB268:
	.cfi_startproc
	movl	4(%esp), %eax
	xorl	%edx, %edx
	movl	20(%eax), %eax
	jmp	asl_loc_set_restore_xprop_accum_block_selfv
	.cfi_endproc
.LFE268:
	.size	__asl_set_restore_xprop_accum_toself, .-__asl_set_restore_xprop_accum_toself
	.p2align 4,,15
	.globl	__asl_set_restore_xprop_accum_block_nodefault
	.type	__asl_set_restore_xprop_accum_block_nodefault, @function
__asl_set_restore_xprop_accum_block_nodefault:
.LFB269:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%edx, %edx
	movl	16(%esp), %esi
	movl	12(%esp), %eax
	movl	$1, %ebx
	movl	20(%esp), %ecx
	cmpl	$1, %esi
	movl	20(%eax), %eax
	setg	%dl
	sall	%cl, %ebx
	cmpl	%esi, %ebx
	movl	%edx, (%eax)
	jg	.L1521
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	asl_loc_set_restore_xprop_accum_block
	.p2align 4,,10
	.p2align 3
.L1521:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	asl_loc_set_restore_xprop_accum_block_selfv
	.cfi_endproc
.LFE269:
	.size	__asl_set_restore_xprop_accum_block_nodefault, .-__asl_set_restore_xprop_accum_block_nodefault
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_init
	.type	__asl_set_xprop_accum_init, @function
__asl_set_xprop_accum_init:
.LFB273:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	movzbl	6(%ecx), %ebx
	movl	128(%ecx), %eax
	testb	$4, %bl
	je	.L1526
	movl	16(%esp), %ecx
	movl	(%eax), %ebx
	orl	4(%eax), %ecx
	xorl	%edx, %ebx
	orl	%ebx, %ecx
	orl	%ecx, %edx
	movl	%ecx, 4(%eax)
	movl	%edx, (%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1526:
	.cfi_restore_state
	orl	$4, %ebx
	movb	%bl, 6(%ecx)
	movl	%edx, (%eax)
	movl	16(%esp), %edx
	movl	%edx, 4(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE273:
	.size	__asl_set_xprop_accum_init, .-__asl_set_xprop_accum_init
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_init_wide
	.type	__asl_set_xprop_accum_init_wide, @function
__asl_set_xprop_accum_init_wide:
.LFB274:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	52(%esp), %edi
	movl	8(%eax), %esi
	movl	128(%eax), %ebx
	leal	31(%esi), %edx
	movl	%esi, 8(%esp)
	sarl	$5, %edx
	movl	%edx, (%esp)
	movzbl	6(%eax), %edx
	testb	$4, %dl
	je	.L1534
	movl	(%esp), %edx
	leal	0(,%edx,4), %eax
	testl	%edx, %edx
	movl	%eax, 12(%esp)
	leal	(%ebx,%eax), %esi
	jle	.L1530
	leal	(%edi,%eax), %ebp
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1531:
	movl	0(%ebp,%ecx,4), %eax
	movl	(%ebx,%ecx,4), %edx
	orl	(%esi,%ecx,4), %eax
	xorl	(%edi,%ecx,4), %edx
	orl	%edx, %eax
	movl	%eax, (%esi,%ecx,4)
	orl	(%edi,%ecx,4), %eax
	movl	%eax, (%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, (%esp)
	jne	.L1531
.L1530:
	movl	4(%esp), %edi
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	__masktab@GOT(%edi), %ecx
	subl	$4, %edx
	andl	$31, %eax
	movl	(%ecx,%eax,4), %eax
	andl	%eax, (%ebx,%edx)
	andl	%eax, (%esi,%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1534:
	.cfi_restore_state
	orl	$4, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movb	%dl, 6(%eax)
	movl	4(%esp), %eax
	sall	$3, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	%edi
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	movl	20(%esp), %ebx
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE274:
	.size	__asl_set_xprop_accum_init_wide, .-__asl_set_xprop_accum_init_wide
	.p2align 4,,15
	.globl	__asl_xprop_accum_to_self
	.type	__asl_xprop_accum_to_self, @function
__asl_xprop_accum_to_self:
.LFB275:
	.cfi_startproc
	movl	4(%esp), %eax
	testb	$4, 6(%eax)
	je	.L1535
	movl	128(%eax), %edx
	movl	12(%esp), %ecx
	movl	4(%edx), %eax
	orl	%ecx, %eax
	movl	8(%esp), %ecx
	xorl	(%edx), %ecx
	orl	%eax, %ecx
	movl	8(%esp), %eax
	movl	%ecx, 4(%edx)
	orl	%ecx, %eax
	movl	%eax, (%edx)
.L1535:
	rep ret
	.cfi_endproc
.LFE275:
	.size	__asl_xprop_accum_to_self, .-__asl_xprop_accum_to_self
	.p2align 4,,15
	.globl	__asl_xprop_accum_to_self_wide
	.type	__asl_xprop_accum_to_self_wide, @function
__asl_xprop_accum_to_self_wide:
.LFB276:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	40(%esp), %edi
	testb	$4, 6(%eax)
	je	.L1540
	movl	8(%eax), %ebx
	leal	31(%ebx), %edx
	movl	%ebx, 8(%esp)
	movl	128(%eax), %ebx
	movl	%edx, %esi
	sarl	$5, %esi
	movl	%esi, %eax
	leal	0(,%esi,4), %edx
	movl	%esi, (%esp)
	testl	%eax, %eax
	movl	%edx, 12(%esp)
	leal	(%ebx,%edx), %esi
	jle	.L1542
	leal	(%edi,%edx), %ebp
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1543:
	movl	0(%ebp,%ecx,4), %eax
	movl	(%ebx,%ecx,4), %edx
	orl	(%esi,%ecx,4), %eax
	xorl	(%edi,%ecx,4), %edx
	orl	%edx, %eax
	movl	%eax, (%esi,%ecx,4)
	orl	(%edi,%ecx,4), %eax
	movl	%eax, (%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, (%esp)
	jne	.L1543
.L1542:
	movl	4(%esp), %edi
	movl	12(%esp), %eax
	movl	8(%esp), %edx
	movl	__masktab@GOT(%edi), %ecx
	subl	$4, %eax
	andl	$31, %edx
	movl	(%ecx,%edx,4), %edx
	andl	%edx, (%ebx,%eax)
	andl	%edx, (%esi,%eax)
.L1540:
	addl	$16, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE276:
	.size	__asl_xprop_accum_to_self_wide, .-__asl_xprop_accum_to_self_wide
	.p2align 4,,15
	.globl	__asl_xprop_xedge_net
	.type	__asl_xprop_xedge_net, @function
__asl_xprop_xedge_net:
.LFB277:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__idp@GOT(%eax), %eax
	movl	12(%esp), %edx
	movl	(%eax), %eax
	movl	20(%edx), %ecx
	movl	(%eax), %edx
	movl	60(%ecx), %ebx
	leal	(%ebx,%edx,4), %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.L1551
	movl	64(%ecx), %ecx
	movl	24(%ebx), %ebx
	movl	$0, (%esi)
	movzbl	(%ecx,%edx), %edx
	leal	(%eax,%ebx,4), %eax
	movl	(%eax), %ebx
	movl	%edx, (%eax)
#APP
# 6471 "v_aslib.c" 1
	movl %ebx, %ecx
# 0 "" 2
#NO_APP
.L1549:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1551:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L1549
	.cfi_endproc
.LFE277:
	.size	__asl_xprop_xedge_net, .-__asl_xprop_xedge_net
	.p2align 4,,15
	.globl	__asl_xprop_set_xedge_net
	.type	__asl_xprop_set_xedge_net, @function
__asl_xprop_set_xedge_net:
.LFB278:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	12(%esp), %ebx
	movl	20(%edx), %edx
	movl	(%eax), %eax
	movl	60(%edx), %ecx
	movl	64(%edx), %edx
	movl	(%eax), %eax
	movl	%ebx, (%ecx,%eax,4)
	movl	16(%esp), %ecx
	movb	%cl, (%edx,%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE278:
	.size	__asl_xprop_set_xedge_net, .-__asl_xprop_set_xedge_net
	.p2align 4,,15
	.globl	__asl_get_xprop_accum
	.type	__asl_get_xprop_accum, @function
__asl_get_xprop_accum:
.LFB279:
	.cfi_startproc
	movl	4(%esp), %edx
	movzbl	6(%edx), %eax
	testb	$4, %al
	je	.L1557
	andl	$-5, %eax
	movb	%al, 6(%edx)
	movl	128(%edx), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1557:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE279:
	.size	__asl_get_xprop_accum, .-__asl_get_xprop_accum
	.p2align 4,,15
	.globl	__asl_per_bit_xprop_accum
	.type	__asl_per_bit_xprop_accum, @function
__asl_per_bit_xprop_accum:
.LFB280:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %eax
	movl	20(%eax), %esi
	movl	68(%esp), %eax
	movl	44(%esi), %edx
	movl	(%edx,%eax,4), %edi
	movzbl	6(%edi), %edx
	testb	$4, %dl
	jne	.L1571
.L1559:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1571:
	.cfi_restore_state
	movl	8(%edi), %ecx
	movl	128(%edi), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	andl	$-5, %edx
	movb	%dl, 6(%edi)
	leal	31(%ecx), %ebp
	movl	%eax, 20(%esp)
	movl	76(%esp), %eax
	sarl	$5, %ebp
	sall	$2, %ebp
	addl	%ebp, %eax
	movl	%eax, 28(%esp)
	pushl	%edi
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	84(%esp)
	.cfi_def_cfa_offset 80
	call	__ld_wire_val_wrds@PLT
	movl	24(%esi), %eax
	movl	84(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	(%eax,%edx,4), %edx
	movl	8(%edi), %eax
	testl	%eax, %eax
	jle	.L1559
	addl	16(%esp), %ebp
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%edi, 8(%esp)
	movl	%ecx, 20(%esp)
	movl	%ebp, 28(%esp)
	jmp	.L1561
	.p2align 4,,10
	.p2align 3
.L1560:
	movl	8(%esp), %eax
	addl	$1, %esi
	cmpl	%esi, 8(%eax)
	jle	.L1572
.L1561:
	movl	%esi, %eax
	movl	%esi, %edi
	sarl	$5, %eax
	andl	$31, %edi
	movl	(%edx,%eax,4), %ecx
	leal	0(,%eax,4), %ebp
	btl	%edi, %ecx
	jnc	.L1560
	movl	%edx, 12(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movl	20(%esp), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	%edi, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	84(%esp)
	.cfi_def_cfa_offset 80
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 68
	movl	32(%esp), %eax
	movl	%edi, %ecx
	movl	(%eax,%ebp), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	addl	$1, %esi
	pushl	36(%esp)
	.cfi_def_cfa_offset 80
	call	__lhsbsel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	8(%esp), %eax
	movl	$1, 20(%esp)
	movl	12(%esp), %edx
	cmpl	%esi, 8(%eax)
	jg	.L1561
.L1572:
	movl	20(%esp), %eax
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE280:
	.size	__asl_per_bit_xprop_accum, .-__asl_per_bit_xprop_accum
	.p2align 4,,15
	.globl	__asl_trace_xprop_write
	.type	__asl_trace_xprop_write, @function
__asl_trace_xprop_write:
.LFB281:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	pushl	28(%esp)
	.cfi_def_cfa_offset 20
	leal	28(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 24
	leal	28(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__trace_xprop_stmt_write@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE281:
	.size	__asl_trace_xprop_write, .-__asl_trace_xprop_write
	.p2align 4,,15
	.globl	__asl_trace_xprop_write_wide
	.type	__asl_trace_xprop_write_wide, @function
__asl_trace_xprop_write_wide:
.LFB282:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	pushl	28(%esp)
	.cfi_def_cfa_offset 20
	pushl	28(%esp)
	.cfi_def_cfa_offset 24
	pushl	28(%esp)
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__trace_xprop_stmt_write@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE282:
	.size	__asl_trace_xprop_write_wide, .-__asl_trace_xprop_write_wide
	.globl	__popcountsi2
	.p2align 4,,15
	.globl	__asl_popcount_wide
	.type	__asl_popcount_wide, @function
__asl_popcount_wide:
.LFB283:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	testl	%eax, %eax
	jle	.L1580
	movl	32(%esp), %esi
	xorl	%edi, %edi
	leal	(%esi,%eax,4), %ebp
	.p2align 4,,10
	.p2align 3
.L1579:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	(%esi)
	.cfi_def_cfa_offset 48
	addl	$4, %esi
	call	__popcountsi2@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	addl	%eax, %edi
	cmpl	%ebp, %esi
	jne	.L1579
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1580:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	xorl	%edi, %edi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE283:
	.size	__asl_popcount_wide, .-__asl_popcount_wide
	.p2align 4,,15
	.globl	__asl_wid_bin_bitxnor
	.type	__asl_wid_bin_bitxnor, @function
__asl_wid_bin_bitxnor:
.LFB284:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	32(%esp), %esi
	movl	36(%esp), %edx
	addl	$31, %eax
	sarl	$5, %eax
	leal	0(,%eax,4), %ebp
	addl	%ebp, %esi
	testl	%eax, %eax
	movl	%ebp, 8(%esp)
	jle	.L1584
	movl	40(%esp), %ecx
	leal	(%edx,%eax,8), %eax
	leal	(%edx,%ebp), %ebx
	movl	32(%esp), %edi
	movl	%eax, (%esp)
	addl	%ebp, %ecx
	negl	%ebp
	jmp	.L1587
	.p2align 4,,10
	.p2align 3
.L1590:
	movl	$0, (%esi)
	movl	(%ebx,%ebp), %eax
	xorl	(%ecx,%ebp), %eax
	notl	%eax
	movl	%eax, (%edi)
.L1586:
	addl	$4, %ebx
	addl	$4, %ecx
	addl	$4, %esi
	addl	$4, %edi
	cmpl	(%esp), %ebx
	je	.L1584
.L1587:
	movl	(%ebx), %eax
	orl	(%ecx), %eax
	je	.L1590
	movl	%eax, (%esi)
	movl	(%ebx,%ebp), %edx
	xorl	(%ecx,%ebp), %edx
	notl	%edx
	orl	%edx, %eax
	movl	%eax, (%edi)
	jmp	.L1586
	.p2align 4,,10
	.p2align 3
.L1584:
	movl	4(%esp), %edi
	movl	44(%esp), %eax
	movl	8(%esp), %esi
	movl	__masktab@GOT(%edi), %edx
	movl	32(%esp), %edi
	andl	$31, %eax
	movl	(%edx,%eax,4), %eax
	andl	%eax, -4(%edi,%esi)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE284:
	.size	__asl_wid_bin_bitxnor, .-__asl_wid_bin_bitxnor
	.p2align 4,,15
	.globl	__asl_wid_bin_bitxnor_2state
	.type	__asl_wid_bin_bitxnor_2state, @function
__asl_wid_bin_bitxnor_2state:
.LFB285:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	32(%esp), %eax
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	leal	31(%eax), %esi
	sarl	$5, %esi
	testl	%esi, %esi
	jle	.L1592
	movl	24(%esp), %edx
	movl	28(%esp), %ebx
	movl	20(%esp), %ecx
	leal	(%edx,%esi,4), %edi
	.p2align 4,,10
	.p2align 3
.L1593:
	movl	(%edx), %eax
	xorl	(%ebx), %eax
	addl	$4, %edx
	addl	$4, %ebx
	addl	$4, %ecx
	notl	%eax
	movl	%eax, -4(%ecx)
	cmpl	%edi, %edx
	jne	.L1593
.L1592:
	movl	32(%esp), %eax
	movl	20(%esp), %edi
	movl	__masktab@GOT(%ebp), %edx
	andl	$31, %eax
	movl	(%edx,%eax,4), %eax
	andl	%eax, -4(%edi,%esi,4)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE285:
	.size	__asl_wid_bin_bitxnor_2state, .-__asl_wid_bin_bitxnor_2state
	.p2align 4,,15
	.globl	__asl_wid_bin_bitor
	.type	__asl_wid_bin_bitor, @function
__asl_wid_bin_bitor:
.LFB286:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	44(%esp), %edx
	movl	48(%esp), %ecx
	addl	$31, %eax
	sarl	$5, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %edx
	testl	%eax, %eax
	movl	%ebx, 16(%esp)
	movl	%edx, 20(%esp)
	jle	.L1597
	movl	52(%esp), %edi
	movl	%edx, (%esp)
	leal	(%ecx,%eax,8), %eax
	movl	44(%esp), %edx
	leal	(%ecx,%ebx), %esi
	movl	%eax, 4(%esp)
	addl	%ebx, %edi
	negl	%ebx
	movl	%ebx, %ebp
	movl	%edx, %ebx
	jmp	.L1600
	.p2align 4,,10
	.p2align 3
.L1603:
	movl	(%esp), %eax
	movl	$0, (%eax)
	movl	(%esi,%ebp), %eax
	orl	(%edi,%ebp), %eax
	movl	%eax, (%ebx)
.L1599:
	addl	$4, %esi
	addl	$4, %edi
	addl	$4, (%esp)
	addl	$4, %ebx
	cmpl	4(%esp), %esi
	je	.L1597
.L1600:
	movl	(%esi), %eax
	movl	(%edi), %ecx
	movl	%eax, %edx
	orl	%ecx, %edx
	je	.L1603
	movl	(%edi,%ebp), %edx
	andl	%eax, %edx
	orl	%ecx, %edx
	movl	%edx, 8(%esp)
	movl	(%esi,%ebp), %edx
	orl	%eax, %edx
	andl	8(%esp), %edx
	xorl	%ecx, %eax
	xorl	%eax, %edx
	movl	(%esp), %eax
	movl	%edx, (%eax)
	movl	(%edi,%ebp), %eax
	orl	(%esi,%ebp), %eax
	orl	%eax, %edx
	movl	%edx, (%ebx)
	jmp	.L1599
	.p2align 4,,10
	.p2align 3
.L1597:
	movl	12(%esp), %ecx
	movl	56(%esp), %edx
	movl	16(%esp), %eax
	movl	20(%esp), %edi
	movl	__masktab@GOT(%ecx), %ecx
	andl	$31, %edx
	subl	$4, %eax
	movl	(%ecx,%edx,4), %edx
	movl	44(%esp), %ecx
	andl	%edx, (%ecx,%eax)
	andl	%edx, (%edi,%eax)
	addl	$24, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE286:
	.size	__asl_wid_bin_bitor, .-__asl_wid_bin_bitor
	.p2align 4,,15
	.globl	__asl_wid_un_redor
	.type	__asl_wid_un_redor, @function
__asl_wid_un_redor:
.LFB287:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %edx
	movl	48(%esp), %edi
	leal	31(%edx), %esi
	sarl	$5, %esi
	cmpl	$32, %edx
	leal	(%edi,%esi,4), %ebp
	jg	.L1605
	movl	0(%ebp), %edx
	testl	%edx, %edx
	je	.L1619
.L1607:
	testl	%esi, %esi
	jle	.L1614
	movl	0(%ebp), %edx
	xorl	%eax, %eax
	notl	%edx
	testl	%edx, (%edi)
	je	.L1612
	jmp	.L1613
	.p2align 4,,10
	.p2align 3
.L1611:
	movl	0(%ebp,%eax,4), %edx
	notl	%edx
	testl	%edx, (%edi,%eax,4)
	jne	.L1613
.L1612:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	.L1611
.L1614:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$3, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1619:
	.cfi_restore_state
	movl	(%edi), %eax
	testl	%eax, %eax
	setne	%al
.L1609:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1605:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	movl	%edx, 24(%esp)
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	12(%esp), %edx
	je	.L1607
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	sete	%al
	jmp	.L1609
	.p2align 4,,10
	.p2align 3
.L1613:
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE287:
	.size	__asl_wid_un_redor, .-__asl_wid_un_redor
	.p2align 4,,15
	.globl	__asl_wid_unbitnot
	.type	__asl_wid_unbitnot, @function
__asl_wid_unbitnot:
.LFB288:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	28(%esp), %eax
	movl	20(%esp), %edi
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	addl	$31, %eax
	sarl	$5, %eax
	testl	%eax, %eax
	leal	0(,%eax,4), %ebx
	jle	.L1621
	movl	24(%esp), %edx
	movl	%edi, %ecx
	leal	(%edx,%ebx), %esi
	.p2align 4,,10
	.p2align 3
.L1622:
	movl	(%edx), %eax
	addl	$4, %edx
	addl	$4, %ecx
	notl	%eax
	orl	-4(%edx,%ebx), %eax
	movl	%eax, -4(%ecx)
	cmpl	%edx, %esi
	jne	.L1622
.L1621:
	movl	28(%esp), %eax
	movl	__masktab@GOT(%ebp), %edx
	andl	$31, %eax
	movl	(%edx,%eax,4), %eax
	andl	%eax, -4(%edi,%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE288:
	.size	__asl_wid_unbitnot, .-__asl_wid_unbitnot
	.p2align 4,,15
	.globl	__asl_wid_unbitnot_2state
	.type	__asl_wid_unbitnot_2state, @function
__asl_wid_unbitnot_2state:
.LFB289:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	28(%esp), %edi
	movl	20(%esp), %ebx
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	movl	24(%esp), %esi
	leal	31(%edi), %ecx
	sarl	$5, %ecx
	testl	%ecx, %ecx
	jle	.L1626
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1627:
	movl	(%esi,%eax,4), %edx
	notl	%edx
	movl	%edx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	.L1627
.L1626:
	movl	__masktab@GOT(%ebp), %eax
	andl	$31, %edi
	movl	(%eax,%edi,4), %eax
	andl	%eax, -4(%ebx,%ecx,4)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE289:
	.size	__asl_wid_unbitnot_2state, .-__asl_wid_unbitnot_2state
	.p2align 4,,15
	.globl	__asl_wide_bitor
	.type	__asl_wide_bitor, @function
__asl_wide_bitor:
.LFB290:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	24(%esp), %edx
	testl	%edx, %edx
	jle	.L1630
	movl	16(%esp), %eax
	movl	20(%esp), %ebx
	movl	12(%esp), %ecx
	leal	(%eax,%edx,4), %esi
	.p2align 4,,10
	.p2align 3
.L1632:
	movl	(%eax), %edx
	orl	(%ebx), %edx
	addl	$4, %eax
	addl	$4, %ebx
	addl	$4, %ecx
	movl	%edx, -4(%ecx)
	cmpl	%esi, %eax
	jne	.L1632
.L1630:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE290:
	.size	__asl_wide_bitor, .-__asl_wide_bitor
	.p2align 4,,15
	.globl	__asl_widomitxz_ne
	.type	__asl_widomitxz_ne, @function
__asl_widomitxz_ne:
.LFB291:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	32(%esp), %ebx
	movl	24(%esp), %ecx
	movl	28(%esp), %edx
	leal	0(,%ebx,4), %esi
	subl	$1, %ebx
	js	.L1639
	movl	-4(%ecx,%esi,2), %eax
	orl	-4(%edx,%esi,2), %eax
	movl	-4(%ecx,%esi), %edi
	orl	%eax, %edi
	orl	-4(%edx,%esi), %eax
	cmpl	%eax, %edi
	jne	.L1641
	leal	-8(%esi), %eax
	addl	%eax, %ecx
	addl	%eax, %edx
	jmp	.L1637
	.p2align 4,,10
	.p2align 3
.L1638:
	movl	%ecx, %edi
	movl	(%ecx,%esi), %eax
	orl	(%edx,%esi), %eax
	movl	(%edi), %ebp
	movl	%edx, (%esp)
	subl	$4, %ecx
	subl	$4, %edx
	orl	%eax, %ebp
	movl	%ebp, %edi
	movl	(%esp), %ebp
	orl	0(%ebp), %eax
	cmpl	%eax, %edi
	jne	.L1641
.L1637:
	subl	$1, %ebx
	cmpl	$-1, %ebx
	jne	.L1638
.L1639:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1641:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE291:
	.size	__asl_widomitxz_ne, .-__asl_widomitxz_ne
	.section	.rodata.str1.4
	.align 4
.LC16:
	.string	"real divide by zero results in NaN"
	.text
	.p2align 4,,15
	.globl	__asl_real_div0_warning
	.type	__asl_real_div0_warning, @function
__asl_real_div0_warning:
.LFB292:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %eax
	movl	__sfnam_ind@GOT(%ebx), %edi
	movl	__slin_cnt@GOT(%ebx), %esi
	movzwl	4(%eax), %ecx
	movl	8(%eax), %eax
	movl	(%edi), %edx
	movl	(%esi), %ebp
	movl	%eax, (%esi)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%edx, 20(%esp)
	movl	%ecx, (%edi)
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$641
	.cfi_def_cfa_offset 64
	call	__sgfwarn@PLT
	movl	28(%esp), %edx
	movl	%ebp, (%esi)
	movl	%edx, (%edi)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE292:
	.size	__asl_real_div0_warning, .-__asl_real_div0_warning
	.section	.rodata.str1.4
	.align 4
.LC17:
	.string	"?: operator select condition x/z but values are real - 0.0 returned"
	.text
	.p2align 4,,15
	.globl	__asl_real_qcol_warning
	.type	__asl_real_qcol_warning, @function
__asl_real_qcol_warning:
.LFB293:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %eax
	movl	__sfnam_ind@GOT(%ebx), %edi
	movl	__slin_cnt@GOT(%ebx), %esi
	movzwl	4(%eax), %ecx
	movl	8(%eax), %eax
	movl	(%edi), %edx
	movl	(%esi), %ebp
	movl	%eax, (%esi)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%edx, 20(%esp)
	movl	%ecx, (%edi)
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$730
	.cfi_def_cfa_offset 64
	call	__sgferr@PLT
	movl	28(%esp), %edx
	movl	%ebp, (%esi)
	movl	%edx, (%edi)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE293:
	.size	__asl_real_qcol_warning, .-__asl_real_qcol_warning
	.p2align 4,,15
	.globl	__asl_sgn_lpow_2state
	.type	__asl_sgn_lpow_2state, @function
__asl_sgn_lpow_2state:
.LFB294:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movl	80(%esp), %esi
	leal	31(%esi), %eax
	sarl	$5, %eax
	movl	%eax, 8(%esp)
	sall	$2, %eax
	movl	%eax, 12(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	memset@PLT
	movl	80(%esp), %eax
	movl	$1, (%eax)
	popl	%ecx
	.cfi_def_cfa_offset 76
	popl	%edi
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	80(%esp)
	.cfi_def_cfa_offset 80
	call	__is_lnegative@PLT
	movl	%eax, 36(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L1648
	movl	__xspi@GOT(%ebx), %ecx
	movl	(%ecx), %eax
	movl	%ecx, 16(%esp)
	addl	$1, %eax
	movl	%eax, (%ecx)
	movl	__maxxnest@GOT(%ebx), %ecx
	cmpl	(%ecx), %eax
	movl	%ecx, 12(%esp)
	jge	.L1705
.L1649:
	movl	__xstk@GOT(%ebx), %edi
	movl	(%edi), %edx
	movl	(%edx,%eax,4), %edx
	movl	4(%esp), %eax
	cmpl	%eax, 4(%edx)
	jl	.L1706
.L1650:
	movl	8(%esp), %eax
	movl	8(%edx), %ebp
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movl	%esi, (%edx)
	addl	%ebp, %eax
	movl	%eax, 12(%edx)
	pushl	%esi
	.cfi_def_cfa_offset 72
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__cp_lnegate@PLT
	popl	%eax
	.cfi_def_cfa_offset 76
	popl	%edx
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	84(%esp)
	.cfi_def_cfa_offset 80
	call	__is_lnegative@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L1707
.L1675:
	movl	16(%esp), %edx
	movl	(%edx), %eax
	movl	%eax, 24(%esp)
	addl	$1, %eax
	movl	%eax, (%edx)
	movl	12(%esp), %edx
	cmpl	(%edx), %eax
	jge	.L1708
	movl	(%edi), %edx
	movl	(%edx,%eax,4), %edx
	movl	4(%esp), %eax
	cmpl	%eax, 4(%edx)
	jl	.L1709
.L1653:
	movl	8(%esp), %eax
	movl	8(%edx), %edi
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movl	%esi, (%edx)
	addl	%edi, %eax
	movl	%eax, 12(%edx)
	pushl	%esi
	.cfi_def_cfa_offset 72
	pushl	80(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__cp_lnegate@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	.L1654
	cmpl	$1, 0(%ebp)
	je	.L1710
.L1655:
	movl	64(%esp), %eax
	movl	$0, (%eax)
.L1704:
	movl	16(%esp), %eax
	xorl	%ecx, %ecx
	subl	$2, (%eax)
.L1647:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1648:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	84(%esp)
	.cfi_def_cfa_offset 80
	call	__is_lnegative@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L1677
	movl	__xspi@GOT(%ebx), %eax
	movl	__xstk@GOT(%ebx), %edi
	movl	$0, 24(%esp)
	movl	%eax, 16(%esp)
	movl	__maxxnest@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
.L1676:
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
	movl	(%ecx), %eax
	movl	%eax, 28(%esp)
	addl	$1, %eax
	cmpl	(%edx), %eax
	movl	%eax, (%ecx)
	jge	.L1711
.L1665:
	movl	(%edi), %edx
	movl	(%edx,%eax,4), %ebp
	movl	4(%esp), %edx
	cmpl	%edx, 4(%ebp)
	jl	.L1712
.L1666:
	movl	8(%esp), %edx
	addl	8(%ebp), %edx
	addl	$1, %eax
	movl	16(%esp), %ecx
	movl	%esi, 0(%ebp)
	movl	%edx, 12(%ebp)
	movl	12(%esp), %edx
	movl	%eax, (%ecx)
	cmpl	(%edx), %eax
	jge	.L1713
.L1667:
	movl	(%edi), %edx
	movl	(%edx,%eax,4), %ecx
	movl	4(%esp), %edx
	cmpl	%edx, 4(%ecx)
	jl	.L1714
.L1668:
	movl	8(%esp), %edx
	addl	8(%ecx), %edx
	addl	$1, %eax
	movl	%esi, (%ecx)
	movl	%edx, 12(%ecx)
	movl	16(%esp), %edx
	movl	%eax, (%edx)
	movl	12(%esp), %edx
	cmpl	(%edx), %eax
	jge	.L1715
.L1669:
	movl	(%edi), %edx
	movl	4(%esp), %edi
	movl	(%edx,%eax,4), %eax
	cmpl	%edi, 4(%eax)
	jl	.L1716
.L1670:
	movl	8(%eax), %edi
	movl	8(%esp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movl	%esi, (%eax)
	addl	%edi, %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	movl	8(%ecx), %ebp
	movl	%eax, 8(%esp)
	pushl	12(%esp)
	.cfi_def_cfa_offset 72
	pushl	80(%esp)
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	memcpy@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 68
	pushl	12(%esp)
	.cfi_def_cfa_offset 72
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L1674
	.p2align 4,,10
	.p2align 3
.L1671:
	pushl	%esi
	.cfi_def_cfa_offset 68
	pushl	%edi
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	16(%esp)
	.cfi_def_cfa_offset 80
	call	__lmult@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 68
	pushl	12(%esp)
	.cfi_def_cfa_offset 72
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L1674:
	movl	0(%ebp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	andl	$1, %eax
	movl	%eax, 16(%esp)
	pushl	%esi
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__mwrshift@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L1671
	pushl	%esi
	.cfi_def_cfa_offset 68
	pushl	%edi
	.cfi_def_cfa_offset 72
	pushl	72(%esp)
	.cfi_def_cfa_offset 76
	pushl	16(%esp)
	.cfi_def_cfa_offset 80
	call	__lmult@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 68
	pushl	12(%esp)
	.cfi_def_cfa_offset 72
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	memcpy@PLT
	popl	%edx
	.cfi_def_cfa_offset 76
	popl	%ecx
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L1671
	movl	24(%esp), %eax
	testl	%eax, %eax
	jne	.L1717
.L1672:
	movl	16(%esp), %ecx
	cmpl	$1, 20(%esp)
	movl	(%ecx), %eax
	adcl	$-1, %eax
	subl	$3, %eax
	movl	%eax, (%ecx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%ecx, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ecx, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1707:
	.cfi_restore_state
	cmpl	$1, 0(%ebp)
	je	.L1718
.L1661:
	movl	72(%esp), %eax
	movl	%ebp, 68(%esp)
	movl	(%eax), %eax
	andl	$1, %eax
	movl	%eax, 24(%esp)
	jmp	.L1676
	.p2align 4,,10
	.p2align 3
.L1677:
	movl	__xspi@GOT(%ebx), %eax
	movl	68(%esp), %ebp
	movl	__xstk@GOT(%ebx), %edi
	movl	%eax, 16(%esp)
	movl	__maxxnest@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	jmp	.L1675
	.p2align 4,,10
	.p2align 3
.L1654:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, %ecx
	movl	64(%esp), %eax
	movl	$0, (%eax)
	movl	16(%esp), %eax
	subl	$1, (%eax)
	testl	%ecx, %ecx
	je	.L1647
	movl	$1, %ecx
	jmp	.L1647
	.p2align 4,,10
	.p2align 3
.L1705:
	call	__grow_xstk@PLT
	movl	16(%esp), %eax
	movl	(%eax), %eax
	jmp	.L1649
	.p2align 4,,10
	.p2align 3
.L1706:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%edx, 40(%esp)
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	24(%esp), %edx
	jmp	.L1650
	.p2align 4,,10
	.p2align 3
.L1708:
	call	__grow_xstk@PLT
	movl	16(%esp), %eax
	movl	(%edi), %edx
	movl	(%eax), %eax
	movl	(%edx,%eax,4), %edx
	movl	4(%esp), %eax
	cmpl	%eax, 4(%edx)
	jge	.L1653
.L1709:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%edx, 28(%esp)
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %edx
	jmp	.L1653
	.p2align 4,,10
	.p2align 3
.L1718:
	movl	%eax, 24(%esp)
	leal	-32(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	4(%ebp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L1661
	movl	72(%esp), %eax
	movl	24(%esp), %ecx
	testb	$1, (%eax)
	je	.L1662
	movl	4(%esp), %eax
	testl	%eax, %eax
	jle	.L1663
	movl	64(%esp), %eax
	movl	8(%esp), %edx
	addl	%eax, %edx
	.p2align 4,,10
	.p2align 3
.L1664:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %edx
	jne	.L1664
.L1663:
	movl	__masktab@GOT(%ebx), %eax
	andl	$31, %esi
	movl	64(%esp), %edi
	movl	(%eax,%esi,4), %eax
	movl	8(%esp), %esi
	andl	%eax, -4(%edi,%esi)
.L1662:
	movl	16(%esp), %eax
	subl	$1, (%eax)
	jmp	.L1647
	.p2align 4,,10
	.p2align 3
.L1717:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	__inplace_lnegate@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L1672
	.p2align 4,,10
	.p2align 3
.L1716:
	movl	%ecx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	%eax, 20(%esp)
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %ecx
	movl	4(%esp), %eax
	jmp	.L1670
	.p2align 4,,10
	.p2align 3
.L1715:
	movl	%ecx, 12(%esp)
	call	__grow_xstk@PLT
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	(%eax), %eax
	jmp	.L1669
	.p2align 4,,10
	.p2align 3
.L1714:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	%ecx
	.cfi_def_cfa_offset 80
	movl	%ecx, 44(%esp)
	call	__chg_xstk_width@PLT
	movl	32(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %ecx
	movl	(%eax), %eax
	jmp	.L1668
	.p2align 4,,10
	.p2align 3
.L1713:
	call	__grow_xstk@PLT
	movl	16(%esp), %eax
	movl	(%eax), %eax
	jmp	.L1667
	.p2align 4,,10
	.p2align 3
.L1712:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__chg_xstk_width@PLT
	movl	32(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	(%eax), %eax
	jmp	.L1666
	.p2align 4,,10
	.p2align 3
.L1711:
	call	__grow_xstk@PLT
	movl	16(%esp), %eax
	movl	(%eax), %eax
	jmp	.L1665
	.p2align 4,,10
	.p2align 3
.L1710:
	leal	-32(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	addl	$4, %ebp
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L1655
	testb	$1, (%edi)
	je	.L1704
	movl	4(%esp), %eax
	testl	%eax, %eax
	jle	.L1657
	movl	64(%esp), %eax
	movl	8(%esp), %edx
	addl	%eax, %edx
	.p2align 4,,10
	.p2align 3
.L1658:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jne	.L1658
.L1657:
	movl	__masktab@GOT(%ebx), %eax
	movl	64(%esp), %ecx
	andl	$31, %esi
	movl	8(%esp), %edi
	movl	(%eax,%esi,4), %eax
	andl	%eax, -4(%ecx,%edi)
	jmp	.L1704
	.cfi_endproc
.LFE294:
	.size	__asl_sgn_lpow_2state, .-__asl_sgn_lpow_2state
	.p2align 4,,15
	.globl	__asl_sgnmask
	.type	__asl_sgnmask, @function
__asl_sgnmask:
.LFB295:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	28(%esp), %eax
	movl	32(%esp), %ecx
	movl	24(%esp), %ebx
	subl	%eax, %ecx
	movl	%ecx, %esi
	sarl	$5, %esi
	andl	$31, %ecx
	jne	.L1720
	leal	31(%eax), %ebp
	shrl	$5, %ebp
	testl	%ebp, %ebp
	je	.L1722
	leal	0(%ebp,%esi), %edi
	leal	(%ebx,%esi,4), %ecx
	leal	(%ebx,%edi,4), %edi
	.p2align 4,,10
	.p2align 3
.L1726:
	movl	$-1, (%ecx)
	addl	$4, %ecx
	cmpl	%edi, %ecx
	jne	.L1726
.L1722:
	movl	__masktab@GOT(%edx), %edx
	leal	1073741823(%ebp,%esi), %ecx
	andl	$31, %eax
	movl	(%edx,%eax,4), %eax
	andl	%eax, (%ebx,%ecx,4)
.L1719:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1720:
	.cfi_restore_state
	movl	__masktab@GOT(%edx), %ebp
	movl	$32, %edx
	leal	0(,%esi,4), %edi
	subl	%ecx, %edx
	movl	%edi, (%esp)
	addl	%ebx, %edi
	movl	0(%ebp,%edx,4), %edx
	sall	%cl, %edx
	orl	(%edi), %edx
	addl	%eax, %ecx
	cmpl	$32, %ecx
	movl	%edx, (%edi)
	je	.L1719
	leal	-1(%ecx), %eax
	shrl	$5, %eax
	testl	%eax, %eax
	je	.L1724
	movl	(%esp), %edi
	leal	4(%ebx,%edi), %edx
	leal	(%eax,%esi), %edi
	sall	$2, %edi
	leal	4(%ebx,%edi), %eax
	.p2align 4,,10
	.p2align 3
.L1725:
	movl	$-1, (%edx)
	addl	$4, %edx
	cmpl	%edx, %eax
	jne	.L1725
	addl	%ebx, %edi
	movl	(%edi), %edx
.L1724:
	andl	$31, %ecx
	andl	0(%ebp,%ecx,4), %edx
	movl	%edx, (%edi)
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE295:
	.size	__asl_sgnmask, .-__asl_sgnmask
	.p2align 4,,15
	.globl	__asl_mdprt_bsel
	.type	__asl_mdprt_bsel, @function
__asl_mdprt_bsel:
.LFB296:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %eax
	movl	24(%esp), %ebp
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	28(%esp), %edi
	movl	12(%eax), %ecx
	movl	16(%eax), %eax
	andl	$1, %edi
	movl	12(%ecx), %ecx
	movl	12(%ecx), %ecx
	movl	8(%ecx), %ebx
	movl	16(%eax), %ecx
	movl	__contab@GOT(%edx), %eax
	movl	$-2, %edx
	addl	$31, %ebx
	movl	(%eax), %eax
	sarl	$5, %ebx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, %ecx
	sarl	$5, %eax
	sall	$2, %eax
	andl	$31, %ecx
	addl	%eax, %ebp
	leal	(%eax,%ebx,4), %ebx
	addl	24(%esp), %ebx
	movl	0(%ebp), %esi
	roll	%cl, %edx
	movl	28(%esp), %eax
	sall	%cl, %edi
	andl	%edx, %esi
	shrl	%eax
	orl	%esi, %edi
	andl	$1, %eax
	movl	%edi, 0(%ebp)
	andl	(%ebx), %edx
	sall	%cl, %eax
	orl	%eax, %edx
	movl	%edx, (%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE296:
	.size	__asl_mdprt_bsel, .-__asl_mdprt_bsel
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_1w
	.type	__asl_mdprt_bsel_1w, @function
__asl_mdprt_bsel_1w:
.LFB297:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	20(%esp), %edx
	movl	$-2, %ebx
	movl	16(%esp), %ecx
	movl	24(%esp), %eax
	movl	(%edx), %esi
	roll	%cl, %ebx
	movl	%eax, %edi
	shrl	%eax
	andl	$1, %edi
	andl	$1, %eax
	andl	%ebx, %esi
	andl	4(%edx), %ebx
	sall	%cl, %edi
	sall	%cl, %eax
	orl	%edi, %esi
	movl	%esi, (%edx)
	orl	%ebx, %eax
	movl	%eax, 4(%edx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE297:
	.size	__asl_mdprt_bsel_1w, .-__asl_mdprt_bsel_1w
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg
	.type	__asl_mdprt_bsel_nchg, @function
__asl_mdprt_bsel_nchg:
.LFB298:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$-2, %ebx
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	movl	32(%esp), %edi
	movl	40(%esp), %ebp
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	16(%edx), %ecx
	movl	__contab@GOT(%esi), %edx
	movl	12(%eax), %eax
	movl	(%edx), %edx
	movl	12(%eax), %eax
	movl	(%edx,%ecx,4), %edx
	movl	8(%eax), %eax
	movl	%edx, %ecx
	sarl	$5, %edx
	andl	$31, %ecx
	sall	$2, %edx
	addl	$31, %eax
	addl	%edx, %edi
	roll	%cl, %ebx
	sarl	$5, %eax
	movl	%ebx, 4(%esp)
	andl	(%edi), %ebx
	leal	(%edx,%eax,4), %edx
	movl	36(%esp), %eax
	addl	32(%esp), %edx
	movl	%ebx, (%esp)
	movl	36(%esp), %ebx
	shrl	%eax
	andl	$1, %eax
	sall	%cl, %eax
	andl	$1, %ebx
	sall	%cl, %ebx
	orl	(%esp), %ebx
	cmpl	%ebx, (%edi)
	je	.L1741
	movl	%ebx, (%edi)
	movl	4(%esp), %ecx
	andl	(%edx), %ecx
	orl	%ecx, %eax
.L1744:
	movl	%eax, (%edx)
	movl	__nchg_futend@GOT(%esi), %eax
	movl	$1, 0(%ebp)
	movl	$0, 28(%ebp)
	movl	(%eax), %edx
	movl	%ebp, 28(%edx)
	movl	%ebp, (%eax)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1741:
	.cfi_restore_state
	movl	(%edx), %ecx
	movl	4(%esp), %ebx
	andl	%ecx, %ebx
	orl	%ebx, %eax
	cmpl	%eax, %ecx
	jne	.L1744
	addl	$8, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE298:
	.size	__asl_mdprt_bsel_nchg, .-__asl_mdprt_bsel_nchg
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_1w
	.type	__asl_mdprt_bsel_nchg_1w, @function
__asl_mdprt_bsel_nchg_1w:
.LFB299:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-2, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	28(%esp), %edi
	movl	24(%esp), %ecx
	movl	32(%esp), %ebx
	movl	%eax, (%esp)
	movl	36(%esp), %esi
	movl	(%edi), %eax
	roll	%cl, %edx
	movl	4(%edi), %ebp
	andl	$1, %ebx
	sall	%cl, %ebx
	andl	%edx, %eax
	andl	%ebp, %edx
	orl	%eax, %ebx
	movl	32(%esp), %eax
	shrl	%eax
	andl	$1, %eax
	sall	%cl, %eax
	orl	%edx, %eax
	cmpl	%ebx, (%edi)
	je	.L1747
	movl	%ebx, (%edi)
.L1750:
	movl	%eax, 4(%edi)
	movl	(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 28(%esi)
	movl	__nchg_futend@GOT(%eax), %eax
	movl	(%eax), %edx
	movl	%esi, 28(%edx)
	movl	%esi, (%eax)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1747:
	.cfi_restore_state
	cmpl	%ebp, %eax
	jne	.L1750
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE299:
	.size	__asl_mdprt_bsel_nchg_1w, .-__asl_mdprt_bsel_nchg_1w
	.p2align 4,,15
	.globl	__asl_setup_task_thd
	.type	__asl_setup_task_thd, @function
__asl_setup_task_thd:
.LFB308:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	movl	__cur_thd@GOT(%ebx), %esi
	movl	16(%eax), %eax
	movl	(%esi), %edx
	movl	12(%eax), %eax
	movl	12(%eax), %ecx
	movl	(%edx), %eax
	andl	$-1073741761, %eax
	orl	$64, %eax
	movl	%eax, (%edx)
	movl	32(%esp), %eax
	movl	%eax, 20(%edx)
	pushl	%ecx
	.cfi_def_cfa_offset 32
	call	__setup_tsk_thread@PLT
	movl	(%esi), %edx
	movl	%eax, (%esi)
	movl	%edx, 24(%eax)
	movl	%eax, 36(%edx)
	movl	__idp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 60(%eax)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE308:
	.size	__asl_setup_task_thd, .-__asl_setup_task_thd
	.p2align 4,,15
	.globl	__asl_setup_task_thd_auto
	.type	__asl_setup_task_thd_auto, @function
__asl_setup_task_thd_auto:
.LFB309:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	movl	__cur_thd@GOT(%ebx), %esi
	movl	16(%eax), %eax
	movl	(%esi), %edx
	movl	12(%eax), %eax
	movl	12(%eax), %ecx
	movl	(%edx), %eax
	andl	$-1073741761, %eax
	orl	$64, %eax
	movl	%eax, (%edx)
	movl	32(%esp), %eax
	movl	%eax, 20(%edx)
	pushl	%ecx
	.cfi_def_cfa_offset 32
	call	__setup_tsk_thread@PLT
	movl	(%esi), %edx
	movl	%eax, (%esi)
	movl	%edx, 24(%eax)
	movl	%eax, 36(%edx)
	movl	40(%esp), %edx
	movl	%edx, 64(%eax)
	movl	__idp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 60(%eax)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE309:
	.size	__asl_setup_task_thd_auto, .-__asl_setup_task_thd_auto
	.p2align 4,,15
	.globl	__asl_tskdone_cleanup_ret
	.type	__asl_tskdone_cleanup_ret, @function
__asl_tskdone_cleanup_ret:
.LFB310:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	__cur_thd@GOT(%ebx), %edi
	movl	(%edi), %eax
	movl	24(%eax), %esi
	movl	12(%eax), %ebp
	pushl	%esi
	.cfi_def_cfa_offset 48
	call	__thrd_done_cleanup@PLT
	movl	$0, 36(%esi)
	movl	%esi, (%edi)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE310:
	.size	__asl_tskdone_cleanup_ret, .-__asl_tskdone_cleanup_ret
	.p2align 4,,15
	.globl	__asl_tskdone_cleanup_ret_auto
	.type	__asl_tskdone_cleanup_ret_auto, @function
__asl_tskdone_cleanup_ret_auto:
.LFB311:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__cur_thd@GOT(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	ret
	.cfi_endproc
.LFE311:
	.size	__asl_tskdone_cleanup_ret_auto, .-__asl_tskdone_cleanup_ret_auto
	.p2align 4,,15
	.globl	__asl_thread_auto_cleanup
	.type	__asl_thread_auto_cleanup, @function
__asl_thread_auto_cleanup:
.LFB312:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	__cur_thd@GOT(%ebx), %ebp
	movl	0(%ebp), %eax
	movl	24(%eax), %esi
	movl	64(%eax), %edi
	pushl	%esi
	.cfi_def_cfa_offset 48
	call	__thrd_done_cleanup_auto@PLT
	movl	__idp@GOT(%ebx), %eax
	movl	$0, 36(%esi)
	movl	%esi, 0(%ebp)
	movl	%edi, (%eax)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE312:
	.size	__asl_thread_auto_cleanup, .-__asl_thread_auto_cleanup
	.p2align 4,,15
	.globl	__asl_wide_cmp
	.type	__asl_wide_cmp, @function
__asl_wide_cmp:
.LFB313:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	24(%esp), %eax
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	movl	16(%esp), %esi
	movl	20(%esp), %ebx
	testl	%eax, %eax
	jns	.L1765
	jmp	.L1773
	.p2align 4,,10
	.p2align 3
.L1764:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	.L1773
.L1765:
	movl	(%esi,%eax,4), %ecx
	movl	(%ebx,%eax,4), %edx
	cmpl	%edx, %ecx
	je	.L1764
	cmpl	%edx, %ecx
	sbbl	%eax, %eax
	orl	$1, %eax
	jmp	.L1762
	.p2align 4,,10
	.p2align 3
.L1773:
	xorl	%eax, %eax
.L1762:
	movl	28(%esp), %ebx
	leal	-3(%ebx), %edx
	cmpl	$6, %edx
	ja	.L1775
	addl	.L1768@GOTOFF(%edi,%edx,4), %edi
	jmp	*%edi
	.section	.rodata
	.align 4
	.align 4
.L1768:
	.long	.L1767@GOTOFF
	.long	.L1775@GOTOFF
	.long	.L1775@GOTOFF
	.long	.L1779@GOTOFF
	.long	.L1770@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1772@GOTOFF
	.text
	.p2align 4,,10
	.p2align 3
.L1772:
	notl	%eax
.L1779:
	shrl	$31, %eax
.L1761:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1770:
	.cfi_restore_state
	testl	%eax, %eax
	setle	%al
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1767:
	.cfi_restore_state
	testl	%eax, %eax
	sete	%al
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1771:
	.cfi_restore_state
	testl	%eax, %eax
	setg	%al
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1775:
	.cfi_restore_state
	movl	$1, %eax
	jmp	.L1761
	.cfi_endproc
.LFE313:
	.size	__asl_wide_cmp, .-__asl_wide_cmp
	.p2align 4,,15
	.globl	__asl_sgn_wide_cmp
	.type	__asl_sgn_wide_cmp, @function
__asl_sgn_wide_cmp:
.LFB314:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	20(%esp), %ebx
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	leal	31(%ecx), %eax
	subl	$1, %ecx
	andl	$31, %ecx
	sarl	$5, %eax
	leal	1073741823(%eax), %edi
	movl	(%edx,%edi,4), %ebp
	movl	(%ebx,%edi,4), %edi
	shrl	%cl, %ebp
	andl	$1, %ebp
	btl	%ecx, %edi
	jnc	.L1781
	testl	%ebp, %ebp
	movl	$-1, %ecx
	jne	.L1783
.L1782:
	movl	32(%esp), %eax
	subl	$3, %eax
	cmpl	$6, %eax
	ja	.L1798
	addl	.L1789@GOTOFF(%esi,%eax,4), %esi
	jmp	*%esi
	.section	.rodata
	.align 4
	.align 4
.L1789:
	.long	.L1788@GOTOFF
	.long	.L1798@GOTOFF
	.long	.L1798@GOTOFF
	.long	.L1790@GOTOFF
	.long	.L1791@GOTOFF
	.long	.L1792@GOTOFF
	.long	.L1793@GOTOFF
	.text
	.p2align 4,,10
	.p2align 3
.L1781:
	testl	%ebp, %ebp
	movl	$1, %ecx
	jne	.L1782
.L1783:
	subl	$1, %eax
	jns	.L1786
	.p2align 4,,10
	.p2align 3
.L1796:
	xorl	%ecx, %ecx
	jmp	.L1782
	.p2align 4,,10
	.p2align 3
.L1785:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	.L1796
.L1786:
	movl	(%ebx,%eax,4), %edi
	movl	(%edx,%eax,4), %ecx
	cmpl	%ecx, %edi
	je	.L1785
	cmpl	%ecx, %edi
	setge	%cl
	movzbl	%cl, %ecx
	leal	-1(%ecx,%ecx), %ecx
	jmp	.L1782
	.p2align 4,,10
	.p2align 3
.L1793:
	movl	%ecx, %eax
	notl	%eax
	shrl	$31, %eax
.L1780:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1788:
	.cfi_restore_state
	xorl	%eax, %eax
	testl	%ecx, %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	sete	%al
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1790:
	.cfi_restore_state
	movl	%ecx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	shrl	$31, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1791:
	.cfi_restore_state
	xorl	%eax, %eax
	testl	%ecx, %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	setle	%al
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1792:
	.cfi_restore_state
	xorl	%eax, %eax
	testl	%ecx, %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	setg	%al
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1798:
	.cfi_restore_state
	movl	$1, %eax
	jmp	.L1780
	.cfi_endproc
.LFE314:
	.size	__asl_sgn_wide_cmp, .-__asl_sgn_wide_cmp
	.p2align 4,,15
	.globl	__asl_wide_word_cmp
	.type	__asl_wide_word_cmp, @function
__asl_wide_word_cmp:
.LFB315:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%eax, %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %esi
	movl	20(%esp), %edx
	movl	24(%esp), %ebx
	cmpl	%esi, (%ecx)
	je	.L1804
	sbbl	%eax, %eax
	orl	$1, %eax
.L1804:
	testl	%edx, %edx
	jg	.L1807
	jmp	.L1805
	.p2align 4,,10
	.p2align 3
.L1823:
	subl	$1, %edx
	je	.L1805
.L1807:
	movl	(%ecx,%edx,4), %esi
	testl	%esi, %esi
	je	.L1823
	movl	$1, %eax
.L1805:
	cmpl	$7, %ebx
	je	.L1809
	jle	.L1824
	cmpl	$8, %ebx
	je	.L1812
	notl	%eax
	shrl	$31, %eax
	cmpl	$9, %ebx
	jne	.L1818
.L1803:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1812:
	.cfi_restore_state
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1824:
	.cfi_restore_state
	shrl	$31, %eax
	cmpl	$6, %ebx
	je	.L1803
.L1818:
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1809:
	.cfi_restore_state
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE315:
	.size	__asl_wide_word_cmp, .-__asl_wide_word_cmp
	.p2align 4,,15
	.globl	__asl_wide_sgnword_cmp
	.type	__asl_wide_sgnword_cmp, @function
__asl_wide_sgnword_cmp:
.LFB316:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	24(%esp), %ecx
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	movl	28(%esp), %ebx
	leal	31(%ecx), %edx
	subl	$1, %ecx
	sarl	$5, %edx
	movl	-4(%esi,%edx,4), %eax
	shrl	%cl, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	testl	%edi, %edi
	js	.L1860
	testl	%ecx, %ecx
	movl	$1, %eax
	je	.L1861
.L1827:
	cmpl	$7, %ebx
	je	.L1835
.L1866:
	jle	.L1862
	cmpl	$8, %ebx
	je	.L1838
	notl	%eax
	shrl	$31, %eax
	cmpl	$9, %ebx
	jne	.L1850
.L1825:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1861:
	.cfi_restore_state
	cmpl	(%esi), %edi
	je	.L1863
	setge	%al
	movzbl	%al, %eax
	leal	-1(%eax,%eax), %eax
.L1841:
	subl	$1, %edx
	testl	%edx, %edx
	jle	.L1827
	movl	(%esi,%edx,4), %edi
	testl	%edi, %edi
	jne	.L1847
	.p2align 4,,10
	.p2align 3
.L1864:
	subl	$1, %edx
	je	.L1827
	movl	(%esi,%edx,4), %edi
	testl	%edi, %edi
	je	.L1864
.L1847:
	movl	$-1, %eax
	jmp	.L1827
	.p2align 4,,10
	.p2align 3
.L1838:
	testl	%eax, %eax
	setg	%al
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1860:
	.cfi_restore_state
	testl	%ecx, %ecx
	movl	$-1, %eax
	je	.L1827
	cmpl	(%esi), %edi
	jne	.L1842
	xorl	%eax, %eax
.L1843:
	subl	$1, %edx
	testl	%edx, %edx
	jg	.L1833
	jmp	.L1827
	.p2align 4,,10
	.p2align 3
.L1865:
	subl	$1, %edx
	je	.L1827
.L1833:
	movl	(%esi,%edx,4), %ecx
	testl	%ecx, %ecx
	je	.L1865
	cmpl	$7, %ebx
	movl	$1, %eax
	jne	.L1866
.L1835:
	testl	%eax, %eax
	setle	%al
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1862:
	.cfi_restore_state
	shrl	$31, %eax
	cmpl	$6, %ebx
	je	.L1825
.L1850:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
.L1842:
	.cfi_restore_state
	setge	%al
	movzbl	%al, %eax
	leal	-1(%eax,%eax), %eax
	jmp	.L1843
.L1863:
	xorl	%eax, %eax
	jmp	.L1841
	.cfi_endproc
.LFE316:
	.size	__asl_wide_sgnword_cmp, .-__asl_wide_sgnword_cmp
	.p2align 4,,15
	.globl	__asl_wide_jmpor_0
	.type	__asl_wide_jmpor_0, @function
__asl_wide_jmpor_0:
.LFB317:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %ecx
	testl	%eax, %eax
	jns	.L1870
	jmp	.L1871
	.p2align 4,,10
	.p2align 3
.L1876:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	.L1871
.L1870:
	movl	(%ebx,%eax,4), %edx
	orl	(%ecx,%eax,4), %edx
	je	.L1876
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1871:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE317:
	.size	__asl_wide_jmpor_0, .-__asl_wide_jmpor_0
	.p2align 4,,15
	.globl	__asl_wide_jmp_eq
	.type	__asl_wide_jmp_eq, @function
__asl_wide_jmp_eq:
.LFB318:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %eax
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	testl	%eax, %eax
	jns	.L1880
	jmp	.L1881
	.p2align 4,,10
	.p2align 3
.L1886:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	.L1881
.L1880:
	movl	(%edx,%eax,4), %ebx
	cmpl	%ebx, (%ecx,%eax,4)
	je	.L1886
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1881:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE318:
	.size	__asl_wide_jmp_eq, .-__asl_wide_jmp_eq
	.p2align 4,,15
	.globl	__asl_wide_cmp_eq
	.type	__asl_wide_cmp_eq, @function
__asl_wide_cmp_eq:
.LFB319:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %eax
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	testl	%eax, %eax
	jns	.L1890
	jmp	.L1891
	.p2align 4,,10
	.p2align 3
.L1896:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	.L1891
.L1890:
	movl	(%edx,%eax,4), %ebx
	cmpl	%ebx, (%ecx,%eax,4)
	je	.L1896
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1891:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE319:
	.size	__asl_wide_cmp_eq, .-__asl_wide_cmp_eq
	.p2align 4,,15
	.globl	__asl_wide_cmp_neq
	.type	__asl_wide_cmp_neq, @function
__asl_wide_cmp_neq:
.LFB543:
	.cfi_startproc
	jmp	__asl_wide_jmp_eq
	.cfi_endproc
.LFE543:
	.size	__asl_wide_cmp_neq, .-__asl_wide_cmp_neq
	.p2align 4,,15
	.globl	__asl_jmp_eq_wide_var
	.type	__asl_jmp_eq_wide_var, @function
__asl_jmp_eq_wide_var:
.LFB321:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %eax
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	addl	$31, %eax
	sarl	$5, %eax
	testl	%eax, %eax
	jns	.L1901
	jmp	.L1902
	.p2align 4,,10
	.p2align 3
.L1907:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	.L1902
.L1901:
	movl	(%edx,%eax,4), %ebx
	cmpl	%ebx, (%ecx,%eax,4)
	je	.L1907
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1902:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE321:
	.size	__asl_jmp_eq_wide_var, .-__asl_jmp_eq_wide_var
	.p2align 4,,15
	.globl	__asl_sgn_xtnd_widen
	.type	__asl_sgn_xtnd_widen, @function
__asl_sgn_xtnd_widen:
.LFB322:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movl	96(%esp), %ebp
	movl	84(%esp), %esi
	movl	92(%esp), %edx
	movl	88(%esp), %edi
	leal	31(%ebp), %eax
	movl	%edx, 24(%esp)
	sarl	$5, %eax
	leal	(%esi,%eax,4), %eax
	movl	%eax, 16(%esp)
	leal	31(%edx), %eax
	sarl	$5, %eax
	leal	0(,%eax,4), %esi
	movl	%eax, 20(%esp)
	pushl	%esi
	.cfi_def_cfa_offset 88
	pushl	%edi
	.cfi_def_cfa_offset 92
	addl	%esi, %edi
	pushl	92(%esp)
	.cfi_def_cfa_offset 96
	call	memcpy@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 84
	pushl	%esi
	.cfi_def_cfa_offset 88
	pushl	%edi
	.cfi_def_cfa_offset 92
	pushl	24(%esp)
	.cfi_def_cfa_offset 96
	call	memcpy@PLT
	movl	36(%esp), %edx
	leal	-1(%edx), %edi
	subl	%edx, %ebp
	movl	%edi, %eax
	andl	$31, %eax
	addl	%eax, %ebp
	movl	%eax, 36(%esp)
	leal	-31(%ebp), %eax
	movl	%ebp, %edi
	sarl	$5, %edi
	movl	%eax, 40(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	cmpl	$32, %edx
	je	.L1933
	movl	16(%esp), %eax
	movl	80(%esp), %edx
	leal	1073741823(%eax), %ecx
	movl	%ecx, 36(%esp)
	leal	-4(%esi), %ecx
	addl	%ecx, %edx
	addl	12(%esp), %ecx
	movl	(%edx), %eax
	movl	%ecx, 28(%esp)
	movl	20(%esp), %ecx
	movl	%eax, 32(%esp)
	btl	%ecx, %eax
	jnc	.L1918
	movl	__masktab@GOT(%ebx), %ebp
	movl	%ebp, %eax
	movl	%ebp, 40(%esp)
	movl	$31, %ebp
	subl	%ecx, %ebp
	addl	$1, %ecx
	movl	%ecx, 44(%esp)
	movl	(%eax,%ebp,4), %ebp
	movzbl	44(%esp), %ecx
	movl	%ebp, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	32(%esp), %eax
	orl	%ecx, %eax
	testl	%edi, %edi
	movl	%eax, (%edx)
	jle	.L1919
	movl	80(%esp), %ebp
	movl	16(%esp), %edx
	addl	%esi, %ebp
	addl	%edi, %edx
	movl	%ebp, %eax
	movl	80(%esp), %ebp
	leal	0(%ebp,%edx,4), %edx
	.p2align 4,,10
	.p2align 3
.L1920:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %edx
	jne	.L1920
.L1919:
	movl	24(%esp), %edx
	movl	40(%esp), %ebp
	movl	36(%esp), %eax
	andl	$31, %edx
	movl	0(%ebp,%edx,4), %edx
	movl	80(%esp), %ebp
	addl	%edi, %eax
	sall	$2, %eax
	movl	%eax, 24(%esp)
	andl	%edx, 0(%ebp,%eax)
	movl	28(%esp), %ebp
	movl	20(%esp), %eax
	movl	0(%ebp), %ebp
	btl	%eax, %ebp
	jnc	.L1921
	movl	28(%esp), %ebx
	orl	%ecx, %ebp
	testl	%edi, %edi
	movl	%ebp, (%ebx)
	jle	.L1922
	movl	16(%esp), %ebx
	movl	12(%esp), %eax
	addl	%edi, %ebx
	leal	(%eax,%esi), %ecx
	leal	(%eax,%ebx,4), %ebx
	movl	24(%esp), %eax
	.p2align 4,,10
	.p2align 3
.L1923:
	movl	$-1, (%ecx)
	addl	$4, %ecx
	cmpl	%ebx, %ecx
	jne	.L1923
	movl	%eax, 24(%esp)
.L1922:
	movl	12(%esp), %eax
	movl	24(%esp), %esi
	andl	%edx, (%eax,%esi)
.L1908:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1918:
	.cfi_restore_state
	movl	80(%esp), %eax
	leal	0(,%edi,4), %ebp
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	%ebp
	.cfi_def_cfa_offset 88
	pushl	$0
	.cfi_def_cfa_offset 92
	addl	%esi, %eax
	pushl	%eax
	.cfi_def_cfa_offset 96
	call	memset@PLT
	movl	44(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	20(%esp), %ecx
	movl	(%eax), %edx
	btl	%ecx, %edx
	jnc	.L1924
	movl	__masktab@GOT(%ebx), %ebx
	movl	$31, %eax
	subl	%ecx, %eax
	addl	$1, %ecx
	movl	(%ebx,%eax,4), %eax
	movl	%ebx, 40(%esp)
	sall	%cl, %eax
	orl	%eax, %edx
	movl	28(%esp), %eax
	testl	%edi, %edi
	movl	%edx, (%eax)
	jle	.L1925
	movl	16(%esp), %eax
	movl	12(%esp), %ebx
	addl	%edi, %eax
	leal	(%ebx,%esi), %edx
	leal	(%ebx,%eax,4), %eax
	.p2align 4,,10
	.p2align 3
.L1926:
	movl	$-1, (%edx)
	addl	$4, %edx
	cmpl	%edx, %eax
	jne	.L1926
.L1925:
	movl	24(%esp), %edx
	movl	40(%esp), %esi
	movl	36(%esp), %eax
	andl	$31, %edx
	movl	(%esi,%edx,4), %edx
	movl	12(%esp), %esi
	addl	%edi, %eax
	andl	%edx, (%esi,%eax,4)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1933:
	.cfi_restore_state
	movl	80(%esp), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jns	.L1910
	testl	%edi, %edi
	jle	.L1911
	movl	16(%esp), %ecx
	movl	80(%esp), %eax
	leal	(%edi,%ecx), %edx
	movl	80(%esp), %ecx
	addl	%esi, %eax
	leal	(%ecx,%edx,4), %edx
	.p2align 4,,10
	.p2align 3
.L1912:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %edx
	jne	.L1912
.L1911:
	movl	24(%esp), %ecx
	movl	__masktab@GOT(%ebx), %edx
	movl	16(%esp), %eax
	andl	$31, %ecx
	movl	(%edx,%ecx,4), %edx
	movl	80(%esp), %ecx
	leal	1073741823(%eax,%edi), %eax
	andl	%edx, (%ecx,%eax,4)
	movl	12(%esp), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	js	.L1934
.L1921:
	movl	12(%esp), %eax
	leal	0(,%edi,4), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	%edx
	.cfi_def_cfa_offset 88
	pushl	$0
	.cfi_def_cfa_offset 92
	addl	%esi, %eax
	pushl	%eax
	.cfi_def_cfa_offset 96
	call	memset@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1910:
	.cfi_restore_state
	movl	80(%esp), %edx
	leal	0(,%edi,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	$0
	.cfi_def_cfa_offset 92
	addl	%esi, %edx
	pushl	%edx
	.cfi_def_cfa_offset 96
	call	memset@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	12(%esp), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	jns	.L1921
.L1934:
	testl	%edi, %edi
	jle	.L1915
	leal	(%ecx,%esi), %eax
	movl	16(%esp), %esi
	leal	(%edi,%esi), %edx
	leal	(%ecx,%edx,4), %edx
	.p2align 4,,10
	.p2align 3
.L1916:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %edx
	jne	.L1916
.L1915:
	movl	16(%esp), %eax
	movl	24(%esp), %edx
	movl	__masktab@GOT(%ebx), %ecx
	movl	12(%esp), %esi
	leal	1073741823(%eax,%edi), %eax
	andl	$31, %edx
	movl	(%ecx,%edx,4), %edx
	andl	%edx, (%esi,%eax,4)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1924:
	.cfi_restore_state
	movl	12(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	%ebp
	.cfi_def_cfa_offset 88
	pushl	$0
	.cfi_def_cfa_offset 92
	addl	%esi, %eax
	pushl	%eax
	.cfi_def_cfa_offset 96
	call	memset@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L1908
	.cfi_endproc
.LFE322:
	.size	__asl_sgn_xtnd_widen, .-__asl_sgn_xtnd_widen
	.p2align 4,,15
	.globl	__asl_sgn_xtnd_widen_2state
	.type	__asl_sgn_xtnd_widen_2state, @function
__asl_sgn_xtnd_widen_2state:
.LFB323:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	60(%esp), %edx
	movl	52(%esp), %edi
	leal	31(%edx), %ebp
	movl	%edx, 4(%esp)
	sarl	$5, %ebp
	leal	0(,%ebp,4), %esi
	pushl	%esi
	.cfi_def_cfa_offset 56
	pushl	60(%esp)
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	memcpy@PLT
	movl	16(%esp), %edx
	movl	76(%esp), %eax
	leal	-1(%edx), %ecx
	subl	%edx, %eax
	andl	$31, %ecx
	leal	-31(%ecx,%eax), %eax
	movl	%eax, 16(%esp)
	addl	$31, %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	sarl	$5, %eax
	cmpl	$32, %edx
	je	.L1947
	leal	1073741823(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-4(%edi,%esi), %edx
	movl	%edx, 8(%esp)
	movl	(%edx), %edx
	btl	%ecx, %edx
	movl	%edx, 12(%esp)
	jnc	.L1941
	movl	__masktab@GOT(%ebx), %ebx
	movl	$31, %edx
	subl	%ecx, %edx
	addl	$1, %ecx
	movl	(%ebx,%edx,4), %edx
	sall	%cl, %edx
	orl	12(%esp), %edx
	movl	8(%esp), %ecx
	testl	%eax, %eax
	movl	%edx, (%ecx)
	jle	.L1942
	addl	%eax, %ebp
	addl	%edi, %esi
	leal	(%edi,%ebp,4), %edx
	.p2align 4,,10
	.p2align 3
.L1943:
	movl	$-1, (%esi)
	addl	$4, %esi
	cmpl	%esi, %edx
	jne	.L1943
.L1942:
	movl	4(%esp), %ecx
	movl	(%esp), %edx
	addl	%eax, %ecx
	andl	$31, %edx
	movl	(%ebx,%edx,4), %eax
	andl	%eax, (%edi,%ecx,4)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1947:
	.cfi_restore_state
	movl	(%edi), %edx
	testl	%edx, %edx
	js	.L1948
.L1941:
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	addl	%edi, %esi
	sall	$2, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	memset@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1948:
	.cfi_restore_state
	testl	%eax, %eax
	jle	.L1938
	leal	(%eax,%ebp), %edx
	addl	%edi, %esi
	leal	(%edi,%edx,4), %edx
	.p2align 4,,10
	.p2align 3
.L1939:
	movl	$-1, (%esi)
	addl	$4, %esi
	cmpl	%edx, %esi
	jne	.L1939
.L1938:
	movl	(%esp), %ecx
	movl	__masktab@GOT(%ebx), %edx
	leal	1073741823(%ebp,%eax), %eax
	andl	$31, %ecx
	movl	(%edx,%ecx,4), %edx
	andl	%edx, (%edi,%eax,4)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE323:
	.size	__asl_sgn_xtnd_widen_2state, .-__asl_sgn_xtnd_widen_2state
	.p2align 4,,15
	.globl	__asl_repcnt_jmp
	.type	__asl_repcnt_jmp, @function
__asl_repcnt_jmp:
.LFB325:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	testl	%edx, %edx
	movl	(%eax), %eax
	je	.L1949
	testl	%eax, %eax
	movl	$0, %edx
	cmovs	%edx, %eax
.L1949:
	rep ret
	.cfi_endproc
.LFE325:
	.size	__asl_repcnt_jmp, .-__asl_repcnt_jmp
	.p2align 4,,15
	.globl	__asl_wide_any1
	.type	__asl_wide_any1, @function
__asl_wide_any1:
.LFB326:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %eax
	movl	8(%esp), %ecx
	movl	12(%esp), %ebx
	testl	%eax, %eax
	jns	.L1957
	jmp	.L1958
	.p2align 4,,10
	.p2align 3
.L1963:
	subl	$1, %eax
	cmpl	$-1, %eax
	je	.L1958
.L1957:
	movl	(%ebx,%eax,4), %edx
	notl	%edx
	testl	%edx, (%ecx,%eax,4)
	je	.L1963
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1958:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE326:
	.size	__asl_wide_any1, .-__asl_wide_any1
	.p2align 4,,15
	.globl	__asl_wide_qcol_comb_opands
	.type	__asl_wide_qcol_comb_opands, @function
__asl_wide_qcol_comb_opands:
.LFB327:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	32(%esp), %eax
	testl	%eax, %eax
	jle	.L1964
	movl	28(%esp), %edx
	leal	0(,%eax,4), %esi
	movl	24(%esp), %ecx
	movl	20(%esp), %ebx
	leal	(%edx,%esi), %edi
	.p2align 4,,10
	.p2align 3
.L1966:
	movl	(%edx,%esi), %eax
	movl	(%edx), %ebp
	addl	$4, %edx
	orl	(%ecx,%esi), %eax
	xorl	(%ecx), %ebp
	addl	$4, %ebx
	addl	$4, %ecx
	orl	%ebp, %eax
	movl	%eax, -4(%ebx,%esi)
	orl	-4(%ecx), %eax
	movl	%eax, -4(%ebx)
	cmpl	%edx, %edi
	jne	.L1966
.L1964:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE327:
	.size	__asl_wide_qcol_comb_opands, .-__asl_wide_qcol_comb_opands
	.p2align 4,,15
	.globl	__asl_sgnbit_on
	.type	__asl_sgnbit_on, @function
__asl_sgnbit_on:
.LFB328:
	.cfi_startproc
	movl	8(%esp), %ecx
	movl	$1, %eax
	leal	31(%ecx), %edx
	andl	$31, %ecx
	subl	$1, %ecx
	sall	%cl, %eax
	movl	4(%esp), %ecx
	sarl	$5, %edx
	andl	-4(%ecx,%edx,4), %eax
	ret
	.cfi_endproc
.LFE328:
	.size	__asl_sgnbit_on, .-__asl_sgnbit_on
	.p2align 4,,15
	.globl	__asl_eval_wide_wire
	.type	__asl_eval_wide_wire, @function
__asl_eval_wide_wire:
.LFB329:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	48(%esp), %eax
	movl	48(%esp), %edx
	sall	$2, %eax
	testl	%edx, %edx
	jle	.L1970
	movl	36(%esp), %ebp
	xorl	%ebx, %ebx
	movl	%ebx, (%esp)
	leal	0(%ebp,%eax), %edx
	.p2align 4,,10
	.p2align 3
.L1975:
	movl	(%esp), %edi
	movl	44(%esp), %eax
	movl	0(%ebp), %ecx
	movl	(%eax,%edi,4), %ebx
	movl	40(%esp), %eax
	movl	(%eax,%edi,4), %eax
	movl	(%edx), %edi
	movl	%ebx, %esi
	movl	%ebx, 8(%esp)
	movl	%ecx, %ebx
	xorl	%edi, %esi
	movl	%eax, 4(%esp)
	xorl	%ecx, %eax
	orl	%esi, %eax
	notl	%eax
	andl	%eax, %ecx
	movl	%ecx, 0(%ebp)
	movl	%edi, %ecx
	andl	%eax, %ecx
	cmpl	$-1, %eax
	movl	%ecx, (%edx)
	je	.L1973
	movl	%ebx, %ecx
	movl	%ebx, 12(%esp)
	movl	4(%esp), %ebx
	notl	%ecx
	movl	%ecx, %esi
	andl	%edi, %esi
	andl	%esi, %ebx
	orl	%ebx, 0(%ebp)
	movl	8(%esp), %ebx
	orl	%esi, %eax
	movl	%ebx, %ecx
	andl	%esi, %ecx
	orl	%ecx, (%edx)
	cmpl	$-1, %eax
	je	.L1973
	movl	4(%esp), %esi
	movl	12(%esp), %ecx
	notl	%esi
	andl	%ebx, %esi
	andl	%esi, %ecx
	andl	%esi, %edi
	orl	%ecx, 0(%ebp)
	orl	%eax, %esi
	orl	%edi, (%edx)
	cmpl	$-1, %esi
	je	.L1973
	notl	%esi
	orl	%esi, 0(%ebp)
	orl	%esi, (%edx)
.L1973:
	addl	$1, (%esp)
	addl	$4, %ebp
	addl	$4, %edx
	movl	(%esp), %eax
	cmpl	%eax, 48(%esp)
	jne	.L1975
.L1970:
	addl	$16, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE329:
	.size	__asl_eval_wide_wire, .-__asl_eval_wide_wire
	.p2align 4,,15
	.globl	__asl_eval_wide_wire_and
	.type	__asl_eval_wide_wire_and, @function
__asl_eval_wide_wire_and:
.LFB330:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	44(%esp), %eax
	movl	44(%esp), %edx
	sall	$2, %eax
	testl	%edx, %edx
	jle	.L1984
	movl	32(%esp), %ebx
	movl	$0, (%esp)
	leal	(%ebx,%eax), %esi
	.p2align 4,,10
	.p2align 3
.L1989:
	movl	(%esp), %eax
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	movl	(%edx,%eax,4), %ebp
	movl	(%ebx), %edx
	movl	(%ecx,%eax,4), %edi
	movl	(%esi), %ecx
	movl	%ebp, %eax
	xorl	%edx, %eax
	movl	%edi, 4(%esp)
	xorl	%ecx, %edi
	orl	%edi, %eax
	movl	%edx, %edi
	notl	%eax
	andl	%eax, %edi
	movl	%edi, (%ebx)
	movl	%ecx, %edi
	andl	%eax, %edi
	cmpl	$-1, %eax
	movl	%edi, (%esi)
	je	.L1987
	movl	%edx, %edi
	movl	%ebp, 8(%esp)
	notl	%edi
	andl	%ecx, %edi
	andl	%edi, %ebp
	orl	%ebp, (%ebx)
	movl	4(%esp), %ebp
	orl	%edi, %eax
	andl	%edi, %ebp
	orl	%ebp, (%esi)
	cmpl	$-1, %eax
	je	.L1987
	movl	8(%esp), %edi
	movl	%edx, %ebp
	notl	%edi
	andl	4(%esp), %edi
	andl	%edi, %ebp
	orl	%edi, %eax
	orl	%ebp, (%ebx)
	movl	%ecx, %ebp
	andl	%edi, %ebp
	orl	%ebp, (%esi)
	cmpl	$-1, %eax
	je	.L1987
	movl	4(%esp), %ebp
	orl	%ecx, %edx
	notl	%eax
	movl	8(%esp), %edi
	orl	%ebp, %ecx
	orl	%ebp, %edi
	andl	%eax, %ecx
	andl	%edi, %edx
	andl	%eax, %edx
	orl	(%ebx), %edx
	movl	%edx, (%ebx)
	andl	%edx, %ecx
	orl	%ecx, (%esi)
.L1987:
	addl	$1, (%esp)
	addl	$4, %ebx
	addl	$4, %esi
	movl	(%esp), %eax
	cmpl	%eax, 44(%esp)
	jne	.L1989
.L1984:
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE330:
	.size	__asl_eval_wide_wire_and, .-__asl_eval_wide_wire_and
	.p2align 4,,15
	.globl	__asl_eval_wide_wire_or
	.type	__asl_eval_wide_wire_or, @function
__asl_eval_wide_wire_or:
.LFB331:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	48(%esp), %eax
	movl	48(%esp), %edx
	sall	$2, %eax
	testl	%edx, %edx
	jle	.L1998
	movl	36(%esp), %ebp
	movl	$0, (%esp)
	leal	0(%ebp,%eax), %ebx
	.p2align 4,,10
	.p2align 3
.L2004:
	movl	(%esp), %edx
	movl	40(%esp), %ecx
	movl	44(%esp), %eax
	movl	(%ecx,%edx,4), %esi
	movl	0(%ebp), %ecx
	movl	(%eax,%edx,4), %eax
	movl	(%ebx), %edx
	movl	%esi, 4(%esp)
	movl	%eax, %edi
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	xorl	%edx, %edi
	xorl	%ecx, %eax
	movl	%ecx, %esi
	orl	%edi, %eax
	movl	%edi, 12(%esp)
	notl	%eax
	andl	%eax, %esi
	movl	%esi, 0(%ebp)
	movl	%edx, %esi
	andl	%eax, %esi
	cmpl	$-1, %eax
	movl	%esi, (%ebx)
	je	.L2001
	movl	%ecx, %esi
	movl	4(%esp), %edi
	notl	%esi
	andl	%edx, %esi
	andl	%esi, %edi
	orl	%edi, 0(%ebp)
	movl	8(%esp), %edi
	orl	%esi, %eax
	andl	%esi, %edi
	orl	%edi, (%ebx)
	cmpl	$-1, %eax
	je	.L2001
	movl	4(%esp), %esi
	movl	%ecx, %edi
	notl	%esi
	andl	8(%esp), %esi
	andl	%esi, %edi
	orl	%esi, %eax
	orl	%edi, 0(%ebp)
	movl	%edx, %edi
	andl	%esi, %edi
	orl	(%ebx), %edi
	cmpl	$-1, %eax
	je	.L2010
	notl	%eax
	movl	%eax, %esi
	movl	4(%esp), %eax
	andl	%edx, %eax
	orl	8(%esp), %eax
	orl	%ecx, %edx
	orl	4(%esp), %ecx
	andl	%edx, %eax
	xorl	12(%esp), %eax
	andl	%esi, %eax
	orl	%eax, %edi
	movl	%edi, (%ebx)
	orl	%ecx, %edi
	andl	%esi, %edi
	orl	%edi, 0(%ebp)
.L2001:
	addl	$1, (%esp)
	addl	$4, %ebp
	addl	$4, %ebx
	movl	(%esp), %eax
	cmpl	%eax, 48(%esp)
	jne	.L2004
.L1998:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2010:
	.cfi_restore_state
	movl	%edi, (%ebx)
	jmp	.L2001
	.cfi_endproc
.LFE331:
	.size	__asl_eval_wide_wire_or, .-__asl_eval_wide_wire_or
	.p2align 4,,15
	.globl	__asl_eval_1w_nonstren_wire
	.type	__asl_eval_1w_nonstren_wire, @function
__asl_eval_1w_nonstren_wire:
.LFB332:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ecx
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	(%ecx), %ebx
	movl	4(%ecx), %edi
	xorl	%ebx, %eax
	xorl	%edi, %edx
	movl	%ebx, %ebp
	orl	%edx, %eax
	movl	%edi, %esi
	notl	%eax
	andl	%eax, %esi
	andl	%eax, %ebp
	cmpl	$-1, %eax
	movl	%ebp, (%ecx)
	movl	%esi, (%esp)
	movl	%esi, 4(%ecx)
	je	.L2011
	movl	%ebx, %edx
	movl	28(%esp), %esi
	notl	%edx
	andl	%edi, %edx
	andl	%edx, %esi
	orl	%edx, %eax
	orl	%esi, %ebp
	movl	32(%esp), %esi
	movl	%ebp, (%ecx)
	andl	%edx, %esi
	orl	(%esp), %esi
	cmpl	$-1, %eax
	movl	%esi, 4(%ecx)
	je	.L2011
	movl	28(%esp), %edx
	notl	%edx
	andl	32(%esp), %edx
	andl	%edx, %ebx
	andl	%edx, %edi
	orl	%eax, %edx
	orl	%ebx, %ebp
	orl	%edi, %esi
	cmpl	$-1, %edx
	movl	%ebp, (%ecx)
	movl	%esi, 4(%ecx)
	je	.L2011
	notl	%edx
	orl	%edx, %ebp
	orl	%edx, %esi
	movl	%ebp, (%ecx)
	movl	%esi, 4(%ecx)
.L2011:
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE332:
	.size	__asl_eval_1w_nonstren_wire, .-__asl_eval_1w_nonstren_wire
	.p2align 4,,15
	.globl	__asl_eval_1w_nonstren_wire_and
	.type	__asl_eval_1w_nonstren_wire_and, @function
__asl_eval_1w_nonstren_wire_and:
.LFB333:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %edx
	movl	28(%esp), %eax
	movl	32(%esp), %ebx
	movl	(%edx), %edi
	movl	4(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ecx, %ebx
	movl	%edi, %esi
	orl	%ebx, %eax
	movl	%ecx, %ebp
	notl	%eax
	andl	%eax, %esi
	andl	%eax, %ebp
	cmpl	$-1, %eax
	movl	%esi, (%edx)
	movl	%ebp, 4(%edx)
	je	.L2022
	movl	%edi, %ebx
	movl	%edi, (%esp)
	movl	28(%esp), %edi
	notl	%ebx
	andl	%ecx, %ebx
	andl	%ebx, %edi
	orl	%ebx, %eax
	orl	%esi, %edi
	movl	32(%esp), %esi
	movl	%edi, (%edx)
	andl	%ebx, %esi
	orl	%ebp, %esi
	cmpl	$-1, %eax
	movl	%eax, %ebp
	movl	%esi, 4(%edx)
	je	.L2022
	movl	28(%esp), %eax
	movl	(%esp), %ebx
	notl	%eax
	andl	32(%esp), %eax
	andl	%eax, %ebx
	orl	%ebx, %edi
	movl	%ecx, %ebx
	andl	%eax, %ebx
	orl	%ebp, %eax
	movl	%edi, (%edx)
	orl	%ebx, %esi
	cmpl	$-1, %eax
	movl	%esi, 4(%edx)
	je	.L2022
	movl	(%esp), %ebx
	movl	28(%esp), %ebp
	notl	%eax
	orl	32(%esp), %ebp
	orl	%ecx, %ebx
	orl	32(%esp), %ecx
	andl	%ebp, %ebx
	andl	%eax, %ebx
	orl	%ebx, %edi
	andl	%ecx, %eax
	movl	%edi, (%edx)
	andl	%eax, %edi
	orl	%edi, %esi
	movl	%esi, 4(%edx)
.L2022:
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE333:
	.size	__asl_eval_1w_nonstren_wire_and, .-__asl_eval_1w_nonstren_wire_and
	.p2align 4,,15
	.globl	__asl_eval_1w_nonstren_wire_or
	.type	__asl_eval_1w_nonstren_wire_or, @function
__asl_eval_1w_nonstren_wire_or:
.LFB334:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %edx
	movl	36(%esp), %ebx
	movl	32(%esp), %eax
	movl	(%edx), %esi
	movl	4(%edx), %ecx
	xorl	%esi, %eax
	xorl	%ecx, %ebx
	movl	%esi, %edi
	orl	%ebx, %eax
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	notl	%eax
	movl	%esi, %ebx
	movl	%ecx, %esi
	andl	%eax, %edi
	andl	%eax, %esi
	cmpl	$-1, %eax
	movl	%edi, (%edx)
	movl	%esi, 4(%edx)
	je	.L2033
	movl	32(%esp), %ebp
	notl	%ebx
	andl	%ecx, %ebx
	orl	%ebx, %eax
	andl	%ebx, %ebp
	orl	%ebp, %edi
	movl	36(%esp), %ebp
	movl	%edi, (%edx)
	andl	%ebx, %ebp
	orl	%ebp, %esi
	cmpl	$-1, %eax
	movl	%esi, 4(%edx)
	je	.L2033
	movl	32(%esp), %ebp
	movl	36(%esp), %ebx
	notl	%ebp
	andl	%ebp, %ebx
	movl	(%esp), %ebp
	orl	%ebx, %eax
	andl	%ebx, %ebp
	orl	%edi, %ebp
	movl	%ecx, %edi
	andl	%ebx, %edi
	movl	%ebp, (%edx)
	orl	%edi, %esi
	cmpl	$-1, %eax
	je	.L2042
	movl	32(%esp), %edi
	movl	(%esp), %ebx
	notl	%eax
	andl	%ecx, %edi
	orl	36(%esp), %edi
	orl	%ebx, %ecx
	andl	%edi, %ecx
	movl	4(%esp), %edi
	xorl	%ecx, %edi
	andl	%eax, %edi
	orl	%esi, %edi
	movl	32(%esp), %esi
	movl	%edi, 4(%edx)
	orl	%ebx, %esi
	orl	%edi, %esi
	andl	%esi, %eax
	orl	%eax, %ebp
	movl	%ebp, (%edx)
.L2033:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2042:
	.cfi_restore_state
	movl	%esi, 4(%edx)
	addl	$8, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE334:
	.size	__asl_eval_1w_nonstren_wire_or, .-__asl_eval_1w_nonstren_wire_or
	.p2align 4,,15
	.globl	__asl_set_byteval
	.type	__asl_set_byteval, @function
__asl_set_byteval:
.LFB338:
	.cfi_startproc
	movl	12(%esp), %edx
	movzbl	8(%esp), %ecx
	testl	%edx, %edx
	jle	.L2043
	movl	4(%esp), %eax
	addl	%eax, %edx
	.p2align 4,,10
	.p2align 3
.L2045:
	movb	%cl, (%eax)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L2045
.L2043:
	rep ret
	.cfi_endproc
.LFE338:
	.size	__asl_set_byteval, .-__asl_set_byteval
	.p2align 4,,15
	.globl	__asl_ld_logic_wide_driver
	.type	__asl_ld_logic_wide_driver, @function
__asl_ld_logic_wide_driver:
.LFB339:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__idp@GOT(%eax), %eax
	movl	16(%esp), %ecx
	movl	12(%esp), %esi
	movl	(%eax), %ebx
	leal	32(%ecx), %eax
	sarl	$5, %eax
	leal	(%eax,%eax), %edx
	imull	(%ebx), %edx
	addl	28(%esi), %edx
	leal	(%ebx,%edx,4), %edx
	movl	%ecx, %ebx
	andl	$31, %ecx
	sarl	$5, %ebx
	addl	%ebx, %eax
	movl	(%edx,%eax,4), %eax
	movl	(%edx,%ebx,4), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	shrl	%cl, %eax
	shrl	%cl, %edx
	addl	%eax, %eax
	andl	$1, %edx
	andl	$2, %eax
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE339:
	.size	__asl_ld_logic_wide_driver, .-__asl_ld_logic_wide_driver
	.p2align 4,,15
	.globl	__asl_exec_wide_logic_gate
	.type	__asl_exec_wide_logic_gate, @function
__asl_exec_wide_logic_gate:
.LFB341:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	76(%esp), %ebp
	movl	80(%esp), %esi
	movl	40(%ebp), %eax
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 80
	subl	$1, %esi
	call	__eval2_xpr@PLT
	movl	8(%eax), %edx
	movl	12(%eax), %eax
	movl	__new_inputval@GOT(%ebx), %ecx
	movl	(%eax), %eax
	movl	(%edx), %edx
	andl	$1, %eax
	andl	$1, %edx
	movl	%eax, 44(%esp)
	addl	%eax, %eax
	orl	%edx, %eax
	movl	%eax, (%ecx)
	movl	__xspi@GOT(%ebx), %eax
	movl	28(%ebp), %ecx
	subl	$1, (%eax)
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%eax,%ecx,4), %edi
	movl	__lhs_changed@GOT(%ebx), %eax
	movl	%esi, %ecx
	andl	$31, %ecx
	sarl	$5, %esi
	sall	%cl, %edx
	movl	%eax, 40(%esp)
	movl	$0, (%eax)
	movl	$1, %eax
	sall	%cl, %eax
	movl	%edx, 32(%esp)
	movl	%eax, 28(%esp)
	leal	0(,%esi,4), %eax
	leal	(%edi,%eax), %edx
	movl	(%edx), %esi
	movl	%esi, 36(%esp)
	movl	28(%esp), %esi
	andl	36(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	cmpl	%esi, 16(%esp)
	je	.L2050
	movl	24(%esp), %esi
	movl	$1, (%esi)
	movl	12(%esp), %esi
	notl	%esi
	andl	20(%esp), %esi
	orl	16(%esp), %esi
	movl	%esi, (%edx)
.L2050:
	movzwl	0(%ebp), %edx
	movl	28(%esp), %esi
	sall	%cl, %esi
	andl	$16383, %edx
	leal	31(%edx), %ecx
	sarl	$5, %ecx
	leal	(%eax,%ecx,4), %ecx
	movl	12(%esp), %eax
	addl	%edi, %ecx
	movl	(%ecx), %edi
	andl	%edi, %eax
	cmpl	%eax, %esi
	je	.L2051
	movl	12(%esp), %eax
	notl	%eax
	andl	%edi, %eax
	orl	%eax, %esi
	movl	%esi, (%ecx)
.L2052:
	movl	24(%esp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	$0, (%eax)
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__eval_1wide_gate@PLT
#APP
# 8510 "v_aslib.c" 1
	movl %eax, %ecx
# 0 "" 2
#NO_APP
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	$1, %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2051:
	.cfi_restore_state
	movl	24(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2052
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE341:
	.size	__asl_exec_wide_logic_gate, .-__asl_exec_wide_logic_gate
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_16v
	.type	__asl_sched_scalar_mipd_16v, @function
__asl_sched_scalar_mipd_16v:
.LFB343:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	36(%esp), %ebx
	movl	48(%eax), %edx
	movl	24(%eax), %edi
	movl	__idp@GOT(%ebp), %eax
	movl	16(%edx), %edx
	movl	(%eax), %eax
	movl	8(%edx), %esi
	movl	(%eax,%edi,4), %eax
	movzbl	(%esi), %ecx
	movb	%al, (%esi)
	sall	$2, %eax
	movl	4(%edx), %edx
	andl	$12, %eax
	andl	$3, %ecx
	orl	%ecx, %eax
	movl	__simtime@GOT(%ebp), %ecx
	leal	(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, %esi
	addl	(%ecx), %esi
	movl	%edx, %edi
	adcl	4(%ecx), %edi
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L2057
	cmpl	%edi, 28(%ebx)
	jbe	.L2079
.L2056:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2057:
	.cfi_restore_state
	movl	%edx, %ecx
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	%ecx, %edx
	movl	$1, 8(%ebx)
	orl	%eax, %edx
	jne	.L2064
	movl	__p0_te_hdrp@GOT(%ebp), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2080
	movl	__p0_te_endp@GOT(%ebp), %eax
	movl	(%eax), %edx
	movl	%ebx, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ebp), %eax
	movl	%ebx, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%ebx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2079:
	.cfi_restore_state
	jnb	.L2081
.L2070:
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	$1, 8(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	jne	.L2078
	jmp	.L2066
	.p2align 4,,10
	.p2align 3
.L2064:
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2066
.L2078:
	movl	$0, 44(%ebx)
.L2066:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2082
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2068
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2083
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2081:
	.cfi_restore_state
	cmpl	%esi, 24(%ebx)
	jnb	.L2056
	jmp	.L2070
	.p2align 4,,10
	.p2align 3
.L2068:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2080:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebp), %edx
	movl	%ebx, (%eax)
	movl	%ebx, (%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2082:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2056
	.p2align 4,,10
	.p2align 3
.L2083:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2056
	.cfi_endproc
.LFE343:
	.size	__asl_sched_scalar_mipd_16v, .-__asl_sched_scalar_mipd_16v
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is16v
	.type	__asl_sched_scalar_mipd_is16v, @function
__asl_sched_scalar_mipd_is16v:
.LFB344:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edi
	movl	52(%esp), %ebx
	movl	48(%edi), %eax
	movl	24(%edi), %edi
	movl	16(%eax), %edx
	movl	__idp@GOT(%ebp), %eax
	movl	(%eax), %esi
	movl	8(%edx), %ecx
	movl	(%esi), %eax
	movl	(%esi,%edi,4), %esi
	addl	%eax, %ecx
	movl	%eax, 8(%esp)
	movzbl	(%ecx), %eax
	movb	%al, 12(%esp)
	movl	%esi, %eax
	sall	$2, %esi
	movb	%al, (%ecx)
	movl	12(%esp), %ecx
	andl	$12, %esi
	movl	8(%esp), %eax
	andl	$3, %ecx
	orl	%ecx, %esi
	sall	$4, %eax
	movl	__simtime@GOT(%ebp), %ecx
	addl	%eax, %esi
	movl	4(%edx), %eax
	movl	4(%eax,%esi,8), %edx
	movl	(%eax,%esi,8), %eax
	movl	%eax, %esi
	addl	(%ecx), %esi
	movl	%edx, %edi
	adcl	4(%ecx), %edi
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L2085
	cmpl	%edi, 28(%ebx)
	jbe	.L2107
.L2084:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2085:
	.cfi_restore_state
	movl	%edx, %ecx
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	%ecx, %edx
	movl	$1, 8(%ebx)
	orl	%eax, %edx
	jne	.L2092
	movl	__p0_te_hdrp@GOT(%ebp), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2108
	movl	__p0_te_endp@GOT(%ebp), %eax
	movl	(%eax), %edx
	movl	%ebx, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ebp), %eax
	movl	%ebx, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2107:
	.cfi_restore_state
	jnb	.L2109
.L2098:
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	$1, 8(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	jne	.L2106
	jmp	.L2094
	.p2align 4,,10
	.p2align 3
.L2092:
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2094
.L2106:
	movl	$0, 44(%ebx)
.L2094:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2110
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2096
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2111
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2109:
	.cfi_restore_state
	cmpl	%esi, 24(%ebx)
	jnb	.L2084
	jmp	.L2098
	.p2align 4,,10
	.p2align 3
.L2096:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2108:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebp), %edx
	movl	%ebx, (%eax)
	movl	%ebx, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2110:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2084
	.p2align 4,,10
	.p2align 3
.L2111:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2084
	.cfi_endproc
.LFE344:
	.size	__asl_sched_scalar_mipd_is16v, .-__asl_sched_scalar_mipd_is16v
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is16v1
	.type	__asl_sched_scalar_mipd_is16v1, @function
__asl_sched_scalar_mipd_is16v1:
.LFB345:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebp
	movl	__idp@GOT(%esi), %eax
	movl	52(%esp), %ebx
	movl	48(%ebp), %edx
	movl	(%eax), %edi
	movl	24(%ebp), %ebp
	movl	16(%edx), %edx
	movl	(%edi), %eax
	movl	(%edi,%ebp,4), %edi
	xorl	%ebp, %ebp
	movl	8(%edx), %ecx
	movl	%eax, 8(%esp)
	addl	%eax, %ecx
	movzbl	(%ecx), %eax
	movb	%al, 12(%esp)
	movl	%edi, %eax
	sall	$2, %edi
	movb	%al, (%ecx)
	movl	8(%esp), %eax
	andl	$12, %edi
	movl	12(%esp), %ecx
	sall	$4, %eax
	addl	4(%edx), %eax
	movl	__simtime@GOT(%esi), %edx
	andl	$3, %ecx
	orl	%ecx, %edi
	movl	8(%ebx), %ecx
	movzbl	(%eax,%edi), %eax
	movl	%eax, %edi
	addl	(%edx), %edi
	adcl	4(%edx), %ebp
	testl	%ecx, %ecx
	je	.L2113
	cmpl	%ebp, 28(%ebx)
	jbe	.L2135
.L2112:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2113:
	.cfi_restore_state
	testl	%eax, %eax
	movl	%edi, 24(%ebx)
	movl	%ebp, 28(%ebx)
	movl	$1, 8(%ebx)
	jne	.L2120
	movl	__p0_te_hdrp@GOT(%esi), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2136
	movl	__p0_te_endp@GOT(%esi), %eax
	movl	(%eax), %edx
	movl	%ebx, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%esi), %eax
	movl	%ebx, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2135:
	.cfi_restore_state
	jnb	.L2137
.L2126:
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%esi), %eax
	movl	%edi, 24(%ebx)
	movl	%ebp, 28(%ebx)
	movl	$1, 8(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	jne	.L2134
	jmp	.L2122
	.p2align 4,,10
	.p2align 3
.L2120:
	movl	__cur_tevp@GOT(%esi), %eax
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2122
.L2134:
	movl	$0, 44(%ebx)
.L2122:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%esi), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2138
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L2124
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2139
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2137:
	.cfi_restore_state
	cmpl	%edi, 24(%ebx)
	jnb	.L2112
	jmp	.L2126
	.p2align 4,,10
	.p2align 3
.L2124:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2136:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%esi), %edx
	movl	%ebx, (%eax)
	movl	%ebx, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2138:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2112
	.p2align 4,,10
	.p2align 3
.L2139:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2112
	.cfi_endproc
.LFE345:
	.size	__asl_sched_scalar_mipd_is16v1, .-__asl_sched_scalar_mipd_is16v1
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is16v2
	.type	__asl_sched_scalar_mipd_is16v2, @function
__asl_sched_scalar_mipd_is16v2:
.LFB346:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebp
	movl	__idp@GOT(%esi), %eax
	movl	52(%esp), %ebx
	movl	48(%ebp), %edx
	movl	(%eax), %edi
	movl	24(%ebp), %ebp
	movl	16(%edx), %edx
	movl	(%edi), %eax
	movl	(%edi,%ebp,4), %edi
	xorl	%ebp, %ebp
	movl	8(%edx), %ecx
	movl	%eax, 8(%esp)
	addl	%eax, %ecx
	movzbl	(%ecx), %eax
	movb	%al, 12(%esp)
	movl	%edi, %eax
	sall	$2, %edi
	movb	%al, (%ecx)
	movl	12(%esp), %ecx
	andl	$12, %edi
	movl	8(%esp), %eax
	andl	$3, %ecx
	orl	%ecx, %edi
	sall	$4, %eax
	movl	8(%ebx), %ecx
	addl	%eax, %edi
	movl	4(%edx), %eax
	movl	__simtime@GOT(%esi), %edx
	movzwl	(%eax,%edi,2), %eax
	movl	%eax, %edi
	addl	(%edx), %edi
	adcl	4(%edx), %ebp
	testl	%ecx, %ecx
	je	.L2141
	cmpl	%ebp, 28(%ebx)
	jbe	.L2163
.L2140:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2141:
	.cfi_restore_state
	testl	%eax, %eax
	movl	%edi, 24(%ebx)
	movl	%ebp, 28(%ebx)
	movl	$1, 8(%ebx)
	jne	.L2148
	movl	__p0_te_hdrp@GOT(%esi), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2164
	movl	__p0_te_endp@GOT(%esi), %eax
	movl	(%eax), %edx
	movl	%ebx, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%esi), %eax
	movl	%ebx, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2163:
	.cfi_restore_state
	jnb	.L2165
.L2154:
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%esi), %eax
	movl	%edi, 24(%ebx)
	movl	%ebp, 28(%ebx)
	movl	$1, 8(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	jne	.L2162
	jmp	.L2150
	.p2align 4,,10
	.p2align 3
.L2148:
	movl	__cur_tevp@GOT(%esi), %eax
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2150
.L2162:
	movl	$0, 44(%ebx)
.L2150:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%esi), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2166
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L2152
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2167
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2165:
	.cfi_restore_state
	cmpl	%edi, 24(%ebx)
	jnb	.L2140
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2152:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2164:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%esi), %edx
	movl	%ebx, (%eax)
	movl	%ebx, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2166:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2140
	.p2align 4,,10
	.p2align 3
.L2167:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2140
	.cfi_endproc
.LFE346:
	.size	__asl_sched_scalar_mipd_is16v2, .-__asl_sched_scalar_mipd_is16v2
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is1v
	.type	__asl_sched_scalar_mipd_is1v, @function
__asl_sched_scalar_mipd_is1v:
.LFB347:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	__simtime@GOT(%ebp), %ecx
	movl	36(%ebx), %eax
	movl	40(%ebx), %edx
	movl	%eax, %esi
	addl	(%ecx), %esi
	movl	%edx, %edi
	adcl	4(%ecx), %edi
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L2169
	cmpl	%edi, 28(%ebx)
	jbe	.L2191
.L2168:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2169:
	.cfi_restore_state
	movl	%edx, %ecx
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	%ecx, %edx
	movl	$1, 8(%ebx)
	orl	%eax, %edx
	jne	.L2176
	movl	__p0_te_hdrp@GOT(%ebp), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2192
	movl	__p0_te_endp@GOT(%ebp), %eax
	movl	(%eax), %edx
	movl	%ebx, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ebp), %eax
	movl	%ebx, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%ebx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2191:
	.cfi_restore_state
	jnb	.L2193
.L2182:
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	$1, 8(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	jne	.L2190
	jmp	.L2178
	.p2align 4,,10
	.p2align 3
.L2176:
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2178
.L2190:
	movl	$0, 44(%ebx)
.L2178:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2194
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2180
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2195
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2193:
	.cfi_restore_state
	cmpl	%esi, 24(%ebx)
	jnb	.L2168
	jmp	.L2182
	.p2align 4,,10
	.p2align 3
.L2180:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2192:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebp), %edx
	movl	%ebx, (%eax)
	movl	%ebx, (%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2194:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2168
	.p2align 4,,10
	.p2align 3
.L2195:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2168
	.cfi_endproc
.LFE347:
	.size	__asl_sched_scalar_mipd_is1v, .-__asl_sched_scalar_mipd_is1v
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_path
	.type	__asl_sched_scalar_mipd_path, @function
__asl_sched_scalar_mipd_path:
.LFB348:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %edi
	movl	__idp@GOT(%ebx), %edx
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	68(%esp), %ebp
	movl	48(%edi), %eax
	movl	(%edx), %esi
	movl	24(%edi), %edi
	movl	16(%eax), %eax
	movl	(%esi), %ecx
	movl	(%esi,%edi,4), %esi
	movl	8(%eax), %edx
	movl	%ecx, 8(%esp)
	movl	8(%esp), %edi
	addl	%ecx, %edx
	movzbl	(%edx), %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, %ecx
	movb	%cl, (%edx)
	movl	__new_gateval@GOT(%ebx), %edx
	movl	12(%esp), %ecx
	movl	%esi, (%edx)
	movl	__old_gateval@GOT(%ebx), %edx
	movl	%ecx, (%edx)
	movl	16(%eax), %edx
	movl	(%edx,%edi,4), %esi
	testl	%esi, %esi
	je	.L2222
	leal	16(%esp), %eax
	call	asl_loc_get_impth_del.isra.4
	movl	__simtime@GOT(%ebx), %eax
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	%esi, %edx
	subl	(%eax), %edx
	movl	%edi, %ecx
	sbbl	4(%eax), %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
.L2198:
	movl	8(%ebp), %ecx
	testl	%ecx, %ecx
	je	.L2199
	cmpl	%edi, 28(%ebp)
	jbe	.L2223
.L2196:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L2224
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2199:
	.cfi_restore_state
	movl	%edx, %ecx
	movl	%esi, 24(%ebp)
	movl	%edi, 28(%ebp)
	movl	%ecx, %edx
	movl	$1, 8(%ebp)
	orl	%eax, %edx
	jne	.L2206
	movl	__p0_te_hdrp@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2225
	movl	__p0_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ebp, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ebx), %eax
	movl	%ebp, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%ebp)
	jmp	.L2196
	.p2align 4,,10
	.p2align 3
.L2223:
	jnb	.L2226
.L2213:
	movl	%ebp, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	%esi, 24(%ebp)
	movl	%edi, 28(%ebp)
	movl	$1, 8(%ebp)
	movl	$0, 48(%ebp)
	cmpl	(%eax), %ebp
	jne	.L2221
	jmp	.L2208
	.p2align 4,,10
	.p2align 3
.L2222:
	movzbl	(%eax), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	shrb	$2, %dl
	andl	$31, %edx
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	4(%eax)
	.cfi_def_cfa_offset 80
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	(%ecx), %esi
	adcl	4(%ecx), %edi
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L2198
	.p2align 4,,10
	.p2align 3
.L2206:
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$0, 48(%ebp)
	cmpl	(%eax), %ebp
	je	.L2208
.L2221:
	movl	$0, 44(%ebp)
.L2208:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2227
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2210
	movl	16(%edx), %eax
	movl	%edx, 20(%ebp)
	testl	%eax, %eax
	je	.L2228
	movl	%ebp, 44(%eax)
	movl	%eax, 48(%ebp)
	movl	%ebp, 16(%edx)
	jmp	.L2196
	.p2align 4,,10
	.p2align 3
.L2226:
	cmpl	%esi, 24(%ebp)
	jnb	.L2196
	jmp	.L2213
	.p2align 4,,10
	.p2align 3
.L2210:
	movl	%ebp, %eax
	call	asl_loc_conflict_list
	jmp	.L2196
	.p2align 4,,10
	.p2align 3
.L2225:
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	%ebp, (%eax)
	movl	%ebp, (%edx)
	jmp	.L2196
	.p2align 4,,10
	.p2align 3
.L2227:
	movl	%eax, %edx
	movl	%ebp, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebp, 16(%eax)
	movl	%ebp, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2196
	.p2align 4,,10
	.p2align 3
.L2228:
	movl	%ebp, 16(%edx)
	movl	%ebp, 12(%edx)
	jmp	.L2196
.L2224:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE348:
	.size	__asl_sched_scalar_mipd_path, .-__asl_sched_scalar_mipd_path
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_pnd0
	.type	__asl_sched_scalar_mipd_pnd0, @function
__asl_sched_scalar_mipd_pnd0:
.LFB349:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	cmpl	$0, 8(%eax)
	movl	__simtime@GOT(%edx), %ecx
	movl	(%ecx), %ebx
	movl	4(%ecx), %ecx
	je	.L2230
	cmpl	%ecx, 28(%eax)
	jbe	.L2237
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2230:
	.cfi_restore_state
	movl	%ecx, 28(%eax)
	movl	__p0_te_hdrp@GOT(%edx), %ecx
	movl	%ebx, 24(%eax)
	movl	$1, 8(%eax)
	movl	(%ecx), %ebx
	testl	%ebx, %ebx
	je	.L2238
	movl	__p0_te_endp@GOT(%edx), %ecx
	movl	__free_event_pnd0_tevp@GOT(%edx), %edx
	movl	(%ecx), %ebx
	movl	(%edx), %edx
	movl	%eax, (%ecx)
	movl	%eax, 44(%ebx)
	movl	%edx, 44(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2237:
	.cfi_restore_state
	jnb	.L2239
.L2234:
	movl	%ebx, 24(%eax)
	movl	%ecx, 28(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2238:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%edx), %edx
	movl	%eax, (%ecx)
	movl	%eax, (%edx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2239:
	.cfi_restore_state
	cmpl	%ebx, 24(%eax)
	jbe	.L2234
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE349:
	.size	__asl_sched_scalar_mipd_pnd0, .-__asl_sched_scalar_mipd_pnd0
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_const
	.type	__asl_sched_scalar_mipd_const, @function
__asl_sched_scalar_mipd_const:
.LFB350:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	__simtime@GOT(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	8(%ebx), %eax
	addl	36(%ebx), %esi
	adcl	40(%ebx), %edi
	testl	%eax, %eax
	je	.L2241
	cmpl	%edi, 28(%ebx)
	jbe	.L2262
.L2240:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2262:
	.cfi_restore_state
	jb	.L2252
	cmpl	%esi, 24(%ebx)
	jnb	.L2240
.L2252:
	movl	%ebx, %eax
	call	linkout_tevp
.L2241:
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	$1, 8(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2248
	movl	$0, 44(%ebx)
.L2248:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2263
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2250
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2264
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2250:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2263:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2240
	.p2align 4,,10
	.p2align 3
.L2264:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2240
	.cfi_endproc
.LFE350:
	.size	__asl_sched_scalar_mipd_const, .-__asl_sched_scalar_mipd_const
	.p2align 4,,15
	.globl	__asl_sched_vec_mipd_bit
	.type	__asl_sched_vec_mipd_bit, @function
__asl_sched_vec_mipd_bit:
.LFB351:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %eax
	movl	104(%esp), %esi
	movl	%gs:20, %ecx
	movl	%ecx, 60(%esp)
	xorl	%ecx, %ecx
	movl	100(%esp), %edi
	movl	48(%eax), %edx
	leal	(%esi,%esi,4), %ecx
	movl	16(%edx), %edx
	leal	(%edx,%ecx,4), %ebp
	testb	$1, 0(%ebp)
	je	.L2306
.L2265:
	movl	60(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L2307
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2306:
	.cfi_restore_state
	movzbl	1(%eax), %edx
	andl	$126, %edx
	cmpb	$2, %dl
	jne	.L2267
	movl	__idp@GOT(%ebx), %edx
	movl	24(%eax), %eax
	movl	(%edx), %edx
	leal	(%edx,%eax,4), %eax
	movzbl	(%eax,%esi), %eax
	movl	%eax, 4(%esp)
.L2268:
	movl	(%edx), %eax
	movl	%eax, 24(%esp)
	addl	8(%ebp), %eax
	movzbl	(%eax), %ecx
	movl	%eax, %edx
	movl	8(%edi), %eax
	testl	%eax, %eax
	movb	%cl, 8(%esp)
	movl	%ecx, 28(%esp)
	jne	.L2291
	movl	4(%esp), %eax
	cmpl	%eax, %ecx
	je	.L2265
.L2291:
	movl	4(%esp), %eax
	movb	%al, (%edx)
	movl	__new_gateval@GOT(%ebx), %edx
	movl	%eax, %ecx
	andl	$3, %ecx
	movl	8(%esp), %eax
	movl	%ecx, (%edx)
	movl	__old_gateval@GOT(%ebx), %edx
	andl	$3, %eax
	movl	%eax, (%edx)
	movzbl	0(%ebp), %eax
	testb	$2, %al
	je	.L2271
	movl	16(%ebp), %edx
	testl	%edx, %edx
	je	.L2271
	movl	24(%esp), %ecx
	movl	(%edx,%ecx,4), %ecx
	testl	%ecx, %ecx
	je	.L2271
	leal	48(%esp), %eax
	call	asl_loc_get_impth_del.isra.4
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	__simtime@GOT(%ebx), %eax
	movl	%ecx, 12(%esp)
	subl	(%eax), %edx
	sbbl	4(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	jne	.L2274
.L2309:
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	20(%esp), %ecx
	movl	$1, 8(%edi)
	movl	%edx, 28(%edi)
	movl	16(%esp), %edx
	movl	%eax, 24(%edi)
	movl	%edx, %eax
	movl	%ecx, %edx
	orl	%eax, %edx
	jne	.L2275
	movl	__p0_te_hdrp@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2308
	movl	__p0_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%edi, (%eax)
	movl	__free_event_pnd0_tevp@GOT(%ebx), %eax
	movl	%edi, 44(%edx)
	movl	(%eax), %eax
	movl	%eax, 44(%edi)
.L2277:
	movl	12(%ebp), %eax
	movl	24(%esp), %ebx
	movl	%edi, (%eax,%ebx,4)
	movl	%esi, 4(%edi)
	jmp	.L2265
	.p2align 4,,10
	.p2align 3
.L2267:
	pushl	%esi
	.cfi_def_cfa_offset 100
	pushl	%eax
	.cfi_def_cfa_offset 104
	leal	52(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 108
	leal	52(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 112
	call	__ld_bit@PLT
	movl	60(%esp), %eax
	movl	56(%esp), %edx
	addl	%eax, %eax
	andl	$1, %edx
	andl	$2, %eax
	orl	%edx, %eax
	movl	%eax, 20(%esp)
	movl	__idp@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	movl	(%eax), %edx
	jmp	.L2268
	.p2align 4,,10
	.p2align 3
.L2271:
	shrb	$2, %al
	subl	$8, %esp
	.cfi_def_cfa_offset 104
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 108
	pushl	4(%ebp)
	.cfi_def_cfa_offset 112
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	addl	(%ecx), %eax
	adcl	4(%ecx), %edx
	movl	8(%edi), %ecx
	movl	%eax, 24(%esp)
	movl	%eax, 64(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, 68(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	testl	%ecx, %ecx
	je	.L2309
.L2274:
	movl	28(%edi), %eax
	cmpl	12(%esp), %eax
	movl	24(%edi), %edx
	ja	.L2265
	jnb	.L2310
.L2292:
	movl	4(%esp), %ebp
	cmpl	%ebp, 28(%esp)
	je	.L2311
	xorl	8(%esp), %edx
	xorl	12(%esp), %eax
	orl	%edx, %eax
	je	.L2265
	movl	%edi, %eax
	call	linkout_tevp
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	$0, 48(%edi)
	movl	%eax, 24(%edi)
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	%edx, 28(%edi)
	cmpl	(%eax), %edi
	je	.L2285
	movl	$0, 44(%edi)
.L2285:
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	%ecx, %eax
	xorl	%edx, %eax
	movl	__time_hash@GOT(%ebx), %edx
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2312
	movl	8(%esp), %ecx
	movl	4(%edx), %eax
	movl	12(%esp), %ebx
	xorl	%ecx, %eax
	movl	8(%edx), %ecx
	xorl	%ebx, %ecx
	orl	%eax, %ecx
	jne	.L2288
	movl	16(%edx), %eax
	movl	%edx, 20(%edi)
	testl	%eax, %eax
	je	.L2313
	movl	%edi, 44(%eax)
	movl	%eax, 48(%edi)
	movl	%edi, 16(%edx)
.L2287:
	movl	$1, 8(%edi)
	movl	%esi, 4(%edi)
	jmp	.L2265
	.p2align 4,,10
	.p2align 3
.L2275:
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$0, 48(%edi)
	cmpl	(%eax), %edi
	je	.L2278
	movl	$0, 44(%edi)
.L2278:
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	%ecx, %eax
	xorl	%edx, %eax
	movl	__time_hash@GOT(%ebx), %edx
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2314
	movl	8(%esp), %ecx
	movl	4(%edx), %eax
	movl	12(%esp), %ebx
	xorl	%ecx, %eax
	movl	8(%edx), %ecx
	xorl	%ebx, %ecx
	orl	%eax, %ecx
	jne	.L2280
	movl	16(%edx), %eax
	movl	%edx, 20(%edi)
	testl	%eax, %eax
	je	.L2315
	movl	%edi, 44(%eax)
	movl	%eax, 48(%edi)
	movl	%edi, 16(%edx)
	jmp	.L2277
	.p2align 4,,10
	.p2align 3
.L2310:
	cmpl	8(%esp), %edx
	ja	.L2265
	jmp	.L2292
.L2314:
	movl	%eax, %edx
	movl	%edi, %eax
	call	asl_loc_add_new_heap_time
	movl	%edi, 16(%eax)
	movl	%edi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2277
	.p2align 4,,10
	.p2align 3
.L2308:
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	%edi, (%eax)
	movl	%edi, (%edx)
	jmp	.L2277
	.p2align 4,,10
	.p2align 3
.L2280:
	movl	%edi, %eax
	call	asl_loc_conflict_list
	jmp	.L2277
	.p2align 4,,10
	.p2align 3
.L2311:
	movl	%edi, %eax
	call	linkout_tevp
	jmp	.L2265
	.p2align 4,,10
	.p2align 3
.L2288:
	movl	%edi, %eax
	call	asl_loc_conflict_list
	jmp	.L2287
.L2315:
	movl	%edi, 16(%edx)
	movl	%edi, 12(%edx)
	jmp	.L2277
.L2312:
	movl	%eax, %edx
	movl	%edi, %eax
	call	asl_loc_add_new_heap_time
	movl	%edi, 16(%eax)
	movl	%edi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2287
.L2313:
	movl	%edi, 16(%edx)
	movl	%edi, 12(%edx)
	jmp	.L2287
.L2307:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE351:
	.size	__asl_sched_vec_mipd_bit, .-__asl_sched_vec_mipd_bit
	.p2align 4,,15
	.globl	__asl_linkout_tevp
	.type	__asl_linkout_tevp, @function
__asl_linkout_tevp:
.LFB358:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	__simtime@GOT(%edx), %ebx
	movl	28(%eax), %ecx
	movl	24(%eax), %edx
	xorl	4(%ebx), %ecx
	xorl	(%ebx), %edx
	orl	%edx, %ecx
	je	.L2320
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	.L2321
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2321:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	linkout_tevp
	.p2align 4,,10
	.p2align 3
.L2320:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	linkout_cur_time
	.cfi_endproc
.LFE358:
	.size	__asl_linkout_tevp, .-__asl_linkout_tevp
	.p2align 4,,15
	.globl	__asl_linkout_tevp_no_trigger
	.type	__asl_linkout_tevp_no_trigger, @function
__asl_linkout_tevp_no_trigger:
.LFB359:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	__simtime@GOT(%edx), %ebx
	movl	28(%eax), %ecx
	movl	24(%eax), %edx
	xorl	4(%ebx), %ecx
	xorl	(%ebx), %edx
	orl	%edx, %ecx
	je	.L2325
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	linkout_tevp
	.p2align 4,,10
	.p2align 3
.L2325:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	linkout_cur_time
	.cfi_endproc
.LFE359:
	.size	__asl_linkout_tevp_no_trigger, .-__asl_linkout_tevp_no_trigger
	.p2align 4,,15
	.globl	__asl_schd_caev
	.type	__asl_schd_caev, @function
__asl_schd_caev:
.LFB362:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %edx
	movl	60(%esp), %esi
	movzwl	4(%edx), %eax
	movl	$1, 8(%esi)
	shrw	$7, %ax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	20(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%edi, 24(%esi)
	orl	%eax, %edx
	movl	%ebp, 28(%esi)
	jne	.L2327
	movl	__p0_te_hdrp@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2335
	movl	__p0_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%edx, 48(%esi)
	movl	%esi, 44(%edx)
.L2326:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2335:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	%esi, (%eax)
	movl	$0, 48(%esi)
	movl	%esi, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2327:
	.cfi_restore_state
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$0, 48(%esi)
	cmpl	(%eax), %esi
	je	.L2330
	movl	$0, 44(%esi)
.L2330:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2336
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L2332
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L2337
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2332:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2336:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2326
	.p2align 4,,10
	.p2align 3
.L2337:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L2326
	.cfi_endproc
.LFE362:
	.size	__asl_schd_caev, .-__asl_schd_caev
	.p2align 4,,15
	.globl	__asl_schd_caev_const
	.type	__asl_schd_caev_const, @function
__asl_schd_caev_const:
.LFB537:
	.cfi_startproc
	jmp	__asl_sched_proc_delay_const_nt
	.cfi_endproc
.LFE537:
	.size	__asl_schd_caev_const, .-__asl_schd_caev_const
	.p2align 4,,15
	.globl	__asl_schd_caev_const0
	.type	__asl_schd_caev_const0, @function
__asl_schd_caev_const0:
.LFB364:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	__simtime@GOT(%edx), %ecx
	movl	4(%ecx), %ebx
	movl	(%ecx), %ecx
	movl	$1, 8(%eax)
	movl	%ecx, 24(%eax)
	movl	__p0_te_hdrp@GOT(%edx), %ecx
	movl	%ebx, 28(%eax)
	movl	__p0_te_endp@GOT(%edx), %edx
	movl	(%ecx), %ebx
	testl	%ebx, %ebx
	je	.L2343
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	%ecx, 48(%eax)
	movl	%eax, 44(%ecx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2343:
	.cfi_restore_state
	movl	%eax, (%edx)
	movl	%eax, (%ecx)
	movl	$0, 48(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE364:
	.size	__asl_schd_caev_const0, .-__asl_schd_caev_const0
	.p2align 4,,15
	.globl	__asl_cancel_ev
	.type	__asl_cancel_ev, @function
__asl_cancel_ev:
.LFB365:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	linkout_tevp
	.cfi_endproc
.LFE365:
	.size	__asl_cancel_ev, .-__asl_cancel_ev
	.p2align 4,,15
	.globl	__asl_calc_bufif_newstate
	.type	__asl_calc_bufif_newstate, @function
__asl_calc_bufif_newstate:
.LFB366:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %eax
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	andl	$15, %eax
	addl	16(%esp), %eax
	movl	__bufif_and_tab@GOT(%edx), %ecx
	movl	__bufif_or_tab@GOT(%edx), %esi
	movl	__stren_map_tab@GOT(%edx), %ebx
	movl	__new_gateval@GOT(%edx), %edx
	movzbl	(%ecx,%eax), %ecx
	movzbl	(%esi,%eax), %eax
	andl	20(%esp), %ecx
	orl	%ecx, %eax
	movzbl	(%ebx,%eax), %eax
	movl	%eax, (%edx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE366:
	.size	__asl_calc_bufif_newstate, .-__asl_calc_bufif_newstate
	.p2align 4,,15
	.globl	__asl_calc_comb_udp
	.type	__asl_calc_comb_udp, @function
__asl_calc_comb_udp:
.LFB367:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	shrl	%cl, %eax
	andl	$3, %eax
	ret
	.cfi_endproc
.LFE367:
	.size	__asl_calc_comb_udp, .-__asl_calc_comb_udp
	.p2align 4,,15
	.globl	__asl_udp_wide_adjstate
	.type	__asl_udp_wide_adjstate, @function
__asl_udp_wide_adjstate:
.LFB368:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$2, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %eax
	movl	20(%esp), %edi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	(%eax), %edx
	movl	4(%eax), %eax
	leal	(%edi,%edi), %ecx
	shrl	%cl, %edx
	movl	__old_gateval@GOT(%ebx), %ecx
	andl	$3, %edx
	cmpl	$3, %edx
	movl	%edx, (%ecx)
	movl	__pow3tab@GOT(%ebx), %ecx
	cmove	%esi, %edx
	movl	(%ecx,%edi,4), %ecx
	imull	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	__new_gateval@GOT(%ebx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	(%eax), %eax
	cmpl	$3, %eax
	cmove	%esi, %eax
	imull	%eax, %ecx
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	leal	(%ecx,%edx), %eax
	ret
	.cfi_endproc
.LFE368:
	.size	__asl_udp_wide_adjstate, .-__asl_udp_wide_adjstate
	.p2align 4,,15
	.globl	__asl_adjust_edge_udp
	.type	__asl_adjust_edge_udp, @function
__asl_adjust_edge_udp:
.LFB369:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$2, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	28(%esp), %ebx
	movl	20(%esp), %ecx
	movl	24(%esp), %eax
	movl	16(%esp), %edx
	movl	20(%ebx), %ebx
	leal	(%edx,%edx,2), %edx
	movl	12(%ebx), %esi
	movl	%ecx, %ebx
	sarl	$5, %ebx
	cmpl	$3, %eax
	cmove	%edi, %eax
	movl	28(%esi), %esi
	addl	%edx, %eax
	movl	4(%esi), %edx
	movl	(%edx,%eax,4), %eax
	movl	(%eax,%ebx,4), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	shrl	%cl, %eax
	andl	$3, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE369:
	.size	__asl_adjust_edge_udp, .-__asl_adjust_edge_udp
	.p2align 4,,15
	.globl	__asl_eval_cmos_gate
	.type	__asl_eval_cmos_gate, @function
__asl_eval_cmos_gate:
.LFB370:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__eval_nmos_gate@PLT
	popl	%eax
	.cfi_def_cfa_offset 28
	movl	__new_gateval@GOT(%ebx), %esi
	pushl	32(%esp)
	.cfi_def_cfa_offset 32
	movl	(%esi), %edi
	call	__eval_pmos_gate@PLT
	movl	(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	cmpl	%edx, %edi
	jne	.L2361
	xorl	%eax, %eax
	cmpl	%edi, 24(%esp)
	jne	.L2361
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2361:
	.cfi_restore_state
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	pushl	%edx
	.cfi_def_cfa_offset 24
	pushl	%edi
	.cfi_def_cfa_offset 28
	pushl	40(%esp)
	.cfi_def_cfa_offset 32
	call	__comb_1bitsts@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esi)
	cmpl	%eax, 24(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	setne	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE370:
	.size	__asl_eval_cmos_gate, .-__asl_eval_cmos_gate
	.p2align 4,,15
	.globl	__asl_eval_rcmos_gate
	.type	__asl_eval_rcmos_gate, @function
__asl_eval_rcmos_gate:
.LFB371:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__eval_rnmos_gate@PLT
	popl	%eax
	.cfi_def_cfa_offset 28
	movl	__new_gateval@GOT(%ebx), %esi
	pushl	32(%esp)
	.cfi_def_cfa_offset 32
	movl	(%esi), %edi
	call	__eval_rpmos_gate@PLT
	movl	(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	cmpl	%edx, %edi
	jne	.L2370
	xorl	%eax, %eax
	cmpl	%edi, 24(%esp)
	jne	.L2370
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2370:
	.cfi_restore_state
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	pushl	%edx
	.cfi_def_cfa_offset 24
	pushl	%edi
	.cfi_def_cfa_offset 28
	pushl	40(%esp)
	.cfi_def_cfa_offset 32
	call	__comb_1bitsts@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esi)
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE371:
	.size	__asl_eval_rcmos_gate, .-__asl_eval_rcmos_gate
	.p2align 4,,15
	.globl	__asl_set_rhs_new_gateval
	.type	__asl_set_rhs_new_gateval, @function
__asl_set_rhs_new_gateval:
.LFB372:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %esi
	movl	32(%esp), %ebp
	leal	31(%esi), %edi
	sarl	$5, %edi
	cmpl	$32, %esi
	jg	.L2376
	movl	0(%ebp), %edx
	testl	%edx, %edx
	jne	.L2378
	movl	0(%ebp,%edi,4), %eax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L2381
.L2395:
	movl	__new_gateval@GOT(%ebx), %eax
	movl	$0, (%eax)
.L2375:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2378:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	%esi
	.cfi_def_cfa_offset 44
	pushl	%ebp
	.cfi_def_cfa_offset 48
	call	__vval_is1@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	jne	.L2394
.L2383:
	movl	__new_gateval@GOT(%ebx), %eax
	movl	$1, (%eax)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2376:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	%esi
	.cfi_def_cfa_offset 44
	pushl	%ebp
	.cfi_def_cfa_offset 48
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	.L2378
	leal	0(%ebp,%edi,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	%esi
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	__wide_vval_is0@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	.L2395
.L2381:
	leal	0(%ebp,%edi,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	%esi
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	__vval_is1@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	.L2375
	movl	__new_gateval@GOT(%ebx), %eax
	movl	$2, (%eax)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2394:
	.cfi_restore_state
	leal	0(%ebp,%edi,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	%esi
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	__vval_is1@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	.L2383
	movl	__new_gateval@GOT(%ebx), %eax
	movl	$3, (%eax)
	jmp	.L2375
	.cfi_endproc
.LFE372:
	.size	__asl_set_rhs_new_gateval, .-__asl_set_rhs_new_gateval
	.p2align 4,,15
	.globl	__asl_stren_schd_1gev
	.type	__asl_stren_schd_1gev, @function
__asl_stren_schd_1gev:
.LFB373:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__new_gateval@GOT(%ebx), %ecx
	movl	48(%esp), %edx
	movl	52(%esp), %esi
	testb	$2, (%ecx)
	jne	.L2397
	movzbl	2(%edx), %eax
	movl	__hizstren_del_tab@GOT(%ebx), %edi
	shrb	$2, %al
	movzbl	%al, %eax
	cmpb	$1, (%edi,%eax)
	je	.L2407
.L2397:
	movzbl	3(%edx), %eax
	movl	%ecx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	12(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %ecx
.L2398:
	movl	__simtime@GOT(%ebx), %edi
	movl	(%esp), %eax
	movl	4(%esp), %edx
	movl	(%ecx), %ecx
	addl	(%edi), %eax
	adcl	4(%edi), %edx
	movl	$1, 8(%esi)
	movb	%cl, 2(%esi)
	movl	%eax, %edi
	movl	%eax, 24(%esi)
	movl	(%esp), %eax
	movl	%edx, %ebp
	movl	%edx, 28(%esi)
	movl	4(%esp), %edx
	orl	%eax, %edx
	jne	.L2399
	movl	__p0_te_hdrp@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2408
	movl	__p0_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%edx, 48(%esi)
	movl	%esi, 44(%edx)
.L2396:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2408:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	%esi, (%eax)
	movl	$0, 48(%esi)
	movl	%esi, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2399:
	.cfi_restore_state
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$0, 48(%esi)
	cmpl	(%eax), %esi
	je	.L2402
	movl	$0, 44(%esi)
.L2402:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2409
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L2404
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L2410
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2404:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2407:
	.cfi_restore_state
	movl	%ecx, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	__hizstrengate_getdel@PLT
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %ecx
	jmp	.L2398
	.p2align 4,,10
	.p2align 3
.L2409:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2396
	.p2align 4,,10
	.p2align 3
.L2410:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L2396
	.cfi_endproc
.LFE373:
	.size	__asl_stren_schd_1gev, .-__asl_stren_schd_1gev
	.p2align 4,,15
	.globl	__asl_schd_1gev
	.type	__asl_schd_1gev, @function
__asl_schd_1gev:
.LFB374:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %edx
	movl	60(%esp), %esi
	movzbl	3(%edx), %eax
	movl	$1, 8(%esi)
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	12(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	%edi, 24(%esi)
	orl	%eax, %edx
	movl	%ebp, 28(%esi)
	jne	.L2412
	movl	__p0_te_hdrp@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2420
	movl	__p0_te_endp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%edx, 48(%esi)
	movl	%esi, 44(%edx)
.L2411:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2420:
	.cfi_restore_state
	movl	__p0_te_endp@GOT(%ebx), %edx
	movl	%esi, (%eax)
	movl	$0, 48(%esi)
	movl	%esi, (%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2412:
	.cfi_restore_state
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$0, 48(%esi)
	cmpl	(%eax), %esi
	je	.L2415
	movl	$0, 44(%esi)
.L2415:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2421
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L2417
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L2422
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2417:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2421:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2411
	.p2align 4,,10
	.p2align 3
.L2422:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L2411
	.cfi_endproc
.LFE374:
	.size	__asl_schd_1gev, .-__asl_schd_1gev
	.p2align 4,,15
	.globl	__asl_schd_1gev_const
	.type	__asl_schd_1gev_const, @function
__asl_schd_1gev_const:
.LFB539:
	.cfi_startproc
	jmp	__asl_sched_proc_delay_const_nt
	.cfi_endproc
.LFE539:
	.size	__asl_schd_1gev_const, .-__asl_schd_1gev_const
	.p2align 4,,15
	.globl	__asl_schd_1gev_pnd0
	.type	__asl_schd_1gev_pnd0, @function
__asl_schd_1gev_pnd0:
.LFB376:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	__simtime@GOT(%edx), %ecx
	movl	$1, 8(%eax)
	movl	4(%ecx), %ebx
	movl	(%ecx), %ecx
	movl	%ecx, 24(%eax)
	movl	__p0_te_hdrp@GOT(%edx), %ecx
	movl	%ebx, 28(%eax)
	movl	__p0_te_endp@GOT(%edx), %edx
	movl	(%ecx), %ebx
	testl	%ebx, %ebx
	je	.L2428
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	%ecx, 48(%eax)
	movl	%eax, 44(%ecx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2428:
	.cfi_restore_state
	movl	%eax, (%edx)
	movl	%eax, (%ecx)
	movl	$0, 48(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE376:
	.size	__asl_schd_1gev_pnd0, .-__asl_schd_1gev_pnd0
	.section	.rodata.str1.1
.LC18:
	.string	"drives glitch"
	.text
	.p2align 4,,15
	.globl	__asl_cancele_pend_nochg_1gev
	.type	__asl_cancele_pend_nochg_1gev, @function
__asl_cancele_pend_nochg_1gev:
.LFB378:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	movl	%gs:20, %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	movzbl	2(%esi), %eax
	testb	$2, %al
	je	.L2430
	movl	__new_gateval@GOT(%ebx), %edx
	testb	$2, (%edx)
	je	.L2443
.L2430:
	movzbl	3(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	12(%esi)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L2431:
	movl	__simtime@GOT(%ebx), %ecx
	addl	(%ecx), %eax
	adcl	4(%ecx), %edx
	movl	%eax, (%esp)
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L2433
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2444
.L2433:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	.L2435
	movl	__showe_onevent@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2445
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	$1, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__get_showcancele_val@PLT
	movl	__new_gateval@GOT(%ebx), %edx
	movl	%eax, (%edx)
	movl	%edi, %eax
	call	linkout_tevp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L2429:
	movl	12(%esp), %ecx
	xorl	%gs:20, %ecx
	movl	%ebp, %eax
	jne	.L2446
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2445:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	xorl	%ebp, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__get_showcancele_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movb	%al, 2(%edi)
	jmp	.L2429
	.p2align 4,,10
	.p2align 3
.L2443:
	movl	__hizstren_del_tab@GOT(%ebx), %edx
	shrb	$2, %al
	movzbl	%al, %eax
	cmpb	$1, (%edx,%eax)
	jne	.L2430
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__hizstrengate_getdel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L2431
	.p2align 4,,10
	.p2align 3
.L2435:
	movl	%edi, %eax
	call	linkout_tevp
	jmp	.L2429
	.p2align 4,,10
	.p2align 3
.L2444:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	$592
	.cfi_def_cfa_offset 64
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L2433
	leal	.LC18@GOTOFF(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	leal	16(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 68
	leal	24(%edi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__emit_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L2433
.L2446:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE378:
	.size	__asl_cancele_pend_nochg_1gev, .-__asl_cancele_pend_nochg_1gev
	.p2align 4,,15
	.globl	__asl_chg_gate_outwire
	.type	__asl_chg_gate_outwire, @function
__asl_chg_gate_outwire:
.LFB379:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	4(%eax), %eax
	cmpb	$0, 3(%eax)
	js	.L2448
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	__acc_evchg_gate_outwire@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2448:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	__change_gate_outwire@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE379:
	.size	__asl_chg_gate_outwire, .-__asl_chg_gate_outwire
	.section	.rodata.str1.1
.LC19:
	.string	"unstable"
	.text
	.p2align 4,,15
	.globl	__asl_cancele_pend_chg_1gev
	.type	__asl_cancele_pend_chg_1gev, @function
__asl_cancele_pend_chg_1gev:
.LFB380:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %esi
	movl	__new_gateval@GOT(%ebx), %ebp
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	64(%esp), %edi
	movl	0(%ebp), %edx
	cmpb	%dl, 2(%esi)
	je	.L2475
	movzbl	2(%edi), %eax
	testb	$2, %al
	je	.L2454
	andl	$2, %edx
	jne	.L2454
	movl	__hizstren_del_tab@GOT(%ebx), %edx
	shrb	$2, %al
	movzbl	%al, %eax
	cmpb	$1, (%edx,%eax)
	je	.L2476
.L2454:
	movzbl	3(%edi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	12(%edi)
	.cfi_def_cfa_offset 80
	call	__get_del@PLT
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L2455:
	movl	__simtime@GOT(%ebx), %eax
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	addl	(%eax), %edx
	adcl	4(%eax), %ecx
	movl	%edx, %eax
	movl	%eax, 16(%esp)
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	%ecx, 20(%esp)
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L2457
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2477
.L2457:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2459
	movl	__showe_onevent@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L2460
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__get_showcancele_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movb	%al, 2(%esi)
	movl	$1, %edx
	jmp	.L2451
	.p2align 4,,10
	.p2align 3
.L2465:
	movl	%esi, %eax
	call	asl_loc_conflict_list
.L2464:
	movl	$1, 8(%esi)
	.p2align 4,,10
	.p2align 3
.L2475:
	movl	$1, %edx
.L2451:
	movl	28(%esp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	jne	.L2478
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2459:
	.cfi_restore_state
	movl	0(%ebp), %eax
	movl	12(%esp), %ebp
	movl	8(%esp), %edi
	movl	%ebp, %edx
	movb	%al, 2(%esi)
	orl	%edi, %edx
	je	.L2475
	movl	%esi, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	16(%esp), %ecx
	movl	20(%esp), %edi
	movl	$0, 48(%esi)
	cmpl	(%eax), %esi
	movl	%ecx, 24(%esi)
	movl	%edi, 28(%esi)
	je	.L2462
	movl	$0, 44(%esi)
.L2462:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%ecx, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2479
	xorl	4(%edx), %ecx
	xorl	8(%edx), %edi
	orl	%ecx, %edi
	jne	.L2465
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L2480
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	jmp	.L2464
	.p2align 4,,10
	.p2align 3
.L2460:
	movl	%edx, 8(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__get_showcancele_val@PLT
	movl	%eax, 0(%ebp)
	movl	%esi, %eax
	call	linkout_tevp
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	8(%esp), %edx
	jmp	.L2451
	.p2align 4,,10
	.p2align 3
.L2477:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L2457
	leal	.LC19@GOTOFF(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	24(%esi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%esi
	.cfi_def_cfa_offset 92
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__emit_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L2457
	.p2align 4,,10
	.p2align 3
.L2476:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__hizstrengate_getdel@PLT
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L2455
	.p2align 4,,10
	.p2align 3
.L2480:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L2464
	.p2align 4,,10
	.p2align 3
.L2479:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2464
.L2478:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE380:
	.size	__asl_cancele_pend_chg_1gev, .-__asl_cancele_pend_chg_1gev
	.p2align 4,,15
	.globl	__asl_stren_pend_nochg_1gev
	.type	__asl_stren_pend_nochg_1gev, @function
__asl_stren_pend_nochg_1gev:
.LFB531:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	linkout_tevp
	.cfi_endproc
.LFE531:
	.size	__asl_stren_pend_nochg_1gev, .-__asl_stren_pend_nochg_1gev
	.p2align 4,,15
	.globl	__asl_pend_nochg_1gev
	.type	__asl_pend_nochg_1gev, @function
__asl_pend_nochg_1gev:
.LFB533:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	linkout_tevp
	.cfi_endproc
.LFE533:
	.size	__asl_pend_nochg_1gev, .-__asl_pend_nochg_1gev
	.p2align 4,,15
	.globl	__asl_pend_chg_1gev
	.type	__asl_pend_chg_1gev, @function
__asl_pend_chg_1gev:
.LFB383:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	40(%esp), %edx
	movl	44(%esp), %esi
	movzbl	3(%edx), %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 44
	pushl	12(%edx)
	.cfi_def_cfa_offset 48
	call	__get_del@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, %ebp
	orl	%eax, %edx
	jne	.L2493
.L2483:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2493:
	.cfi_restore_state
	movl	%eax, %edi
	movl	%esi, %eax
	call	linkout_tevp
	movl	__simtime@GOT(%ebx), %eax
	movl	$1, 8(%esi)
	movl	$0, 48(%esi)
	addl	(%eax), %edi
	adcl	4(%eax), %ebp
	movl	__cur_tevp@GOT(%ebx), %eax
	cmpl	(%eax), %esi
	movl	%edi, 24(%esi)
	movl	%ebp, 28(%esi)
	je	.L2485
	movl	$0, 44(%esi)
.L2485:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2494
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L2487
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L2495
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2487:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2494:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2483
	.p2align 4,,10
	.p2align 3
.L2495:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L2483
	.cfi_endproc
.LFE383:
	.size	__asl_pend_chg_1gev, .-__asl_pend_chg_1gev
	.p2align 4,,15
	.globl	__asl_pend_chg_1gev_const
	.type	__asl_pend_chg_1gev_const, @function
__asl_pend_chg_1gev_const:
.LFB384:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__simtime@GOT(%ebp), %eax
	movl	$0, 48(%ebx)
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	__cur_tevp@GOT(%ebp), %eax
	addl	36(%ebx), %esi
	adcl	40(%ebx), %edi
	movl	$1, 8(%ebx)
	cmpl	(%eax), %ebx
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	je	.L2497
	movl	$0, 44(%ebx)
.L2497:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2503
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2500
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2504
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2500:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2503:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2504:
	.cfi_restore_state
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE384:
	.size	__asl_pend_chg_1gev_const, .-__asl_pend_chg_1gev_const
	.p2align 4,,15
	.globl	__asl_stren_pend_chg_1gev
	.type	__asl_stren_pend_chg_1gev, @function
__asl_stren_pend_chg_1gev:
.LFB385:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	__new_gateval@GOT(%ebx), %ecx
	movl	48(%esp), %edx
	movl	(%ecx), %eax
	cmpb	%al, 2(%esi)
	je	.L2505
	testb	$2, %al
	jne	.L2508
	movzbl	2(%edx), %eax
	movl	__hizstren_del_tab@GOT(%ebx), %edi
	shrb	$2, %al
	movzbl	%al, %eax
	cmpb	$1, (%edi,%eax)
	je	.L2519
.L2508:
	movzbl	3(%edx), %eax
	movl	%ecx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	12(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %ecx
	movl	%eax, %edi
	movl	%edx, %ebp
.L2509:
	movl	(%ecx), %eax
	movl	%ebp, %edx
	orl	%edi, %edx
	movb	%al, 2(%esi)
	jne	.L2520
.L2505:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2520:
	.cfi_restore_state
	movl	%esi, %eax
	call	linkout_tevp
	movl	__simtime@GOT(%ebx), %eax
	movl	$0, 48(%esi)
	addl	(%eax), %edi
	adcl	4(%eax), %ebp
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	$1, 8(%esi)
	cmpl	(%eax), %esi
	movl	%edi, 24(%esi)
	movl	%ebp, 28(%esi)
	je	.L2511
	movl	$0, 44(%esi)
.L2511:
	movl	%ebp, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%edi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2521
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%edi, %eax
	xorl	%ebp, %ecx
	orl	%eax, %ecx
	jne	.L2513
	movl	16(%edx), %eax
	movl	%edx, 20(%esi)
	testl	%eax, %eax
	je	.L2522
	movl	%esi, 44(%eax)
	movl	%eax, 48(%esi)
	movl	%esi, 16(%edx)
	jmp	.L2505
	.p2align 4,,10
	.p2align 3
.L2513:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2519:
	.cfi_restore_state
	movl	%ecx, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	__hizstrengate_getdel@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edi
	movl	%edx, %ebp
	movl	12(%esp), %ecx
	jmp	.L2509
	.p2align 4,,10
	.p2align 3
.L2521:
	movl	%eax, %edx
	movl	%esi, %eax
	call	asl_loc_add_new_heap_time
	movl	%esi, 16(%eax)
	movl	%esi, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2505
	.p2align 4,,10
	.p2align 3
.L2522:
	movl	%esi, 16(%edx)
	movl	%esi, 12(%edx)
	jmp	.L2505
	.cfi_endproc
.LFE385:
	.size	__asl_stren_pend_chg_1gev, .-__asl_stren_pend_chg_1gev
	.p2align 4,,15
	.globl	__asl_reschd_caev
	.type	__asl_reschd_caev, @function
__asl_reschd_caev:
.LFB386:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	40(%esp), %edx
	movl	44(%esp), %ebp
	movzwl	4(%edx), %eax
	shrw	$7, %ax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 44
	pushl	20(%edx)
	.cfi_def_cfa_offset 48
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	addl	(%ecx), %eax
	adcl	4(%ecx), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %esi
	xorl	24(%ebp), %eax
	movl	%edx, %edi
	xorl	28(%ebp), %edx
	orl	%eax, %edx
	je	.L2523
	movl	%ebp, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	%esi, 24(%ebp)
	movl	%edi, 28(%ebp)
	movl	$1, 8(%ebp)
	movl	$0, 48(%ebp)
	cmpl	(%eax), %ebp
	je	.L2525
	movl	$0, 44(%ebp)
.L2525:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebx), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2533
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2527
	movl	16(%edx), %eax
	movl	%edx, 20(%ebp)
	testl	%eax, %eax
	je	.L2534
	movl	%ebp, 44(%eax)
	movl	%eax, 48(%ebp)
	movl	%ebp, 16(%edx)
.L2523:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2527:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2533:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebp, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebp, 16(%eax)
	movl	%ebp, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2523
	.p2align 4,,10
	.p2align 3
.L2534:
	movl	%ebp, 16(%edx)
	movl	%ebp, 12(%edx)
	jmp	.L2523
	.cfi_endproc
.LFE386:
	.size	__asl_reschd_caev, .-__asl_reschd_caev
	.p2align 4,,15
	.globl	__asl_reschd_caev_const
	.type	__asl_reschd_caev_const, @function
__asl_reschd_caev_const:
.LFB387:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	__simtime@GOT(%ebp), %eax
	movl	(%eax), %esi
	addl	36(%ebx), %esi
	movl	4(%eax), %edi
	adcl	40(%ebx), %edi
	movl	24(%ebx), %eax
	movl	28(%ebx), %edx
	xorl	%esi, %eax
	xorl	%edi, %edx
	orl	%eax, %edx
	je	.L2535
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	$1, 8(%ebx)
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2537
	movl	$0, 44(%ebx)
.L2537:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2545
	movl	4(%edx), %eax
	movl	8(%edx), %ecx
	xorl	%esi, %eax
	xorl	%edi, %ecx
	orl	%eax, %ecx
	jne	.L2539
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2546
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
.L2535:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2539:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2545:
	.cfi_restore_state
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2535
	.p2align 4,,10
	.p2align 3
.L2546:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2535
	.cfi_endproc
.LFE387:
	.size	__asl_reschd_caev_const, .-__asl_reschd_caev_const
	.p2align 4,,15
	.globl	__asl_eval_tranif_ld
	.type	__asl_eval_tranif_ld, @function
__asl_eval_tranif_ld:
.LFB388:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	__idp@GOT(%ebx), %eax
	movl	28(%esi), %edx
	movl	__old_gateval@GOT(%ebx), %edi
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	(%eax,%edx,4), %eax
	addl	%ecx, %ecx
	andl	$30, %ecx
	shrl	%cl, %eax
	andl	$3, %eax
	movl	%eax, (%edi)
	movl	40(%esi), %eax
	pushl	8(%eax)
	.cfi_def_cfa_offset 32
	call	__eval2_xpr@PLT
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	(%edx), %edx
	movl	(%eax), %eax
	addl	%edx, %edx
	andl	$1, %eax
	andl	$2, %edx
	orl	%edx, %eax
	cmpl	$2, %eax
	je	.L2548
	movl	__new_inputval@GOT(%ebx), %edx
	movl	%eax, (%edx)
	movl	__xspi@GOT(%ebx), %edx
	subl	$1, (%edx)
	movl	20(%esi), %edx
	movl	12(%edx), %edx
	movzbl	(%edx), %edx
	cmpl	$34, %edx
	je	.L2551
	cmpl	$31, %edx
	je	.L2551
	testl	%eax, %eax
	jne	.L2560
	movl	$1, %eax
.L2551:
	cmpl	%eax, (%edi)
	movl	__new_gateval@GOT(%ebx), %edx
	movl	%eax, (%edx)
	setne	%al
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movzbl	%al, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2548:
	.cfi_restore_state
	movl	__new_inputval@GOT(%ebx), %eax
	movl	$3, (%eax)
	movl	__xspi@GOT(%ebx), %eax
	subl	$1, (%eax)
	movl	20(%esi), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %edx
	cmpl	$34, %edx
	je	.L2556
	cmpl	$31, %edx
	movl	$3, %eax
	jne	.L2551
.L2556:
	movl	$3, %eax
	jmp	.L2551
	.p2align 4,,10
	.p2align 3
.L2560:
	cmpl	$1, %eax
	jne	.L2551
	xorl	%eax, %eax
	jmp	.L2551
	.cfi_endproc
.LFE388:
	.size	__asl_eval_tranif_ld, .-__asl_eval_tranif_ld
	.p2align 4,,15
	.globl	__asl_update_tran_harddrvs
	.type	__asl_update_tran_harddrvs, @function
__asl_update_tran_harddrvs:
.LFB391:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	cmpb	$0, 2(%esi)
	js	.L2584
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__load_mdrwire@PLT
	movl	__xspi@GOT(%ebx), %edi
	movl	%eax, 16(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	__maxxnest@GOT(%ebx), %edx
	movl	(%edi), %eax
	addl	$1, %eax
	cmpl	(%edx), %eax
	movl	%eax, (%edi)
	jge	.L2585
.L2566:
	movl	__xstk@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %ebp
	movl	8(%esi), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	cmpl	4(%ebp), %eax
	jg	.L2586
.L2567:
	movl	8(%ebp), %ecx
	movl	%edx, 0(%ebp)
	leal	(%ecx,%eax,4), %eax
	movl	%eax, 12(%ebp)
	pushl	%edx
	.cfi_def_cfa_offset 52
	movl	52(%esi), %edx
	pushl	(%edx)
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%ecx
	.cfi_def_cfa_offset 64
	call	__ld_perinst_val@PLT
	movl	8(%esi), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$32, %ecx
	jg	.L2568
	movl	(%esp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, %eax
	movl	8(%esp), %edx
	movl	(%edx), %edx
	cmpl	%edx, (%eax)
	je	.L2587
.L2569:
	movl	52(%esi), %eax
	pushl	(%esp)
	.cfi_def_cfa_offset 52
	pushl	8(%esp)
	.cfi_def_cfa_offset 56
	pushl	%ecx
	.cfi_def_cfa_offset 60
	pushl	(%eax)
	.cfi_def_cfa_offset 64
	call	__st_perinst_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L2564:
	movl	(%edi), %edx
	cmpb	$0, 2(%esi)
	leal	-1(%edx), %eax
	movl	%eax, (%edi)
	movl	$1, %eax
	js	.L2561
.L2583:
	subl	$2, %edx
	movl	%edx, (%edi)
.L2561:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2568:
	.cfi_restore_state
	leal	31(%ecx), %eax
	movl	%ecx, 12(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	sarl	$5, %eax
	leal	0(,%eax,4), %ecx
	movl	4(%esp), %eax
	movl	8(%eax), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	pushl	8(%ebp)
	.cfi_def_cfa_offset 64
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	(%esp), %ecx
	testl	%eax, %eax
	movl	12(%ecx), %edx
	movl	12(%esp), %ecx
	movl	%edx, (%esp)
	jne	.L2569
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	12(%esp)
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	pushl	12(%ebp)
	.cfi_def_cfa_offset 64
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	12(%esp), %ecx
	jne	.L2569
.L2565:
	movl	(%edi), %edx
	leal	-1(%edx), %eax
	movl	%eax, (%edi)
	xorl	%eax, %eax
	cmpb	$0, 2(%esi)
	jns	.L2583
	jmp	.L2561
	.p2align 4,,10
	.p2align 3
.L2585:
	call	__grow_xstk@PLT
	movl	(%edi), %eax
	jmp	.L2566
	.p2align 4,,10
	.p2align 3
.L2586:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	__chg_xstk_width@PLT
	movl	8(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	leal	31(%edx), %eax
	sarl	$5, %eax
	jmp	.L2567
	.p2align 4,,10
	.p2align 3
.L2584:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__stload_mdrwire@PLT
	movl	__idp@GOT(%ebx), %edi
	movl	8(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%eax), %ecx
	movl	52(%esi), %eax
	movl	(%edi), %edi
	movl	(%edi), %ebp
	imull	%edx, %ebp
	addl	(%eax), %ebp
	cmpl	$1, %edx
	je	.L2588
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%edx
	.cfi_def_cfa_offset 56
	movl	%edx, 12(%esp)
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	%ecx
	.cfi_def_cfa_offset 64
	movl	%ecx, 16(%esp)
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	__xspi@GOT(%ebx), %edi
	movl	(%esp), %ecx
	movl	4(%esp), %edx
	je	.L2565
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%edx
	.cfi_def_cfa_offset 56
	pushl	%ecx
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L2564
	.p2align 4,,10
	.p2align 3
.L2588:
	movzbl	(%ecx), %eax
	cmpb	0(%ebp), %al
	je	.L2582
	movb	%al, 0(%ebp)
.L2582:
	movl	__xspi@GOT(%ebx), %edi
	jmp	.L2564
	.p2align 4,,10
	.p2align 3
.L2587:
	movl	12(%ebp), %eax
	movl	(%esp), %edx
	movl	(%eax), %eax
	cmpl	%eax, (%edx)
	jne	.L2569
	jmp	.L2565
	.cfi_endproc
.LFE391:
	.size	__asl_update_tran_harddrvs, .-__asl_update_tran_harddrvs
	.p2align 4,,15
	.globl	__asl_tran_addr
	.type	__asl_tran_addr, @function
__asl_tran_addr:
.LFB392:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	52(%edx), %ecx
	movl	(%eax), %eax
	movl	(%eax), %eax
	imull	8(%edx), %eax
	addl	(%ecx), %eax
	ret
	.cfi_endproc
.LFE392:
	.size	__asl_tran_addr, .-__asl_tran_addr
	.p2align 4,,15
	.globl	__asl_stren_schd_bidpthdrvrs
	.type	__asl_stren_schd_bidpthdrvrs, @function
__asl_stren_schd_bidpthdrvrs:
.LFB393:
	.cfi_startproc
	movl	8(%esp), %ecx
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movzbl	(%ecx), %ecx
	movl	__new_gateval@GOT(%eax), %edx
	movl	__old_gateval@GOT(%eax), %eax
	movl	%ecx, (%edx)
	movl	12(%esp), %edx
	movl	20(%esp), %ecx
	movzbl	(%edx), %edx
	movl	%edx, (%eax)
	movl	16(%esp), %edx
	movl	4(%esp), %eax
	jmp	asl_loc_schd_1bitpthdrvr
	.cfi_endproc
.LFE393:
	.size	__asl_stren_schd_bidpthdrvrs, .-__asl_stren_schd_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_schd_scalar_bidpthdrvrs
	.type	__asl_schd_scalar_bidpthdrvrs, @function
__asl_schd_scalar_bidpthdrvrs:
.LFB394:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	20(%esp), %edx
	movl	12(%esp), %ebx
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movzbl	(%ebx,%edx), %ebx
	movl	__new_gateval@GOT(%eax), %ecx
	movl	__old_gateval@GOT(%eax), %eax
	movl	%ebx, (%ecx)
	movl	16(%esp), %ecx
	movzbl	(%ecx,%edx), %ecx
	movl	%ecx, (%eax)
	movl	24(%esp), %ecx
	movl	8(%esp), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	asl_loc_schd_1bitpthdrvr
	.cfi_endproc
.LFE394:
	.size	__asl_schd_scalar_bidpthdrvrs, .-__asl_schd_scalar_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_schd_bidpthdrvrs
	.type	__asl_schd_bidpthdrvrs, @function
__asl_schd_bidpthdrvrs:
.LFB395:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	60(%esp), %esi
	movl	52(%esp), %ebx
	movl	60(%esp), %ecx
	movl	8(%eax), %edi
	sarl	$5, %esi
	andl	$31, %ecx
	leal	31(%edi), %edx
	sarl	$5, %edx
	sall	$2, %edx
	leal	(%edx,%esi,4), %edi
	movl	__new_gateval@GOT(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	(%ebx,%edi), %edx
	movl	(%ebx,%esi,4), %ebx
	shrl	%cl, %edx
	shrl	%cl, %ebx
	addl	%edx, %edx
	andl	$2, %edx
	andl	$1, %ebx
	orl	%edx, %ebx
	movl	12(%esp), %edx
	movl	%ebx, (%edx)
	movl	56(%esp), %ebx
	movl	__old_gateval@GOT(%ebp), %edx
	movl	(%ebx,%edi), %ebx
	movl	56(%esp), %edi
	movl	(%edi,%esi,4), %esi
	shrl	%cl, %ebx
	addl	%ebx, %ebx
	andl	$2, %ebx
	shrl	%cl, %esi
	movl	64(%esp), %ecx
	andl	$1, %esi
	orl	%ebx, %esi
	movl	%esi, (%edx)
	movl	60(%esp), %edx
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_schd_1bitpthdrvr
	.cfi_endproc
.LFE395:
	.size	__asl_schd_bidpthdrvrs, .-__asl_schd_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_store_bidpthdrvrs
	.type	__asl_store_bidpthdrvrs, @function
__asl_store_bidpthdrvrs:
.LFB396:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	52(%esp), %ebp
	movl	56(%esp), %edi
	movl	8(%ebp), %eax
	addl	$31, %eax
	sarl	$5, %eax
	leal	(%edi,%eax,4), %esi
	movl	__new_gateval@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%eax, 16(%esp)
	andl	$1, %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	64(%esp)
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 52
	movl	16(%esp), %eax
	movl	(%eax), %eax
	shrl	%eax
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	64(%esp)
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__lhsbsel@PLT
	pushl	%esi
	.cfi_def_cfa_offset 68
	pushl	%edi
	.cfi_def_cfa_offset 72
	pushl	8(%ebp)
	.cfi_def_cfa_offset 76
	movl	52(%ebp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 80
	call	__st_perinst_val@PLT
	addl	$60, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE396:
	.size	__asl_store_bidpthdrvrs, .-__asl_store_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_trpath_scalar_store
	.type	__asl_trpath_scalar_store, @function
__asl_trpath_scalar_store:
.LFB397:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	__idp@GOT(%edx), %edx
	movl	12(%esp), %ebx
	movl	52(%eax), %eax
	movl	(%edx), %edx
	movl	(%edx), %edx
	addl	(%eax), %edx
	xorl	%eax, %eax
	movzbl	(%edx), %ecx
	andl	$3, %ecx
	cmpl	%ebx, %ecx
	je	.L2597
	movb	%bl, (%edx)
	movl	$1, %eax
.L2597:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE397:
	.size	__asl_trpath_scalar_store, .-__asl_trpath_scalar_store
	.p2align 4,,15
	.globl	__asl_trpath_store
	.type	__asl_trpath_store, @function
__asl_trpath_store:
.LFB398:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	__xspi@GOT(%ebx), %edi
	movl	__maxxnest@GOT(%ebx), %edx
	movl	52(%eax), %eax
	movl	%eax, 12(%esp)
	movl	(%edi), %eax
	addl	$1, %eax
	cmpl	(%edx), %eax
	movl	%eax, (%edi)
	jge	.L2608
.L2603:
	movl	__xstk@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %esi
	movl	48(%esp), %eax
	movl	8(%eax), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	cmpl	4(%esi), %eax
	jg	.L2609
.L2604:
	movl	8(%esi), %ecx
	movl	%edx, (%esi)
	leal	(%ecx,%eax,4), %eax
	movl	%eax, 12(%esi)
	pushl	%edx
	.cfi_def_cfa_offset 52
	movl	16(%esp), %edx
	pushl	(%edx)
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%ecx
	.cfi_def_cfa_offset 64
	call	__ld_perinst_val@PLT
	movl	72(%esp), %edx
	movl	12(%esi), %eax
	movl	8(%esi), %ebp
	movl	72(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	sarl	$5, %edx
	movl	(%eax,%edx,4), %eax
	movl	0(%ebp,%edx,4), %edx
	andl	$31, %ecx
	shrl	%cl, %eax
	shrl	%cl, %edx
	addl	%eax, %eax
	andl	$1, %edx
	andl	$2, %eax
	orl	%eax, %edx
	cmpl	52(%esp), %edx
	je	.L2610
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	56(%esp), %eax
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	64(%esp)
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	__lhsbsel@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 52
	movl	56(%esp), %eax
	shrl	%eax
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	64(%esp)
	.cfi_def_cfa_offset 60
	pushl	12(%esi)
	.cfi_def_cfa_offset 64
	call	__lhsbsel@PLT
	pushl	12(%esi)
	.cfi_def_cfa_offset 68
	pushl	8(%esi)
	.cfi_def_cfa_offset 72
	movl	72(%esp), %eax
	pushl	8(%eax)
	.cfi_def_cfa_offset 76
	movl	40(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 80
	call	__st_perinst_val@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	subl	$1, (%edi)
	movl	$1, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2610:
	.cfi_restore_state
	subl	$1, (%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2609:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__chg_xstk_width@PLT
	movl	64(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	8(%eax), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	jmp	.L2604
	.p2align 4,,10
	.p2align 3
.L2608:
	call	__grow_xstk@PLT
	movl	(%edi), %eax
	jmp	.L2603
	.cfi_endproc
.LFE398:
	.size	__asl_trpath_store, .-__asl_trpath_store
	.p2align 4,,15
	.globl	__asl_eval_tran_bidchan_1bit
	.type	__asl_eval_tran_bidchan_1bit, @function
__asl_eval_tran_bidchan_1bit:
.LFB403:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	__chantab@GOT(%ebx), %ecx
	leal	(%eax,%eax,4), %edx
	movl	(%ecx), %eax
	leal	(%eax,%edx,4), %eax
	leal	16(%eax), %edx
	movl	12(%eax), %eax
	call	asl_loc_eval_combine_bid_chan.isra.10
	movl	__acum_b@GOT(%ebx), %edx
#APP
# 10345 "v_aslib.c" 1
	movl (%edx), %ecx
# 0 "" 2
#NO_APP
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE403:
	.size	__asl_eval_tran_bidchan_1bit, .-__asl_eval_tran_bidchan_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_scalar_bidchan_1bit
	.type	__asl_eval_tran_scalar_bidchan_1bit, @function
__asl_eval_tran_scalar_bidchan_1bit:
.LFB404:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	__chantab@GOT(%ebx), %ecx
	leal	(%eax,%eax,4), %edx
	movl	(%ecx), %eax
	leal	(%eax,%edx,4), %eax
	leal	16(%eax), %edx
	movl	12(%eax), %eax
	call	asl_loc_eval_combine_bid_chan.isra.10
	movl	__acum_b@GOT(%ebx), %edx
	movl	(%edx), %edx
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	addl	%edx, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE404:
	.size	__asl_eval_tran_scalar_bidchan_1bit, .-__asl_eval_tran_scalar_bidchan_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_stbidchan_1bit
	.type	__asl_eval_tran_stbidchan_1bit, @function
__asl_eval_tran_stbidchan_1bit:
.LFB405:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %eax
	movl	__acum_sb@GOT(%ecx), %ebx
	movl	__idp@GOT(%ecx), %edi
	movl	%ecx, 16(%esp)
	leal	(%eax,%eax,4), %edx
	movl	__chantab@GOT(%ecx), %eax
	movl	%ebx, 24(%esp)
	movl	$2, (%ebx)
	movl	(%edi), %ebx
	movl	%edi, 12(%esp)
	movl	(%eax), %eax
	movl	%ebx, 28(%esp)
	leal	(%eax,%edx,4), %eax
	movl	%eax, 20(%esp)
	movl	12(%eax), %esi
	movl	16(%eax), %eax
	testl	%eax, %eax
	movl	$2, %eax
	je	.L2616
	movl	$0, 8(%esp)
	jmp	.L2620
	.p2align 4,,10
	.p2align 3
.L2631:
	leal	(%edx,%edx,2), %ebp
	sall	$3, %ebp
	addl	68(%ecx), %ebp
	testb	$1, 0(%ebp)
	je	.L2618
	movl	24(%ecx), %edx
	leal	(%edi,%edx,4), %edx
	movzbl	(%edx,%ebx), %edx
.L2619:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	addl	$12, %esi
	pushl	%edx
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	movzbl	(%ecx), %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	32(%esp), %ebx
	call	__comb_1bitsts@PLT
	addl	$1, 24(%esp)
	movl	40(%esp), %ecx
	movl	24(%esp), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	20(%esp), %ebx
	movl	%eax, (%ecx)
	cmpl	%edi, 16(%ebx)
	jbe	.L2616
.L2620:
	movl	8(%esi), %edx
	movl	12(%esp), %ecx
	movl	4(%esi), %ebx
	movl	4(%edx), %edi
	movl	$0, %edx
	cmpl	$-1, %ebx
	cmove	%edx, %ebx
	movl	%edi, (%ecx)
	movl	(%esi), %ecx
	movl	(%edi), %edx
	imull	8(%ecx), %edx
	addl	%ebx, %edx
	testb	$32, 4(%ecx)
	jne	.L2631
.L2618:
	movl	52(%ecx), %ebx
	movl	(%ebx), %ebx
	movzbl	(%ebx,%edx), %edx
	jmp	.L2619
	.p2align 4,,10
	.p2align 3
.L2616:
	movl	12(%esp), %esi
	movl	28(%esp), %ebx
	movl	%ebx, (%esi)
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE405:
	.size	__asl_eval_tran_stbidchan_1bit, .-__asl_eval_tran_stbidchan_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_bidchan_1bit_assign
	.type	__asl_eval_tran_bidchan_1bit_assign, @function
__asl_eval_tran_bidchan_1bit_assign:
.LFB406:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %eax
	movl	__acum_a@GOT(%edi), %esi
	movl	%gs:20, %edx
	movl	%edx, 60(%esp)
	xorl	%edx, %edx
	movl	%edi, 20(%esp)
	leal	(%eax,%eax,4), %edx
	movl	__chantab@GOT(%edi), %eax
	movl	$0, (%esi)
	movl	%esi, 16(%esp)
	movl	__acum_b@GOT(%edi), %esi
	movl	__idp@GOT(%edi), %edi
	movl	(%eax), %eax
	movl	%esi, 4(%esp)
	movl	$1, (%esi)
	movl	%edi, 8(%esp)
	movl	(%edi), %edi
	leal	(%eax,%edx,4), %eax
	movl	16(%eax), %esi
	movl	%edi, 28(%esp)
	movl	%eax, 12(%esp)
	movl	12(%eax), %edi
	testl	%esi, %esi
	je	.L2633
	leal	48(%esp), %eax
	xorl	%ebp, %ebp
	movl	%eax, (%esp)
	jmp	.L2639
	.p2align 4,,10
	.p2align 3
.L2672:
	cmpl	$-1, %edx
	jne	.L2636
	movl	24(%esi), %eax
	movl	(%ecx,%eax,4), %edx
	movl	%edx, %ecx
	andl	$1, %edx
	shrl	%ecx
	movl	%edx, 44(%esp)
	andl	$1, %ecx
	movl	%ecx, 48(%esp)
	.p2align 4,,10
	.p2align 3
.L2637:
	movzbl	(%esi), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 112
	pushl	%ecx
	.cfi_def_cfa_offset 116
	pushl	%edx
	.cfi_def_cfa_offset 120
	pushl	28(%esp)
	.cfi_def_cfa_offset 124
	pushl	44(%esp)
	.cfi_def_cfa_offset 128
	movl	52(%esp), %ebx
	call	__eval_1w_nonstren@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 96
	testb	$1, 3(%esi)
	je	.L2638
	movl	4(%esp), %eax
	movl	$0, (%eax)
.L2638:
	movl	12(%esp), %eax
	addl	$1, %ebp
	addl	$12, %edi
	movl	16(%eax), %eax
	cmpl	%ebp, %eax
	jbe	.L2671
.L2639:
	movl	4(%edi), %edx
	movl	(%edi), %esi
	movl	$0, %ebx
	movl	8(%edi), %eax
	cmpl	$-1, %edx
	cmovne	%edx, %ebx
	testb	$32, 4(%esi)
	movl	4(%eax), %ecx
	movl	8(%esp), %eax
	movl	%ecx, (%eax)
	je	.L2635
	movl	(%ecx), %eax
	imull	8(%esi), %eax
	addl	%ebx, %eax
	movl	68(%esi), %ebx
	leal	(%eax,%eax,2), %eax
	leal	(%ebx,%eax,8), %eax
	testb	$1, (%eax)
	jne	.L2672
.L2635:
	leal	44(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	%esi, %ecx
	pushl	%edx
	.cfi_def_cfa_offset 112
	movl	16(%esp), %edx
	call	asl_loc_ld_vtx_netbit
	movl	64(%esp), %ecx
	movl	60(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	jmp	.L2637
	.p2align 4,,10
	.p2align 3
.L2633:
	movl	8(%esp), %eax
	movl	28(%esp), %edi
	movl	%edi, (%eax)
	movl	60(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L2673
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2636:
	.cfi_restore_state
	pushl	%edx
	.cfi_def_cfa_offset 100
	pushl	%esi
	.cfi_def_cfa_offset 104
	pushl	8(%esp)
	.cfi_def_cfa_offset 108
	leal	56(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 112
	movl	36(%esp), %ebx
	call	__ld_bit@PLT
	movl	64(%esp), %ecx
	movl	60(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	jmp	.L2637
	.p2align 4,,10
	.p2align 3
.L2671:
	movl	12(%esp), %edx
	testl	%eax, %eax
	movl	12(%edx), %esi
	je	.L2633
	leal	56(%esp), %eax
	xorl	%edi, %edi
	movl	%edi, (%esp)
	movl	%eax, 24(%esp)
	jmp	.L2646
	.p2align 4,,10
	.p2align 3
.L2674:
	andl	$4, %ecx
	je	.L2645
	subl	$4, %esp
	.cfi_def_cfa_offset 100
	pushl	28(%esp)
	.cfi_def_cfa_offset 104
	leal	60(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 108
	pushl	%eax
	.cfi_def_cfa_offset 112
	movl	36(%esp), %ebx
	call	__chg_st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	.p2align 4,,10
	.p2align 3
.L2643:
	movl	12(%esp), %eax
	addl	$1, (%esp)
	addl	$12, %esi
	movl	(%esp), %edi
	cmpl	%edi, 16(%eax)
	jbe	.L2633
.L2646:
	movl	8(%esi), %eax
	movl	4(%esi), %edx
	movl	$0, %edi
	movl	4(%esp), %ecx
	movl	16(%esp), %ebp
	movl	4(%eax), %ebx
	movl	8(%esp), %eax
	cmpl	$-1, %edx
	cmove	%edi, %edx
	movl	(%ecx), %ecx
	movl	0(%ebp), %ebp
	movl	%ebx, (%eax)
	movl	(%esi), %eax
	movl	%ebp, 52(%esp)
	movl	%ecx, 56(%esp)
	testb	$1, 3(%eax)
	je	.L2641
	notl	%ecx
	movl	$0, 56(%esp)
	andl	%ebp, %ecx
	movl	%ecx, 52(%esp)
.L2641:
	movzbl	4(%eax), %ecx
	testb	$32, %cl
	je	.L2642
	movl	(%ebx), %ebx
	movl	68(%eax), %edi
	imull	8(%eax), %ebx
	addl	%edx, %ebx
	leal	(%ebx,%ebx,2), %ebx
	leal	(%edi,%ebx,8), %ebx
	testb	$1, (%ebx)
	jne	.L2643
.L2642:
	testb	$4, 2(%eax)
	je	.L2674
	pushl	56(%esp)
	.cfi_def_cfa_offset 100
	pushl	56(%esp)
	.cfi_def_cfa_offset 104
	pushl	%edx
	.cfi_def_cfa_offset 108
	pushl	%eax
	.cfi_def_cfa_offset 112
	movl	36(%esp), %ebx
	call	__chg_st_bit@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	jmp	.L2643
	.p2align 4,,10
	.p2align 3
.L2645:
	pushl	8(%eax)
	.cfi_def_cfa_offset 100
	pushl	28(%esp)
	.cfi_def_cfa_offset 104
	leal	60(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 108
	pushl	%eax
	.cfi_def_cfa_offset 112
	movl	36(%esp), %ebx
	call	__st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 96
	jmp	.L2643
.L2673:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE406:
	.size	__asl_eval_tran_bidchan_1bit_assign, .-__asl_eval_tran_bidchan_1bit_assign
	.p2align 4,,15
	.globl	__asl_eval_tran_stbidchan_1bit_assign
	.type	__asl_eval_tran_stbidchan_1bit_assign, @function
__asl_eval_tran_stbidchan_1bit_assign:
.LFB407:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %eax
	movl	__acum_sb@GOT(%esi), %edi
	movl	%esi, 28(%esp)
	leal	(%eax,%eax,4), %edx
	movl	__chantab@GOT(%esi), %eax
	movl	__idp@GOT(%esi), %esi
	movl	%edi, 24(%esp)
	movl	$2, (%edi)
	movl	(%eax), %eax
	movl	(%esi), %edi
	movl	%esi, 16(%esp)
	leal	(%eax,%edx,4), %eax
	movl	%edi, 44(%esp)
	movl	%eax, 20(%esp)
	movl	12(%eax), %esi
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2676
	movl	$2, %eax
	movl	$0, 12(%esp)
	jmp	.L2680
	.p2align 4,,10
	.p2align 3
.L2718:
	leal	(%edx,%edx,2), %ebp
	sall	$3, %ebp
	addl	68(%ecx), %ebp
	testb	$1, 0(%ebp)
	je	.L2678
	movl	24(%ecx), %edx
	leal	(%edi,%edx,4), %edx
	movzbl	(%edx,%ebx), %edx
.L2679:
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	addl	$12, %esi
	pushl	%edx
	.cfi_def_cfa_offset 88
	pushl	%eax
	.cfi_def_cfa_offset 92
	movzbl	(%ecx), %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 96
	movl	44(%esp), %ebx
	call	__comb_1bitsts@PLT
	movl	40(%esp), %edi
	movl	36(%esp), %ebx
	addl	$1, 28(%esp)
	movl	%eax, (%edi)
	movl	16(%ebx), %edx
	movl	28(%esp), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	cmpl	%edi, %edx
	jbe	.L2717
.L2680:
	movl	8(%esi), %edx
	movl	16(%esp), %ebx
	movl	(%esi), %ecx
	movl	4(%edx), %edi
	movl	$0, %edx
	movl	%edi, (%ebx)
	movl	4(%esi), %ebx
	cmpl	$-1, %ebx
	cmove	%edx, %ebx
	movl	(%edi), %edx
	imull	8(%ecx), %edx
	addl	%ebx, %edx
	testb	$32, 4(%ecx)
	jne	.L2718
.L2678:
	movl	52(%ecx), %ebx
	movl	(%ebx), %ebx
	movzbl	(%ebx,%edx), %edx
	jmp	.L2679
	.p2align 4,,10
	.p2align 3
.L2676:
	movl	44(%esp), %edi
	movl	16(%esp), %eax
	movl	%edi, (%eax)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2717:
	.cfi_restore_state
	movl	20(%esp), %edi
	testl	%edx, %edx
	movl	12(%edi), %edi
	je	.L2676
	movl	28(%esp), %esi
	movl	$0, 12(%esp)
	movl	__lhs_changed@GOT(%esi), %ebx
	movl	__wire_init@GOT(%esi), %esi
	movl	%ebx, 36(%esp)
	movl	%esi, 40(%esp)
	jmp	.L2691
	.p2align 4,,10
	.p2align 3
.L2684:
	cmpl	%eax, %edx
	je	.L2683
	movb	%al, 0(%ebp)
	movzbl	4(%esi), %eax
	testb	$4, %al
	je	.L2683
	movl	36(%esp), %ebx
	testb	$8, %al
	movl	$0, (%ebx)
	jne	.L2719
.L2687:
	movl	124(%esi), %eax
	testl	%eax, %eax
	je	.L2688
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	movl	44(%esp), %ebx
	call	__add_togglelst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
.L2688:
	movl	16(%esp), %eax
	movl	56(%esi), %edx
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	testb	$8, %al
	je	.L2720
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$3, %edx
	je	.L2721
.L2690:
	andl	$48, %eax
	cmpl	$48, %eax
	je	.L2722
	.p2align 4,,10
	.p2align 3
.L2683:
	movl	20(%esp), %esi
	addl	$1, 12(%esp)
	addl	$12, %edi
	movl	12(%esp), %eax
	cmpl	%eax, 16(%esi)
	jbe	.L2676
	movl	24(%esp), %eax
	movl	(%eax), %eax
.L2691:
	movl	8(%edi), %edx
	movl	16(%esp), %esi
	movl	4(%edi), %ecx
	movl	4(%edx), %ebp
	movl	$0, %edx
	cmpl	$-1, %ecx
	movl	%ecx, 32(%esp)
	cmovne	%ecx, %edx
	movl	%ebp, (%esi)
	movl	(%edi), %esi
	testb	$32, 4(%esi)
	movl	24(%esi), %ebx
	leal	0(,%ebx,4), %ecx
	je	.L2682
	movl	0(%ebp), %ebx
	imull	8(%esi), %ebx
	addl	%edx, %ebx
	leal	(%ebx,%ebx,2), %ebx
	sall	$3, %ebx
	addl	68(%esi), %ebx
	testb	$1, (%ebx)
	jne	.L2683
.L2682:
	addl	%ecx, %edx
	movzbl	(%esi), %ecx
	addl	%edx, %ebp
	movzbl	0(%ebp), %edx
	andl	$31, %ecx
	cmpb	$6, %cl
	jne	.L2684
	movl	40(%esp), %ebx
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L2685
	movzbl	3(%esi), %eax
	movl	28(%esp), %ebx
	movl	__cap_to_stren@GOT(%ebx), %ecx
	shrb	%al
	andl	$3, %eax
	movl	(%ecx,%eax,4), %eax
	orl	$3, %eax
	movzbl	%al, %eax
	jmp	.L2684
	.p2align 4,,10
	.p2align 3
.L2685:
	cmpl	$2, %eax
	jne	.L2684
	movzbl	3(%esi), %eax
	movl	28(%esp), %ecx
	movl	%edx, %ebx
	andl	$3, %ebx
	movl	__cap_to_stren@GOT(%ecx), %ecx
	shrb	%al
	andl	$3, %eax
	orb	(%ecx,%eax,4), %bl
	movzbl	%bl, %eax
	jmp	.L2684
	.p2align 4,,10
	.p2align 3
.L2719:
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	movl	44(%esp), %ebx
	call	__wakeup_delay_ctrls@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L2687
	.p2align 4,,10
	.p2align 3
.L2720:
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	movl	44(%esp), %ebx
	call	__add_select_nchglst_el@PLT
	movl	32(%esp), %eax
	movl	56(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$3, %edx
	jne	.L2690
.L2721:
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	40(%esp)
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	movl	44(%esp), %ebx
	call	__add_dmpv_chglst_el_sel@PLT
	movl	32(%esp), %eax
	movl	56(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	andl	$48, %eax
	cmpl	$48, %eax
	jne	.L2683
.L2722:
	subl	$12, %esp
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	movl	44(%esp), %ebx
	call	__add_dp_chglst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L2683
	.cfi_endproc
.LFE407:
	.size	__asl_eval_tran_stbidchan_1bit_assign, .-__asl_eval_tran_stbidchan_1bit_assign
	.p2align 4,,15
	.globl	__asl_eval_tran_bidchan_vectored_assign
	.type	__asl_eval_tran_bidchan_vectored_assign, @function
__asl_eval_tran_bidchan_vectored_assign:
.LFB408:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	__idp@GOT(%ebx), %edi
	movl	80(%esp), %eax
	movl	(%edi), %ecx
	movl	52(%eax), %edx
	movl	8(%eax), %eax
	movl	%edi, 20(%esp)
	movl	__xspi@GOT(%ebx), %edi
	imull	(%ecx), %eax
	movl	4(%edx), %edx
	movl	%ecx, 32(%esp)
	movl	%edi, 28(%esp)
	movl	(%edx,%eax,4), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	__chantab@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	movl	__maxxnest@GOT(%ebx), %edx
	movl	%eax, 16(%esp)
	movl	12(%eax), %eax
	movl	%edx, 40(%esp)
	movl	%eax, 44(%esp)
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	(%edi), %eax
	movl	%eax, 24(%esp)
	addl	$1, %eax
	cmpl	(%edx), %eax
	movl	%eax, (%edi)
	jge	.L2745
.L2724:
	movl	__xstk@GOT(%ebx), %esi
	movl	(%esi), %edx
	movl	%esi, 36(%esp)
	movl	(%edx,%eax,4), %esi
	movl	12(%esp), %eax
	movl	8(%eax), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	cmpl	4(%esi), %eax
	jg	.L2746
.L2725:
	movl	8(%esi), %ecx
	sall	$2, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	%edx, (%esi)
	leal	(%ecx,%eax), %edi
	movl	%edi, 12(%esi)
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	$0
	.cfi_def_cfa_offset 92
	pushl	%ecx
	.cfi_def_cfa_offset 96
	call	memset@PLT
	movl	28(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	12(%esi), %ebp
	movl	8(%eax), %edi
	leal	31(%edi), %edx
	sarl	$5, %edx
	testl	%edx, %edx
	jle	.L2728
	leal	0(%ebp,%edx,4), %ecx
	movl	%ebp, %eax
	.p2align 4,,10
	.p2align 3
.L2727:
	movl	$-1, (%eax)
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	.L2727
.L2728:
	movl	__masktab@GOT(%ebx), %eax
	movl	%edi, %ecx
	andl	$31, %ecx
	movl	(%eax,%ecx,4), %eax
	movl	28(%esp), %ecx
	andl	%eax, -4(%ebp,%edx,4)
	movl	(%ecx), %eax
	movl	%eax, 24(%esp)
	addl	$1, %eax
	movl	%eax, (%ecx)
	movl	40(%esp), %ecx
	cmpl	(%ecx), %eax
	jge	.L2747
.L2729:
	movl	36(%esp), %ecx
	movl	(%ecx), %ecx
	movl	(%ecx,%eax,4), %ebp
	cmpl	%edx, 4(%ebp)
	jl	.L2748
.L2730:
	movl	16(%esp), %eax
	movl	8(%ebp), %ecx
	movl	%edi, 0(%ebp)
	movl	16(%eax), %edi
	leal	(%ecx,%edx,4), %edx
	movl	%edx, 12(%ebp)
	testl	%edi, %edi
	je	.L2731
	xorl	%eax, %eax
	movl	%esi, 24(%esp)
	movl	44(%esp), %edi
	movl	%eax, 12(%esp)
	jmp	.L2733
	.p2align 4,,10
	.p2align 3
.L2749:
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
.L2733:
	movl	8(%edi), %eax
	movl	20(%esp), %esi
	addl	$12, %edi
	movl	4(%eax), %eax
	movl	%eax, (%esi)
	movl	-12(%edi), %esi
	movl	52(%esi), %eax
	pushl	8(%esi)
	.cfi_def_cfa_offset 84
	pushl	(%eax)
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	pushl	%ecx
	.cfi_def_cfa_offset 96
	call	__ld_perinst_val@PLT
	popl	%eax
	.cfi_def_cfa_offset 92
	movzbl	(%esi), %eax
	popl	%edx
	.cfi_def_cfa_offset 88
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	8(%esi)
	.cfi_def_cfa_offset 96
	pushl	12(%ebp)
	.cfi_def_cfa_offset 100
	pushl	8(%ebp)
	.cfi_def_cfa_offset 104
	movl	48(%esp), %eax
	pushl	12(%eax)
	.cfi_def_cfa_offset 108
	pushl	8(%eax)
	.cfi_def_cfa_offset 112
	call	__eval_wide_wire@PLT
	movl	48(%esp), %ecx
	addl	$1, 44(%esp)
	movl	44(%esp), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	movl	16(%ecx), %edx
	cmpl	%eax, %edx
	ja	.L2749
	movl	28(%esp), %edi
	movl	24(%esp), %esi
	movl	(%edi), %eax
	movl	%eax, 12(%esp)
	subl	$1, %eax
	testl	%edx, %edx
	movl	%eax, (%edi)
	movl	16(%esp), %edi
	movl	12(%edi), %edi
	je	.L2734
	xorl	%ebp, %ebp
	jmp	.L2737
	.p2align 4,,10
	.p2align 3
.L2751:
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	addl	$1, %ebp
	addl	$12, %edi
	pushl	%ecx
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	pushl	%eax
	.cfi_def_cfa_offset 96
	call	__chg_st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	16(%esp), %eax
	cmpl	%ebp, 16(%eax)
	jbe	.L2750
.L2737:
	movl	8(%edi), %eax
	movl	20(%esp), %ecx
	movl	8(%esi), %edx
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
	movl	(%edi), %eax
	movl	12(%esi), %ecx
	testb	$4, 4(%eax)
	jne	.L2751
	pushl	(%esi)
	.cfi_def_cfa_offset 84
	pushl	%ecx
	.cfi_def_cfa_offset 88
	addl	$1, %ebp
	pushl	%edx
	.cfi_def_cfa_offset 92
	pushl	%eax
	.cfi_def_cfa_offset 96
	addl	$12, %edi
	call	__st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	16(%esp), %eax
	cmpl	%ebp, 16(%eax)
	ja	.L2737
.L2750:
	movl	28(%esp), %eax
	movl	(%eax), %eax
.L2734:
	movl	28(%esp), %ebx
	subl	$1, %eax
	movl	%eax, (%ebx)
	movl	32(%esp), %ebx
	movl	20(%esp), %eax
	movl	%ebx, (%eax)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2745:
	.cfi_restore_state
	call	__grow_xstk@PLT
	movl	28(%esp), %eax
	movl	(%eax), %eax
	jmp	.L2724
	.p2align 4,,10
	.p2align 3
.L2748:
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	call	__chg_xstk_width@PLT
	movl	28(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	8(%eax), %edi
	leal	31(%edi), %edx
	sarl	$5, %edx
	jmp	.L2730
	.p2align 4,,10
	.p2align 3
.L2747:
	call	__grow_xstk@PLT
	movl	12(%esp), %edx
	movl	28(%esp), %eax
	movl	8(%edx), %edi
	movl	(%eax), %eax
	leal	31(%edi), %edx
	sarl	$5, %edx
	jmp	.L2729
	.p2align 4,,10
	.p2align 3
.L2746:
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	call	__chg_xstk_width@PLT
	movl	28(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	8(%eax), %edx
	leal	31(%edx), %eax
	sarl	$5, %eax
	jmp	.L2725
	.p2align 4,,10
	.p2align 3
.L2731:
	movl	28(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	subl	$1, %eax
	jmp	.L2734
	.cfi_endproc
.LFE408:
	.size	__asl_eval_tran_bidchan_vectored_assign, .-__asl_eval_tran_bidchan_vectored_assign
	.p2align 4,,15
	.globl	__asl_eval_tran_stbidchan_vectored_assign
	.type	__asl_eval_tran_stbidchan_vectored_assign, @function
__asl_eval_tran_stbidchan_vectored_assign:
.LFB409:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__idp@GOT(%ebx), %esi
	movl	64(%esp), %eax
	movl	(%esi), %edi
	movl	52(%eax), %edx
	movl	8(%eax), %eax
	movl	%esi, 16(%esp)
	imull	(%edi), %eax
	movl	4(%edx), %edx
	movl	%edi, 28(%esp)
	movl	(%edx,%eax,4), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	__chantab@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	movl	__xspi@GOT(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	12(%eax), %esi
	movl	(%edx), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 20(%esp)
	addl	$1, %eax
	movl	%eax, (%edx)
	movl	__maxxnest@GOT(%ebx), %edx
	cmpl	(%edx), %eax
	jge	.L2769
.L2753:
	movl	__xstk@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %ebp
	movl	(%esi), %eax
	movl	8(%eax), %edx
	leal	0(,%edx,4), %ecx
	leal	31(%ecx), %eax
	sarl	$5, %eax
	cmpl	4(%ebp), %eax
	jg	.L2770
.L2754:
	movl	8(%ebp), %edi
	testl	%edx, %edx
	movl	%ecx, 0(%ebp)
	leal	(%edi,%eax,4), %eax
	movl	%eax, 12(%ebp)
	jle	.L2755
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2756:
	movb	$2, (%edi,%eax)
	movl	(%esi), %edx
	addl	$1, %eax
	cmpl	8(%edx), %eax
	jl	.L2756
.L2755:
	movl	12(%esp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2757
	xorl	%ebp, %ebp
	movl	%edi, 20(%esp)
	.p2align 4,,10
	.p2align 3
.L2758:
	movl	8(%esi), %eax
	movl	(%esi), %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	addl	$1, %ebp
	addl	$12, %esi
	movl	4(%eax), %ecx
	movl	28(%esp), %eax
	movl	(%ecx), %edi
	movl	%ecx, (%eax)
	movl	8(%edx), %eax
	imull	%eax, %edi
	subl	$1, %eax
	movl	%edi, %ecx
	movl	52(%edx), %edi
	addl	(%edi), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	pushl	$0
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	movzbl	(%edx), %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	48(%esp)
	.cfi_def_cfa_offset 96
	call	__eval_stwire@PLT
	movl	44(%esp), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	movl	16(%eax), %eax
	cmpl	%ebp, %eax
	ja	.L2758
	movl	12(%esp), %ecx
	testl	%eax, %eax
	movl	20(%esp), %edi
	movl	12(%ecx), %esi
	je	.L2757
	xorl	%ebp, %ebp
	movl	%ebp, %eax
	movl	%edi, %ebp
	movl	%eax, %edi
	jmp	.L2761
	.p2align 4,,10
	.p2align 3
.L2771:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	addl	$1, %edi
	addl	$12, %esi
	pushl	$0
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__chg_st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %eax
	cmpl	%edi, 16(%eax)
	jbe	.L2757
.L2761:
	movl	8(%esi), %eax
	movl	16(%esp), %ecx
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
	movl	(%esi), %eax
	testb	$4, 4(%eax)
	jne	.L2771
	pushl	8(%eax)
	.cfi_def_cfa_offset 68
	pushl	$0
	.cfi_def_cfa_offset 72
	addl	$1, %edi
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	addl	$12, %esi
	call	__st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %eax
	cmpl	%edi, 16(%eax)
	ja	.L2761
.L2757:
	movl	24(%esp), %eax
	movl	28(%esp), %ebx
	subl	$1, (%eax)
	movl	16(%esp), %eax
	movl	%ebx, (%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2769:
	.cfi_restore_state
	call	__grow_xstk@PLT
	movl	24(%esp), %eax
	movl	(%eax), %eax
	jmp	.L2753
	.p2align 4,,10
	.p2align 3
.L2770:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__chg_xstk_width@PLT
	movl	(%esi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	8(%eax), %edx
	leal	0(,%edx,4), %ecx
	leal	31(%ecx), %eax
	sarl	$5, %eax
	jmp	.L2754
	.cfi_endproc
.LFE409:
	.size	__asl_eval_tran_stbidchan_vectored_assign, .-__asl_eval_tran_stbidchan_vectored_assign
	.p2align 4,,15
	.globl	__asl_eval_htran_wire_1bit
	.type	__asl_eval_htran_wire_1bit, @function
__asl_eval_htran_wire_1bit:
.LFB416:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %edi
	movl	32(%esp), %esi
	leal	8(%esp), %edx
	movl	%gs:20, %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	leal	4(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	movl	%esi, %ecx
	call	asl_loc_ld_vtx_netbit
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testb	$32, 4(%esi)
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %edx
	je	.L2773
	movl	8(%esi), %eax
	movl	68(%esi), %ecx
	imull	(%edx), %eax
	addl	%edi, %eax
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$1, (%eax)
	je	.L2773
.L2772:
	movl	12(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L2781
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2773:
	.cfi_restore_state
	testb	$4, 2(%esi)
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	jne	.L2775
	movl	24(%esi), %ebx
	addl	%eax, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx,%ebx,4)
	jmp	.L2772
	.p2align 4,,10
	.p2align 3
.L2775:
	pushl	%eax
	.cfi_def_cfa_offset 36
	pushl	%ecx
	.cfi_def_cfa_offset 40
	pushl	%edi
	.cfi_def_cfa_offset 44
	pushl	%esi
	.cfi_def_cfa_offset 48
	call	__st_bit@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L2772
.L2781:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE416:
	.size	__asl_eval_htran_wire_1bit, .-__asl_eval_htran_wire_1bit
	.p2align 4,,15
	.globl	__asl_eval_htran_stwire_1bit
	.type	__asl_eval_htran_stwire_1bit, @function
__asl_eval_htran_stwire_1bit:
.LFB418:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %edx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%esp), %esi
	movl	__idp@GOT(%ebx), %eax
	movl	52(%edx), %edi
	movl	(%eax), %ecx
	movl	8(%edx), %eax
	movl	(%edi), %edi
	imull	(%ecx), %eax
	addl	%esi, %eax
	testb	$32, 4(%edx)
	movzbl	(%edi,%eax), %edi
	je	.L2783
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	addl	68(%edx), %eax
	testb	$1, (%eax)
	jne	.L2782
.L2783:
	movl	24(%edx), %eax
	leal	(%esi,%eax,4), %eax
	addl	%ecx, %eax
	movzbl	(%edx), %ecx
	andl	$31, %ecx
	cmpb	$6, %cl
	jne	.L2785
	cmpl	$2, %edi
	je	.L2796
.L2785:
	movl	%edi, %ebx
	movb	%bl, (%eax)
.L2782:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2796:
	.cfi_restore_state
	movzbl	3(%edx), %edx
	movzbl	(%eax), %edi
	movl	__cap_to_stren@GOT(%ebx), %ecx
	shrb	%dl
	andl	$3, %edi
	andl	$3, %edx
	movl	%edi, %ebx
	orb	(%ecx,%edx,4), %bl
	movzbl	%bl, %edi
	jmp	.L2785
	.cfi_endproc
.LFE418:
	.size	__asl_eval_htran_stwire_1bit, .-__asl_eval_htran_stwire_1bit
	.p2align 4,,15
	.globl	__asl_qc_active
	.type	__asl_qc_active, @function
__asl_qc_active:
.LFB421:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	68(%edx), %ecx
	movl	(%eax), %eax
	movl	(%eax), %eax
	imull	8(%edx), %eax
	addl	8(%esp), %eax
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE421:
	.size	__asl_qc_active, .-__asl_qc_active
	.p2align 4,,15
	.globl	__asl_adjust_trireg
	.type	__asl_adjust_trireg, @function
__asl_adjust_trireg:
.LFB424:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	testl	%ebx, %ebx
	jle	.L2798
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	addl	%eax, %ebx
	.p2align 4,,10
	.p2align 3
.L2801:
	cmpb	$2, (%eax)
	jne	.L2800
	movzbl	(%edx), %ecx
	andl	$3, %ecx
	orl	%esi, %ecx
	movb	%cl, (%eax)
.L2800:
	addl	$1, %eax
	addl	$1, %edx
	cmpl	%ebx, %eax
	jne	.L2801
.L2798:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE424:
	.size	__asl_adjust_trireg, .-__asl_adjust_trireg
	.p2align 4,,15
	.globl	__asl_ld_tfrwarg_drvp
	.type	__asl_ld_tfrwarg_drvp, @function
__asl_ld_tfrwarg_drvp:
.LFB425:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	16(%eax), %edx
	movl	(%eax), %eax
	shrl	$11, %eax
	andl	$1048575, %eax
	imull	$28, %eax, %eax
	addl	28(%edx), %eax
	movl	24(%eax), %eax
	ret
	.cfi_endproc
.LFE425:
	.size	__asl_ld_tfrwarg_drvp, .-__asl_ld_tfrwarg_drvp
	.p2align 4,,15
	.globl	__asl_get_perinst_val
	.type	__asl_get_perinst_val, @function
__asl_get_perinst_val:
.LFB426:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	24(%esp), %eax
	movl	16(%esp), %edx
	pushl	%eax
	.cfi_def_cfa_offset 20
	addl	$31, %eax
	pushl	24(%esp)
	.cfi_def_cfa_offset 24
	sarl	$5, %eax
	leal	(%edx,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 28
	pushl	%edx
	.cfi_def_cfa_offset 32
	call	__ld_perinst_val@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE426:
	.size	__asl_get_perinst_val, .-__asl_get_perinst_val
	.p2align 4,,15
	.globl	__asl_wdel_trireg_sched_hiz
	.type	__asl_wdel_trireg_sched_hiz, @function
__asl_wdel_trireg_sched_hiz:
.LFB427:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	68(%esp), %eax
	movl	56(%esp), %edx
	movzbl	64(%esp), %ebp
	movl	60(%esp), %esi
	movl	72(%esp), %edi
	movl	%eax, 20(%esp)
	movl	__new_gateval@GOT(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	36(%edx), %edx
	movl	%esi, 16(%esp)
	movl	$2, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	movl	%ebp, (%eax)
	movzbl	8(%edx), %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	12(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	%edx, %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	orl	%eax, %esi
	je	.L2807
	movl	4(%esp), %esi
	movzbl	3(%esi), %ecx
	movl	__cap_to_stren@GOT(%ebx), %esi
	shrb	%cl
	andl	$3, %ecx
	movl	(%esi,%ecx,4), %ecx
	movl	8(%esp), %esi
	orl	$3, %ecx
	movb	%cl, (%esi)
	movb	%cl, 4(%esp)
	movzbl	%cl, %esi
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	je	.L2821
	movl	__simtime@GOT(%ebx), %ebx
	addl	(%ebx), %eax
	adcl	4(%ebx), %edx
	cmpl	%esi, %ebp
	movl	%edx, %ecx
	movl	%eax, %edx
	je	.L2822
	movzbl	4(%esp), %eax
	movl	28(%edi), %ebx
	xorl	%ecx, %ebx
	movb	%al, 2(%edi)
	movl	24(%edi), %eax
	xorl	%edx, %eax
	orl	%eax, %ebx
	je	.L2807
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_reschedule_1wev.part.5
	.p2align 4,,10
	.p2align 3
.L2821:
	.cfi_restore_state
	cmpl	%esi, %ebp
	jne	.L2818
.L2807:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2818:
	.cfi_restore_state
	movl	__simtime@GOT(%ebx), %ecx
	movl	%esi, 64(%esp)
	movl	%eax, %ebx
	movl	%edx, %esi
	addl	(%ecx), %ebx
	adcl	4(%ecx), %esi
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	movl	12(%esp), %eax
	movl	%edi, %edx
	movl	%ebx, %ecx
	movl	%esi, 60(%esp)
	movl	%ecx, 56(%esp)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_schedule_1wev
	.p2align 4,,10
	.p2align 3
.L2822:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	linkout_tevp
	.cfi_endproc
.LFE427:
	.size	__asl_wdel_trireg_sched_hiz, .-__asl_wdel_trireg_sched_hiz
	.p2align 4,,15
	.globl	__asl_wdel_schd_1wirebit
	.type	__asl_wdel_schd_1wirebit, @function
__asl_wdel_schd_1wirebit:
.LFB429:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	64(%esp), %esi
	movl	52(%esp), %ecx
	movl	56(%esp), %edi
	movl	48(%esp), %eax
	movl	8(%esi), %ebp
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	60(%esp), %ecx
	testl	%ebp, %ebp
	jne	.L2824
	cmpl	%ecx, %edi
	je	.L2823
	movl	__old_gateval@GOT(%ebx), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%ecx, (%edx)
	movl	12(%esp), %ecx
	movl	__new_gateval@GOT(%ebx), %edx
	movl	%ecx, (%edx)
	movl	36(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	12(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ecx
	movl	%eax, %edi
	movl	%edx, %ebp
	addl	(%ecx), %edi
	adcl	4(%ecx), %ebp
	movl	8(%esi), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	je	.L2830
.L2828:
	movzbl	4(%esp), %eax
	movl	28(%esi), %ebx
	xorl	%ebp, %ebx
	movb	%al, 2(%esi)
	movl	24(%esi), %eax
	xorl	%edi, %eax
	orl	%eax, %ebx
	je	.L2823
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %edx
	movl	%ebp, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_reschedule_1wev.part.5
	.p2align 4,,10
	.p2align 3
.L2823:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2824:
	.cfi_restore_state
	movl	__old_gateval@GOT(%ebx), %edx
	movl	%ecx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%ecx, (%edx)
	movl	12(%esp), %ecx
	movl	__new_gateval@GOT(%ebx), %edx
	movl	%ecx, (%edx)
	movl	36(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$31, %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	12(%edx)
	.cfi_def_cfa_offset 64
	call	__get_del@PLT
	movl	__simtime@GOT(%ebx), %ebx
	movl	%eax, %edi
	movl	%edx, %ebp
	addl	(%ebx), %edi
	adcl	4(%ebx), %ebp
	movl	8(%esi), %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %ecx
	testl	%ebx, %ebx
	je	.L2830
	cmpl	%ecx, 4(%esp)
	jne	.L2828
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	linkout_tevp
	.p2align 4,,10
	.p2align 3
.L2830:
	.cfi_restore_state
	movl	4(%esp), %ecx
	movl	%edi, 56(%esp)
	movl	%ebp, 60(%esp)
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	movl	8(%esp), %eax
	movl	%esi, %edx
	movl	%ecx, 64(%esp)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_schedule_1wev
	.cfi_endproc
.LFE429:
	.size	__asl_wdel_schd_1wirebit, .-__asl_wdel_schd_1wirebit
	.p2align 4,,15
	.globl	__asl_schd_scalar_1wev
	.type	__asl_schd_scalar_1wev, @function
__asl_schd_scalar_1wev:
.LFB431:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	movl	__cur_tevp@GOT(%esi), %eax
	movl	24(%ebx), %ecx
	movl	28(%ebx), %edi
	cmpl	(%eax), %ebx
	movl	$0, 48(%ebx)
	je	.L2836
	movl	$0, 44(%ebx)
.L2836:
	movl	%edi, %eax
	movl	__time_hash@GOT(%esi), %edx
	xorl	%ecx, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2842
	xorl	4(%edx), %ecx
	xorl	8(%edx), %edi
	orl	%ecx, %edi
	jne	.L2839
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2843
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
.L2838:
	movl	__new_gateval@GOT(%esi), %eax
	movl	$1, 8(%ebx)
	movl	(%eax), %eax
	movb	%al, 2(%ebx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2839:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_conflict_list
	jmp	.L2838
	.p2align 4,,10
	.p2align 3
.L2842:
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2838
	.p2align 4,,10
	.p2align 3
.L2843:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2838
	.cfi_endproc
.LFE431:
	.size	__asl_schd_scalar_1wev, .-__asl_schd_scalar_1wev
	.p2align 4,,15
	.globl	__asl_schd_1wev
	.type	__asl_schd_1wev, @function
__asl_schd_1wev:
.LFB432:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	movl	__cur_tevp@GOT(%esi), %eax
	movl	24(%ebx), %ecx
	movl	28(%ebx), %edi
	cmpl	(%eax), %ebx
	movl	$0, 48(%ebx)
	je	.L2845
	movl	$0, 44(%ebx)
.L2845:
	movl	%edi, %eax
	movl	__time_hash@GOT(%esi), %edx
	xorl	%ecx, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2851
	xorl	4(%edx), %ecx
	xorl	8(%edx), %edi
	orl	%ecx, %edi
	jne	.L2848
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2852
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
.L2847:
	movl	20(%esp), %eax
	movl	$1, 8(%ebx)
	movl	%eax, 4(%ebx)
	movl	__new_gateval@GOT(%esi), %eax
	movl	(%eax), %eax
	movb	%al, 2(%ebx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2848:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_conflict_list
	jmp	.L2847
	.p2align 4,,10
	.p2align 3
.L2851:
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2847
	.p2align 4,,10
	.p2align 3
.L2852:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2847
	.cfi_endproc
.LFE432:
	.size	__asl_schd_1wev, .-__asl_schd_1wev
	.p2align 4,,15
	.globl	__asl_reschd_1wev
	.type	__asl_reschd_1wev, @function
__asl_reschd_1wev:
.LFB434:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	__new_gateval@GOT(%ebp), %eax
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	movl	%eax, 12(%esp)
	movl	(%eax), %ecx
	movl	28(%ebx), %edx
	movl	24(%ebx), %eax
	xorl	%edi, %edx
	xorl	%esi, %eax
	orl	%eax, %edx
	je	.L2862
	movzbl	2(%ebx), %eax
	cmpl	%ecx, %eax
	je	.L2853
	movl	%ebx, %eax
	call	linkout_tevp
	movl	__cur_tevp@GOT(%ebp), %eax
	movl	%esi, 24(%ebx)
	movl	%edi, 28(%ebx)
	movl	$0, 48(%ebx)
	cmpl	(%eax), %ebx
	je	.L2856
	movl	$0, 44(%ebx)
.L2856:
	movl	%edi, %eax
	movl	__time_hash@GOT(%ebp), %edx
	xorl	%esi, %eax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2863
	xorl	4(%edx), %esi
	xorl	8(%edx), %edi
	orl	%esi, %edi
	jne	.L2859
	movl	16(%edx), %eax
	movl	%edx, 20(%ebx)
	testl	%eax, %eax
	je	.L2864
	movl	%ebx, 44(%eax)
	movl	%eax, 48(%ebx)
	movl	%ebx, 16(%edx)
.L2858:
	movl	12(%esp), %eax
	movl	$1, 8(%ebx)
	movl	(%eax), %eax
	movb	%al, 2(%ebx)
.L2853:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2862:
	.cfi_restore_state
	movb	%cl, 2(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2859:
	.cfi_restore_state
	movl	%ebx, %eax
	call	asl_loc_conflict_list
	jmp	.L2858
	.p2align 4,,10
	.p2align 3
.L2863:
	movl	%eax, %edx
	movl	%ebx, %eax
	call	asl_loc_add_new_heap_time
	movl	%ebx, 16(%eax)
	movl	%ebx, 12(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	jmp	.L2858
	.p2align 4,,10
	.p2align 3
.L2864:
	movl	%ebx, 16(%edx)
	movl	%ebx, 12(%edx)
	jmp	.L2858
	.cfi_endproc
.LFE434:
	.size	__asl_reschd_1wev, .-__asl_reschd_1wev
	.p2align 4,,15
	.globl	__asl_sched_unknown_bit
	.type	__asl_sched_unknown_bit, @function
__asl_sched_unknown_bit:
.LFB435:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	20(%esp), %eax
	pushl	$1
	.cfi_def_cfa_offset 20
	pushl	4(%eax)
	.cfi_def_cfa_offset 24
	pushl	(%eax)
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__schedorassign_unknown_bit@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE435:
	.size	__asl_sched_unknown_bit, .-__asl_sched_unknown_bit
	.p2align 4,,15
	.globl	__asl_bytecmp
	.type	__asl_bytecmp, @function
__asl_bytecmp:
.LFB436:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	pushl	28(%esp)
	.cfi_def_cfa_offset 24
	pushl	28(%esp)
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	memcmp@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE436:
	.size	__asl_bytecmp, .-__asl_bytecmp
	.p2align 4,,15
	.globl	__asl_wordcmp
	.type	__asl_wordcmp, @function
__asl_wordcmp:
.LFB437:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %edx
	movl	12(%esp), %ecx
	movl	16(%esp), %ebx
	testl	%edx, %edx
	jle	.L2873
	movl	(%ebx), %eax
	cmpl	%eax, (%ecx)
	jne	.L2875
	xorl	%eax, %eax
	jmp	.L2871
	.p2align 4,,10
	.p2align 3
.L2872:
	movl	(%ebx,%eax,4), %esi
	cmpl	%esi, (%ecx,%eax,4)
	jne	.L2875
.L2871:
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L2872
.L2873:
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2875:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE437:
	.size	__asl_wordcmp, .-__asl_wordcmp
	.p2align 4,,15
	.globl	__asl_chk_ld_vpiputv_driver
	.type	__asl_chk_ld_vpiputv_driver, @function
__asl_chk_ld_vpiputv_driver:
.LFB438:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %eax
	movl	44(%eax), %edi
	testl	%edi, %edi
	je	.L2877
	movzbl	(%edi), %eax
	movl	%eax, %edx
	andl	$15, %edx
	cmpb	$11, %dl
	jne	.L2877
	movl	__idp@GOT(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	__xspi@GOT(%ebp), %ecx
	movl	%ecx, 24(%esp)
	jmp	.L2880
	.p2align 4,,10
	.p2align 3
.L2900:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	movl	%ebp, %ebx
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__get_npprefloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L2877
	movl	8(%esp), %ecx
	movl	4(%eax), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	movl	(%ecx), %esi
	movl	%eax, (%ecx)
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__ld_vpiputv_driver@PLT
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	movl	24(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%esi, (%ecx)
	je	.L2883
.L2901:
	movl	12(%eax), %esi
	cmpl	$-1, %esi
	je	.L2883
	subl	16(%eax), %esi
	movl	__xspi@GOT(%ebp), %ecx
	leal	1(%esi), %ebx
	movl	%ebx, 12(%esp)
	movl	(%ecx), %ebx
	leal	1(%ebx), %edx
	movl	__maxxnest@GOT(%ebp), %ebx
	movl	%edx, (%ecx)
	cmpl	(%ebx), %edx
	jge	.L2898
.L2884:
	movl	__xstk@GOT(%ebp), %ebx
	addl	$32, %esi
	sarl	$5, %esi
	movl	(%ebx), %ebx
	movl	(%ebx,%edx,4), %edx
	cmpl	4(%edx), %esi
	jg	.L2899
.L2885:
	movl	8(%edx), %ebx
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	leal	(%ebx,%esi,4), %esi
	movl	%esi, 12(%edx)
	movl	12(%esp), %esi
	movl	%esi, (%edx)
	pushl	%esi
	.cfi_def_cfa_offset 68
	pushl	16(%eax)
	.cfi_def_cfa_offset 72
	movl	%eax, 20(%esp)
	movl	12(%esp), %eax
	pushl	8(%eax)
	.cfi_def_cfa_offset 76
	pushl	%ebx
	.cfi_def_cfa_offset 80
	movl	%ebp, %ebx
	call	__rhspsel@PLT
	pushl	%esi
	.cfi_def_cfa_offset 84
	movl	32(%esp), %eax
	pushl	16(%eax)
	.cfi_def_cfa_offset 88
	movl	%eax, 36(%esp)
	movl	28(%esp), %eax
	pushl	12(%eax)
	.cfi_def_cfa_offset 92
	movl	44(%esp), %edx
	pushl	12(%edx)
	.cfi_def_cfa_offset 96
	movl	%edx, 36(%esp)
	call	__rhspsel@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	pushl	%edi
	.cfi_def_cfa_offset 68
	pushl	72(%esp)
	.cfi_def_cfa_offset 72
	movl	12(%esp), %edx
	pushl	8(%edx)
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	__eval_wire@PLT
	movl	36(%esp), %ecx
	movl	24(%edi), %edi
	movl	(%ecx), %eax
	leal	-1(%eax), %edx
	movl	28(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	subl	$1, %edx
	testl	%edi, %edi
	movl	16(%eax), %ebx
	movl	__nchged_i1@GOT(%ebp), %eax
	movl	%edx, (%ecx)
	movl	%ebx, (%eax)
	movl	__nchged_i2@GOT(%ebp), %eax
	movl	%esi, (%eax)
	je	.L2877
.L2887:
	movzbl	(%edi), %eax
	movl	%eax, %edx
	andl	$15, %edx
	cmpb	$11, %dl
	jne	.L2877
.L2880:
	testb	$48, %al
	jne	.L2900
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	movl	%ebp, %ebx
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__ld_vpiputv_driver@PLT
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L2901
	.p2align 4,,10
	.p2align 3
.L2883:
	pushl	%edi
	.cfi_def_cfa_offset 68
	pushl	72(%esp)
	.cfi_def_cfa_offset 72
	movl	%ebp, %ebx
	movl	12(%esp), %eax
	pushl	8(%eax)
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	__eval_wire@PLT
	movl	40(%esp), %eax
	movl	24(%edi), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	(%eax), %edx
	movl	%eax, %ecx
	subl	$1, %edx
	testl	%edi, %edi
	movl	%edx, (%ecx)
	jne	.L2887
.L2877:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2898:
	.cfi_restore_state
	movl	%ebp, %ebx
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	call	__grow_xstk@PLT
	movl	20(%esp), %ecx
	movl	16(%esp), %eax
	movl	(%ecx), %edx
	jmp	.L2884
	.p2align 4,,10
	.p2align 3
.L2899:
	movl	%ecx, 28(%esp)
	movl	%eax, 20(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%ebp, %ebx
	movl	%edx, 32(%esp)
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %ecx
	movl	20(%esp), %eax
	movl	16(%esp), %edx
	jmp	.L2885
	.cfi_endproc
.LFE438:
	.size	__asl_chk_ld_vpiputv_driver, .-__asl_chk_ld_vpiputv_driver
	.p2align 4,,15
	.globl	__asl_chk_dce_cbvc
	.type	__asl_chk_dce_cbvc, @function
__asl_chk_dce_cbvc:
.LFB439:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %esi
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	40(%esi), %ebp
	testl	%ebp, %ebp
	je	.L2902
	movl	__nchged_i1@GOT(%ebx), %eax
	movl	__idp@GOT(%ebx), %edi
	movl	%eax, 12(%esp)
	jmp	.L2927
	.p2align 4,,10
	.p2align 3
.L2904:
	cmpb	$14, %al
	je	.L2960
	cmpb	$13, %al
	jne	.L2902
.L2912:
	cmpb	$0, 3(%ebp)
	jne	.L2910
	movl	(%edi), %eax
	cmpl	%eax, 56(%ebp)
	je	.L2961
.L2910:
	movl	72(%ebp), %ebp
	testl	%ebp, %ebp
	je	.L2902
.L2927:
	movzbl	0(%ebp), %eax
	leal	-11(%eax), %ecx
	cmpb	$1, %cl
	ja	.L2904
	cmpb	$12, %al
	je	.L2905
.L2908:
	cmpb	$0, 3(%ebp)
	jne	.L2910
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 56(%ebp)
	jne	.L2910
	movl	32(%ebp), %eax
	movl	$3, 24(%esp)
	movl	$3, 20(%esp)
	testl	%eax, %eax
	je	.L2914
	cmpb	$0, 2(%esi)
	js	.L2962
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%ebp
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	call	__filter_dce_chg@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L2910
.L2914:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__pvc_call_misctf@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L2912
	.p2align 4,,10
	.p2align 3
.L2961:
	movl	32(%ebp), %eax
	movl	$3, 24(%esp)
	movl	$3, 20(%esp)
	testl	%eax, %eax
	je	.L2924
	movzbl	2(%esi), %ecx
	testb	$4, %cl
	jne	.L2921
	testb	%cl, %cl
	jns	.L2922
	testb	$16, 2(%ebp)
	je	.L2923
.L2922:
	leal	24(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 68
	leal	24(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__scal_stfilter_dce_chg@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L2910
.L2924:
	movl	48(%ebp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movb	$1, 3(%ebp)
	pushl	4(%eax)
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__cbvc_callback@PLT
	movl	48(%ebp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testb	$32, 3(%eax)
	jne	.L2910
	movb	$0, 3(%ebp)
	movl	72(%ebp), %ebp
	testl	%ebp, %ebp
	jne	.L2927
	.p2align 4,,10
	.p2align 3
.L2902:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L2963
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2960:
	.cfi_restore_state
	leal	.LC3@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$11410
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__misc_terr@PLT
	movl	28(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L2912
	cmpl	%eax, 36(%ebp)
	jg	.L2910
	movl	__nchged_i2@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jge	.L2912
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2921:
	testb	%cl, %cl
	jns	.L2964
	testb	$16, 2(%ebp)
	je	.L2926
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%ebp
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	call	__stfilter_dce_chg@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L2924
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2905:
	leal	.LC3@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$11377
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__misc_terr@PLT
	movl	__nchged_i1@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L2908
	cmpl	%eax, 36(%ebp)
	jg	.L2910
	movl	__nchged_i2@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jge	.L2908
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2964:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%ebp
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	call	__filter_dce_chg@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L2924
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2962:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%ebp
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	call	__stfilter_dce_chg@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L2910
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__pvc_call_misctf@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L2912
	.p2align 4,,10
	.p2align 3
.L2926:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	leal	36(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%ebp
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	call	__vccb_vec_standval_filter@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L2924
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2923:
	movzbl	1(%ebp), %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	shrb	$3, %cl
	andl	$1, %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	leal	40(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 84
	leal	40(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 88
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%esi
	.cfi_def_cfa_offset 96
	call	__vccb_scal_standval_filter@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L2924
	jmp	.L2910
.L2963:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE439:
	.size	__asl_chk_dce_cbvc, .-__asl_chk_dce_cbvc
	.p2align 4,,15
	.globl	__asl_process_alloced_nchg
	.type	__asl_process_alloced_nchg, @function
__asl_process_alloced_nchg:
.LFB494:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
#APP
# 14157 "v_aslib.c" 1
	movl %eax, %edi
# 0 "" 2
#NO_APP
	movl	__nchged_delayed_mipd@GOT(%ebx), %eax
	movl	8(%edi), %edx
	movl	$0, (%edi)
	movl	20(%edi), %ebp
	movl	%edx, (%eax)
	movl	24(%edi), %eax
	movl	__idp@GOT(%ebx), %edx
	movl	%eax, (%edx)
	movl	56(%ebp), %edx
	andl	$-9, (%eax,%edx,4)
	movl	12(%edi), %edx
	movl	__nchged_i1@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	__nchged_i2@GOT(%ebx), %eax
	movl	16(%edi), %edx
	movl	%edx, (%eax)
	movl	88(%ebp), %eax
	testl	%eax, %eax
	je	.L2966
	cmpl	$1, 12(%ebp)
	jg	.L2976
.L2967:
#APP
# 14177 "v_aslib.c" 1
	movl __idp, %esi
# 0 "" 2
#NO_APP
	call	*%eax
.L2966:
	movl	92(%ebp), %eax
	testl	%eax, %eax
	je	.L2968
#APP
# 14187 "v_aslib.c" 1
	movl __idp, %esi
# 0 "" 2
#NO_APP
	call	*%eax
.L2968:
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	$32
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__my_free@PLT
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2976:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%ebp
	.cfi_def_cfa_offset 48
	call	__asl_chk_dce_cbvc
	movl	88(%ebp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L2967
	.cfi_endproc
.LFE494:
	.size	__asl_process_alloced_nchg, .-__asl_process_alloced_nchg
	.p2align 4,,15
	.type	asl_loc_record_nchg, @function
asl_loc_record_nchg:
.LFB458:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2978
	movl	12(%edx), %ecx
	movl	__nchged_i1@GOT(%ebx), %edx
	cmpl	$1, 12(%edi)
	movl	%ecx, (%edx)
	movl	16(%ebp), %ecx
	movl	__nchged_i2@GOT(%ebx), %edx
	movl	%ecx, (%edx)
	jg	.L2991
.L2979:
#APP
# 12526 "v_aslib.c" 1
	movl __idp, %esi
# 0 "" 2
#NO_APP
	call	*%eax
.L2978:
	movl	0(%ebp), %eax
	testl	%eax, %eax
	jne	.L2980
	movl	__nchg_futend@GOT(%ebx), %eax
	movl	$1, 0(%ebp)
	movl	$0, 8(%ebp)
	movl	$0, 28(%ebp)
	movl	(%eax), %edx
	movl	%ebp, (%eax)
	movl	%ebp, 28(%edx)
.L2980:
	testb	$1, 6(%edi)
	jne	.L2992
.L2981:
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	56(%edi), %eax
	leal	(%ecx,%eax,4), %edx
	movl	(%edx), %eax
	movl	%eax, %ebp
	andl	$3, %ebp
	cmpl	$3, %ebp
	jne	.L2982
	andl	$-3, %eax
	movl	%eax, (%edx)
	movl	(%ecx), %eax
	leal	(%eax,%eax,2), %ecx
	movl	108(%edi), %eax
	leal	(%eax,%ecx,8), %ecx
	movl	__dv_chgnethdr@GOT(%ebx), %eax
	movl	(%eax), %ebp
	movl	%ecx, (%eax)
	movl	__slotend_action@GOT(%ebx), %eax
	movl	%ebp, 20(%ecx)
	orl	$32, (%eax)
.L2982:
	cmpb	$0, 4(%edi)
	js	.L2993
.L2977:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2991:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__asl_chk_dce_cbvc
	movl	88(%edi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L2979
	.p2align 4,,10
	.p2align 3
.L2993:
	movl	(%edx), %eax
	movl	%eax, %ecx
	andl	$48, %ecx
	cmpl	$48, %ecx
	jne	.L2977
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	andl	$-33, %eax
	movl	%eax, (%edx)
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__add_dp_chglst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L2977
	.p2align 4,,10
	.p2align 3
.L2992:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__add_togglelst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L2981
	.cfi_endproc
.LFE458:
	.size	asl_loc_record_nchg, .-asl_loc_record_nchg
	.p2align 4,,15
	.type	asl_loc_do_qc2_wirestore, @function
asl_loc_do_qc2_wirestore:
.LFB197:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	testb	$1, 3(%eax)
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	jne	.L3035
.L2995:
	movl	12(%esp), %eax
	movl	4(%eax), %ecx
	cmpl	$-1, %ecx
	je	.L2996
	movl	%ecx, %edi
	andl	$31, %ecx
	sarl	$5, %edi
	sall	$2, %edi
.L2997:
	movl	__xspi@GOT(%ebx), %esi
	movl	__maxxnest@GOT(%ebx), %edx
	movl	(%esi), %eax
	addl	$1, %eax
	cmpl	(%edx), %eax
	movl	%eax, (%esi)
	jge	.L3036
.L2999:
	movl	__xstk@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %esi
	movl	4(%esi), %eax
	testl	%eax, %eax
	jle	.L3037
.L3000:
	movl	8(%esi), %edx
	movl	$1, (%esi)
	movl	$1, 20(%esp)
	leal	4(%edx), %eax
	movl	%eax, 12(%esi)
	movl	8(%ebp), %eax
	movl	(%eax,%edi), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, (%edx)
	movl	12(%ebp), %eax
	movl	(%eax,%edi), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, 4(%edx)
.L2998:
	movl	12(%esp), %eax
	xorl	%ebp, %ebp
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L3001
	movl	__idp@GOT(%ebx), %edx
	movl	(%edx), %ebp
	movl	%eax, (%edx)
.L3001:
	movl	16(%esp), %eax
	movzbl	2(%eax), %edx
	testb	%dl, %dl
	js	.L3038
	movl	8(%esi), %eax
	andl	$4, %edx
	movl	(%eax), %eax
	je	.L3010
	movl	12(%esp), %edi
	movl	8(%edi), %edx
	movl	64(%esp), %edi
	testl	%edi, %edi
	je	.L3011
	movl	16(%esp), %edi
	movl	__idp@GOT(%ebx), %ecx
	movl	24(%edi), %edi
	movl	(%ecx), %ecx
	leal	(%ecx,%edi,4), %edi
	movl	16(%esp), %ecx
	testb	$1, 3(%ecx)
	je	.L3012
	movl	%edx, %ecx
	sarl	$5, %edx
	andl	$1, %eax
	leal	(%edi,%edx,4), %edx
	andl	$31, %ecx
	movl	$1, %esi
	sall	%cl, %esi
	sall	%cl, %eax
	movl	(%edx), %ecx
	movl	%esi, %edi
	andl	%ecx, %edi
	cmpl	%edi, %eax
	je	.L3009
	notl	%esi
	andl	%ecx, %esi
	orl	%esi, %eax
	movl	%eax, (%edx)
.L3014:
	movl	64(%esp), %edx
	movl	16(%esp), %eax
	call	asl_loc_record_nchg
	.p2align 4,,10
	.p2align 3
.L3009:
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	.L3017
	movl	__xspi@GOT(%ebx), %eax
	subl	$1, (%eax)
.L3017:
	testl	%ebp, %ebp
	je	.L2994
	movl	__idp@GOT(%ebx), %eax
	movl	%ebp, (%eax)
.L2994:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3010:
	.cfi_restore_state
	movl	12(%esi), %edx
	movl	16(%esp), %esi
	movl	(%edx), %edx
	movl	24(%esi), %ecx
	addl	%edx, %edx
	orl	%edx, %eax
	movl	__idp@GOT(%ebx), %edx
	movl	(%edx), %edx
	leal	(%edx,%ecx,4), %edx
	movl	64(%esp), %ecx
	testl	%ecx, %ecx
	je	.L3016
	cmpl	%eax, (%edx)
	je	.L3009
	movl	%eax, (%edx)
	movl	64(%esp), %edx
	movl	%esi, %eax
	call	asl_loc_record_nchg
	jmp	.L3009
	.p2align 4,,10
	.p2align 3
.L3038:
	movl	__xspi@GOT(%ebx), %ecx
	movl	__maxxnest@GOT(%ebx), %edx
	movl	(%ecx), %eax
	addl	$1, %eax
	cmpl	(%edx), %eax
	movl	%eax, (%ecx)
	jge	.L3039
.L3003:
	movl	__xstk@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %edi
	movl	4(%edi), %eax
	testl	%eax, %eax
	jle	.L3040
.L3004:
	movl	8(%edi), %edx
	movl	%ecx, 28(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	movl	$4, (%edi)
	leal	4(%edx), %eax
	movl	%eax, 12(%edi)
	pushl	$54
	.cfi_def_cfa_offset 72
	pushl	%esi
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%edx, 40(%esp)
	call	__st_standval@PLT
	movl	32(%esp), %edi
	movl	__idp@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	testb	$4, 2(%edi)
	movl	24(%edi), %esi
	movl	(%eax), %eax
	leal	(%eax,%esi,4), %eax
	jne	.L3041
	movl	64(%esp), %esi
	movzbl	(%edx), %edx
	testl	%esi, %esi
	je	.L3008
	cmpb	%dl, (%eax)
	je	.L3007
	movb	%dl, (%eax)
	movl	64(%esp), %edx
	movl	16(%esp), %eax
	movl	%ecx, 12(%esp)
	call	asl_loc_record_nchg
	movl	12(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L3007:
	subl	$1, (%ecx)
	jmp	.L3009
	.p2align 4,,10
	.p2align 3
.L2996:
	movl	12(%esp), %eax
	cmpl	$-1, 8(%eax)
	je	.L3019
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	jmp	.L2997
	.p2align 4,,10
	.p2align 3
.L3035:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	(%ecx)
	.cfi_def_cfa_offset 72
	pushl	12(%ecx)
	.cfi_def_cfa_offset 76
	pushl	8(%ecx)
	.cfi_def_cfa_offset 80
	call	__cnvt_xzs_to_2state@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L2995
	.p2align 4,,10
	.p2align 3
.L3036:
	movl	%ecx, 20(%esp)
	call	__grow_xstk@PLT
	movl	(%esi), %eax
	movl	20(%esp), %ecx
	jmp	.L2999
	.p2align 4,,10
	.p2align 3
.L3041:
	movl	12(%esp), %esi
	movzbl	(%edx), %edx
	addl	8(%esi), %eax
	movl	64(%esp), %esi
	testl	%esi, %esi
	je	.L3008
	cmpb	%dl, (%eax)
	je	.L3007
	movb	%dl, (%eax)
	movl	64(%esp), %edx
	movl	%edi, %eax
	movl	%ecx, 12(%esp)
	call	asl_loc_record_nchg
	movl	12(%esp), %ecx
	jmp	.L3007
	.p2align 4,,10
	.p2align 3
.L3012:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	24(%esp), %ecx
	pushl	8(%ecx)
	.cfi_def_cfa_offset 76
	movl	12(%esi), %ecx
	pushl	(%ecx)
	.cfi_def_cfa_offset 80
	movl	%eax, %ecx
	movl	%edi, %eax
	call	asl_loc_chg_vec_lhsbsel
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L3009
	jmp	.L3014
	.p2align 4,,10
	.p2align 3
.L3037:
	movl	%ecx, 20(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	20(%esp), %ecx
	jmp	.L3000
	.p2align 4,,10
	.p2align 3
.L3039:
	movl	%ecx, 24(%esp)
	call	__grow_xstk@PLT
	movl	24(%esp), %ecx
	movl	(%ecx), %eax
	jmp	.L3003
	.p2align 4,,10
	.p2align 3
.L3019:
	movl	%ebp, %esi
	movl	$0, 20(%esp)
	jmp	.L2998
	.p2align 4,,10
	.p2align 3
.L3008:
	movb	%dl, (%eax)
	jmp	.L3007
	.p2align 4,,10
	.p2align 3
.L3016:
	movl	%eax, (%edx)
	jmp	.L3009
	.p2align 4,,10
	.p2align 3
.L3040:
	movl	%ecx, 24(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	24(%esp), %ecx
	jmp	.L3004
	.p2align 4,,10
	.p2align 3
.L3011:
	movl	12(%esi), %ecx
	pushl	(%ecx)
	.cfi_def_cfa_offset 68
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	28(%esp)
	.cfi_def_cfa_offset 80
	call	__st_bit@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3009
	.cfi_endproc
.LFE197:
	.size	asl_loc_do_qc2_wirestore, .-asl_loc_do_qc2_wirestore
	.p2align 4,,15
	.type	asl_loc_do_1bit_wireforce, @function
asl_loc_do_1bit_wireforce:
.LFB192:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edi
	leal	(%ecx,%edi), %edx
	cmpl	$-1, %edi
	cmovne	%edx, %ecx
	movl	68(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	leal	(%edx,%ecx,8), %esi
	testb	$1, (%esi)
	je	.L3044
	movl	20(%esi), %edx
	testl	%edx, %edx
	je	.L3044
	movl	%eax, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	__dcelst_off@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %eax
.L3044:
	movl	52(%esp), %edx
	movl	%edi, 8(%esi)
	movl	__idp@GOT(%ebx), %edi
	movl	56(%esp), %ecx
	movl	%eax, 12(%esi)
	movl	16(%eax), %eax
	movl	%edx, 4(%esi)
	movl	(%edi), %edx
	testl	%ecx, %ecx
	movl	%edx, 16(%esi)
	movl	60(%esp), %edx
	movl	%edx, 20(%esi)
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	je	.L3045
	movl	64(%esp), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%ecx, (%edi)
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	__eval_assign_rhsexpr@PLT
	popl	%ecx
	.cfi_def_cfa_offset 60
	pushl	80(%esp)
	.cfi_def_cfa_offset 64
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	%ebp, %eax
	call	asl_loc_do_qc2_wirestore
	movl	__xspi@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	subl	$1, (%eax)
	movl	20(%esi), %eax
	orb	$1, (%esi)
	testl	%eax, %eax
	jne	.L3046
.L3049:
	movl	56(%esp), %eax
	movl	%eax, (%edi)
.L3042:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3046:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__dcelst_on@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3049
	.p2align 4,,10
	.p2align 3
.L3045:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	__eval_assign_rhsexpr@PLT
	popl	%edx
	.cfi_def_cfa_offset 60
	pushl	80(%esp)
	.cfi_def_cfa_offset 64
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	%ebp, %eax
	call	asl_loc_do_qc2_wirestore
	movl	__xspi@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	subl	$1, (%eax)
	movl	20(%esi), %eax
	orb	$1, (%esi)
	testl	%eax, %eax
	je	.L3042
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__dcelst_on@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE192:
	.size	asl_loc_do_1bit_wireforce, .-asl_loc_do_1bit_wireforce
	.p2align 4,,15
	.type	asl_loc_do_qc_wireforce, @function
asl_loc_do_qc_wireforce:
.LFB187:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	movl	%eax, 12(%esp)
	leal	36(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%esi, %ebp
	movl	%ebx, 8(%esp)
	movl	%gs:20, %ebx
	movl	%ebx, 44(%esp)
	xorl	%ebx, %ebx
	pushl	%eax
	.cfi_def_cfa_offset 84
	movl	%esi, %ebx
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%edx
	.cfi_def_cfa_offset 96
	call	__get_qc_wirrng@PLT
	movl	28(%esp), %ecx
	movl	__idp@GOT(%ebp), %ebx
	movl	%eax, %esi
	movl	16(%ecx), %edx
	movl	(%ebx), %ebp
	movl	%ebx, 44(%esp)
	movl	12(%edx), %edx
	movl	0(%ebp), %eax
	movl	(%edx), %edx
	movl	(%edx,%eax,4), %ecx
	movl	%ecx, 32(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%esi, %esi
	je	.L3081
	movl	8(%esp), %ecx
	movl	28(%esp), %eax
	testl	%ecx, %ecx
	movl	%esi, (%eax)
	movl	(%esi), %eax
	je	.L3061
	movl	4(%esi), %edx
	cmpl	$1, 12(%edx)
	jle	.L3061
	movl	84(%esp), %edx
	movl	(%esi,%edx,4), %edx
	movl	%edx, 8(%esp)
.L3061:
	movl	40(%esp), %edx
	imull	8(%edx), %eax
	testb	$4, 2(%edx)
	movl	%eax, 20(%esp)
	je	.L3082
	movl	36(%esp), %ebx
	cmpl	32(%esp), %ebx
	jg	.L3064
	movl	%ebx, %eax
	jmp	.L3067
	.p2align 4,,10
	.p2align 3
.L3083:
	movl	36(%esp), %eax
	movl	40(%esp), %edx
.L3067:
	movl	%ebx, %ecx
	subl	%eax, %ecx
	cmpl	$-1, %edi
	movl	%ecx, %eax
	leal	(%ecx,%edi), %ecx
	cmovne	%ecx, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	16(%esp)
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	pushl	32(%esp)
	.cfi_def_cfa_offset 100
	pushl	%esi
	.cfi_def_cfa_offset 104
	pushl	%eax
	.cfi_def_cfa_offset 108
	pushl	%ebx
	.cfi_def_cfa_offset 112
	addl	$1, %ebx
	movl	44(%esp), %eax
	movl	52(%esp), %ecx
	call	asl_loc_do_1bit_wireforce
	movl	64(%esp), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	cmpl	%ebx, %eax
	jge	.L3083
	movl	36(%esp), %edi
	cmpl	%edi, %eax
	je	.L3063
.L3064:
	movl	$-1, %edi
.L3063:
	movl	24(%esp), %ebx
	movl	__num_vpi_force_cbs@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jle	.L3068
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	%edi
	.cfi_def_cfa_offset 92
	pushl	52(%esp)
	.cfi_def_cfa_offset 96
	call	__find_call_force_cbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
.L3068:
	movl	24(%esp), %eax
	movl	__vpi_force_cb_always@GOT(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3084
.L3069:
	testl	%esi, %esi
	je	.L3059
	movl	28(%esp), %eax
	movl	%ebp, (%eax)
.L3059:
	movl	44(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3085
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3082:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	16(%esp)
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	pushl	32(%esp)
	.cfi_def_cfa_offset 100
	pushl	%esi
	.cfi_def_cfa_offset 104
	pushl	%edi
	.cfi_def_cfa_offset 108
	pushl	$-1
	.cfi_def_cfa_offset 112
	movl	$-1, %edi
	movl	52(%esp), %ecx
	movl	44(%esp), %eax
	call	asl_loc_do_1bit_wireforce
	addl	$32, %esp
	.cfi_def_cfa_offset 80
	jmp	.L3063
	.p2align 4,,10
	.p2align 3
.L3084:
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	$1
	.cfi_def_cfa_offset 88
	pushl	%edi
	.cfi_def_cfa_offset 92
	pushl	52(%esp)
	.cfi_def_cfa_offset 96
	movl	40(%esp), %ebx
	call	__cb_all_rfs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L3069
	.p2align 4,,10
	.p2align 3
.L3081:
	xorl	%ebp, %ebp
	jmp	.L3061
.L3085:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE187:
	.size	asl_loc_do_qc_wireforce, .-asl_loc_do_qc_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_wireforce
	.type	__asl_exec_qc_wireforce, @function
__asl_exec_qc_wireforce:
.LFB183:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	20(%esp), %ebx
	movl	12(%esp), %ecx
	movl	16(%eax), %edx
	movl	4(%edx), %edx
	movl	%ebx, 12(%esp)
	movl	16(%esp), %ebx
	movl	%ebx, 8(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	asl_loc_do_qc_wireforce
	.cfi_endproc
.LFE183:
	.size	__asl_exec_qc_wireforce, .-__asl_exec_qc_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_wireforce_concat
	.type	__asl_exec_qc_wireforce_concat, @function
__asl_exec_qc_wireforce_concat:
.LFB185:
	.cfi_startproc
	movl	20(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	16(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	12(%esp), %ecx
	jmp	asl_loc_do_qc_wireforce
	.cfi_endproc
.LFE185:
	.size	__asl_exec_qc_wireforce_concat, .-__asl_exec_qc_wireforce_concat
	.p2align 4,,15
	.globl	__asl_assign_qcaf
	.type	__asl_assign_qcaf, @function
__asl_assign_qcaf:
.LFB215:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %edx
	movl	%edi, 4(%esp)
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	68(%esp), %esi
	movl	52(%edx), %eax
	testb	$4, 1(%edx)
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %ebp
	movl	8(%eax), %eax
	je	.L3090
	movl	__idp@GOT(%edi), %ecx
	movl	60(%edx), %edx
	testl	%esi, %esi
	movl	(%ecx), %edi
	movl	%ecx, 12(%esp)
	movl	%edx, (%ecx)
	movl	%edi, 8(%esp)
	je	.L3091
	movl	4(%edx), %ecx
	cmpl	$1, 12(%ecx)
	jle	.L3091
	movl	72(%esp), %esi
	movl	(%edx,%esi,4), %esi
.L3091:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	20(%esp), %ebx
	call	__eval_assign_rhsexpr@PLT
	movl	%eax, %edi
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 32(%esp)
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	40(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	movl	36(%esp), %ebx
	call	__get_qc_wirrng@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%eax, %ecx
	je	.L3113
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L3114
	movl	12(%esp), %eax
	movl	%ecx, (%eax)
.L3095:
	testl	%esi, %esi
	je	.L3093
	movl	4(%ecx), %eax
	cmpl	$1, 12(%eax)
	jle	.L3093
	movl	72(%esp), %eax
	movl	(%ecx,%eax,4), %esi
.L3093:
	movl	16(%esp), %eax
	movl	24(%esp), %ebx
	movl	8(%eax), %edx
	imull	(%ecx), %edx
	cmpl	20(%esp), %ebx
	jl	.L3096
	addl	%ebx, %edx
	leal	(%edx,%edx,2), %ebp
	sall	$3, %ebp
	jmp	.L3097
	.p2align 4,,10
	.p2align 3
.L3115:
	movl	16(%esp), %eax
.L3097:
	movl	68(%eax), %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	movl	%edi, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 80
	subl	$1, %ebx
	addl	%ebp, %edx
	subl	$24, %ebp
	call	asl_loc_do_qc2_wirestore
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	cmpl	%ebx, 20(%esp)
	jle	.L3115
.L3096:
	movl	4(%esp), %eax
	movl	__xspi@GOT(%eax), %eax
	subl	$1, (%eax)
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L3089
	movl	12(%esp), %esi
	movl	%eax, (%esi)
.L3089:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3116
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3090:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	20(%esp), %ebx
	call	__eval_assign_rhsexpr@PLT
	movl	%eax, %edi
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 32(%esp)
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	40(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	movl	36(%esp), %ebp
	movl	%ebp, %ebx
	call	__get_qc_wirrng@PLT
	movl	%eax, 40(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3117
	movl	4(%esp), %eax
	movl	__idp@GOT(%eax), %eax
	movl	%eax, 12(%esp)
	movl	(%eax), %ecx
	jmp	.L3093
	.p2align 4,,10
	.p2align 3
.L3117:
	movl	__idp@GOT(%ebp), %eax
	movl	%eax, 12(%esp)
.L3099:
	movl	12(%esp), %ebx
	movl	8(%esp), %ecx
	movl	(%ebx), %eax
	movl	%ecx, (%ebx)
	movl	%eax, 8(%esp)
	jmp	.L3095
.L3113:
	movl	12(%esp), %eax
	movl	(%eax), %ecx
	jmp	.L3093
.L3116:
	call	__stack_chk_fail_local
.L3114:
	movl	%ecx, 8(%esp)
	jmp	.L3099
	.cfi_endproc
.LFE215:
	.size	__asl_assign_qcaf, .-__asl_assign_qcaf
	.p2align 4,,15
	.globl	__asl_assign_scalar_qcaf
	.type	__asl_assign_scalar_qcaf, @function
__asl_assign_scalar_qcaf:
.LFB216:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %edx
	movl	68(%esp), %ecx
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	52(%edx), %eax
	testb	$4, 1(%edx)
	movl	%ecx, 8(%esp)
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %ebp
	movl	8(%eax), %eax
	je	.L3119
	movl	__idp@GOT(%ebx), %edi
	movl	60(%edx), %edx
	testl	%ecx, %ecx
	movl	(%edi), %esi
	movl	%edx, (%edi)
	je	.L3120
	movl	4(%edx), %ecx
	cmpl	$1, 12(%ecx)
	jle	.L3120
	movl	72(%esp), %ecx
	movl	(%edx,%ecx,4), %ecx
	movl	%ecx, 8(%esp)
.L3120:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__eval_assign_rhsexpr@PLT
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 32(%esp)
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	40(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	call	__get_qc_wirrng@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%eax, %edx
	je	.L3140
	testl	%esi, %esi
	je	.L3141
	movl	%eax, (%edi)
.L3124:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L3122
	movl	4(%edx), %eax
	cmpl	$1, 12(%eax)
	jle	.L3122
	movl	72(%esp), %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, 8(%esp)
.L3122:
	movl	16(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	movl	8(%eax), %ecx
	imull	(%edx), %ecx
	movl	68(%eax), %edx
	pushl	20(%esp)
	.cfi_def_cfa_offset 80
	leal	(%ecx,%ecx,2), %ecx
	leal	(%edx,%ecx,8), %edx
	movl	28(%esp), %ecx
	call	asl_loc_do_qc2_wirestore
	movl	__xspi@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	subl	$1, (%eax)
	testl	%esi, %esi
	je	.L3118
	movl	%esi, (%edi)
.L3118:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3142
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3119:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__eval_assign_rhsexpr@PLT
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 32(%esp)
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	44(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	40(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	call	__get_qc_wirrng@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%eax, %esi
	movl	__idp@GOT(%ebx), %edi
	jne	.L3126
.L3140:
	movl	(%edi), %edx
	jmp	.L3122
.L3141:
	movl	%eax, %esi
	.p2align 4,,10
	.p2align 3
.L3126:
	movl	(%edi), %eax
	movl	%esi, %edx
	movl	%esi, (%edi)
	movl	%eax, %esi
	jmp	.L3124
.L3142:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE216:
	.size	__asl_assign_scalar_qcaf, .-__asl_assign_scalar_qcaf
	.p2align 4,,15
	.globl	asl_loc_bit1_vpi_or_tran_wireforce
	.type	asl_loc_bit1_vpi_or_tran_wireforce, @function
asl_loc_bit1_vpi_or_tran_wireforce:
.LFB191:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %eax
	movl	64(%esp), %edx
	movl	48(%esp), %ebp
	movl	__xspi@GOT(%ebx), %edi
	movl	__maxxnest@GOT(%ebx), %ecx
	addl	%eax, %edx
	cmpl	$-1, 64(%esp)
	movl	68(%ebp), %esi
	movl	%ecx, 8(%esp)
	cmovne	%edx, %eax
	leal	(%eax,%eax,2), %eax
	leal	(%esi,%eax,8), %eax
	orb	$1, (%eax)
	movl	(%edi), %eax
	addl	$1, %eax
	cmpl	(%ecx), %eax
	movl	%eax, (%edi)
	jge	.L3176
.L3145:
	movl	__xstk@GOT(%ebx), %esi
	movl	(%esi), %edx
	movl	%esi, 4(%esp)
	movl	(%edx,%eax,4), %esi
	movl	4(%esi), %ecx
	testl	%ecx, %ecx
	jle	.L3177
.L3146:
	movl	8(%esi), %eax
	movl	$1, (%esi)
	leal	4(%eax), %edx
	movl	%edx, 12(%esi)
	movl	68(%esp), %edx
	testl	%edx, %edx
	je	.L3147
	movl	68(%esp), %ecx
	movl	68(%esp), %edx
	andl	$31, %ecx
	sarl	$5, %edx
	movl	%ecx, (%esp)
	movl	52(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	(%ecx,%edx,4), %edx
	movzbl	(%esp), %ecx
	shrl	%cl, %edx
	movl	56(%esp), %ecx
	andl	$1, %edx
	movl	%edx, (%eax)
	movl	12(%esp), %edx
	movl	(%ecx,%edx,4), %edx
	movzbl	(%esp), %ecx
	shrl	%cl, %edx
	andl	$1, %edx
	testb	$1, 3(%ebp)
	movl	%edx, 4(%eax)
	jne	.L3178
.L3149:
	movzbl	2(%ebp), %eax
	testb	%al, %al
	js	.L3179
.L3150:
	movl	8(%esi), %edx
	testb	$4, %al
	movl	(%edx), %edx
	je	.L3158
	movl	72(%esp), %eax
	testl	%eax, %eax
	je	.L3159
	movl	__idp@GOT(%ebx), %ecx
	testb	$1, 3(%ebp)
	movl	24(%ebp), %eax
	movl	(%ecx), %ecx
	leal	(%ecx,%eax,4), %eax
	je	.L3160
	movl	64(%esp), %ecx
	andl	$1, %edx
	movl	$1, %ebx
	andl	$31, %ecx
	sall	%cl, %ebx
	sall	%cl, %edx
	movl	64(%esp), %ecx
	movl	%ebx, %esi
	sarl	$5, %ecx
	leal	(%eax,%ecx,4), %eax
	movl	(%eax), %ecx
	andl	%ecx, %esi
	cmpl	%esi, %edx
	je	.L3173
	notl	%ebx
	andl	%ebx, %ecx
	orl	%ecx, %edx
	movl	%edx, (%eax)
.L3172:
	movl	72(%esp), %edx
	movl	%ebp, %eax
	call	asl_loc_record_nchg
	movl	(%edi), %eax
	subl	$1, %eax
	movl	%eax, (%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3147:
	.cfi_restore_state
	movl	52(%esp), %ecx
	movl	(%ecx), %edx
	movl	56(%esp), %ecx
	andl	$1, %edx
	movl	%edx, (%eax)
	movl	(%ecx), %edx
	andl	$1, %edx
	testb	$1, 3(%ebp)
	movl	%edx, 4(%eax)
	je	.L3149
.L3178:
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	(%esi)
	.cfi_def_cfa_offset 56
	pushl	12(%esi)
	.cfi_def_cfa_offset 60
	pushl	8(%esi)
	.cfi_def_cfa_offset 64
	call	__cnvt_xzs_to_2state@PLT
	movzbl	2(%ebp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testb	%al, %al
	jns	.L3150
.L3179:
	movl	(%edi), %eax
	movl	8(%esp), %ecx
	addl	$1, %eax
	cmpl	(%ecx), %eax
	movl	%eax, (%edi)
	jge	.L3180
.L3151:
	movl	4(%esp), %ecx
	movl	(%ecx), %edx
	movl	(%edx,%eax,4), %ecx
	movl	4(%ecx), %eax
	testl	%eax, %eax
	jle	.L3181
.L3152:
	movl	8(%ecx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	$4, (%ecx)
	leal	4(%eax), %edx
	movl	%edx, 12(%ecx)
	pushl	$54
	.cfi_def_cfa_offset 56
	pushl	%esi
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	movl	%eax, 16(%esp)
	call	__st_standval@PLT
	movl	__idp@GOT(%ebx), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testb	$4, 2(%ebp)
	movl	24(%ebp), %ecx
	movl	(%esp), %eax
	movl	(%edx), %edx
	leal	(%edx,%ecx,4), %edx
	jne	.L3182
	movl	72(%esp), %ecx
	movzbl	(%eax), %eax
	testl	%ecx, %ecx
	je	.L3156
.L3175:
	cmpb	%al, (%edx)
	je	.L3155
	movb	%al, (%edx)
	movl	72(%esp), %edx
	movl	%ebp, %eax
	call	asl_loc_record_nchg
.L3155:
	movl	(%edi), %eax
	subl	$1, %eax
	subl	$1, %eax
	movl	%eax, (%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3158:
	.cfi_restore_state
	movl	12(%esi), %eax
	movl	24(%ebp), %ecx
	movl	(%eax), %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%eax,%ecx,4), %eax
	movl	72(%esp), %ecx
	testl	%ecx, %ecx
	je	.L3163
	cmpl	%edx, (%eax)
	jne	.L3183
.L3173:
	movl	(%edi), %eax
.L3157:
	subl	$1, %eax
	movl	%eax, (%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3176:
	.cfi_restore_state
	call	__grow_xstk@PLT
	movl	(%edi), %eax
	jmp	.L3145
	.p2align 4,,10
	.p2align 3
.L3177:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3146
	.p2align 4,,10
	.p2align 3
.L3182:
	movl	72(%esp), %ebx
	addl	64(%esp), %edx
	movzbl	(%eax), %eax
	testl	%ebx, %ebx
	jne	.L3175
.L3156:
	movb	%al, (%edx)
	jmp	.L3155
	.p2align 4,,10
	.p2align 3
.L3183:
	movl	%edx, (%eax)
	jmp	.L3172
	.p2align 4,,10
	.p2align 3
.L3160:
	movl	12(%esi), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	8(%ebp)
	.cfi_def_cfa_offset 60
	pushl	(%ecx)
	.cfi_def_cfa_offset 64
	movl	%edx, %ecx
	movl	80(%esp), %edx
	call	asl_loc_chg_vec_lhsbsel
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L3172
	jmp	.L3173
	.p2align 4,,10
	.p2align 3
.L3180:
	call	__grow_xstk@PLT
	movl	(%edi), %eax
	jmp	.L3151
	.p2align 4,,10
	.p2align 3
.L3163:
	movl	%edx, (%eax)
	jmp	.L3173
	.p2align 4,,10
	.p2align 3
.L3181:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%ecx
	.cfi_def_cfa_offset 64
	movl	%ecx, 16(%esp)
	call	__chg_xstk_width@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	(%esp), %ecx
	jmp	.L3152
	.p2align 4,,10
	.p2align 3
.L3159:
	movl	12(%esi), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 52
	pushl	%edx
	.cfi_def_cfa_offset 56
	pushl	72(%esp)
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	__st_bit@PLT
	movl	(%edi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3157
	.cfi_endproc
.LFE191:
	.size	asl_loc_bit1_vpi_or_tran_wireforce, .-asl_loc_bit1_vpi_or_tran_wireforce
	.p2align 4,,15
	.type	asl_loc_do_qc_wire_intran_force, @function
asl_loc_do_qc_wire_intran_force:
.LFB190:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__idp@GOT(%ebx), %edi
	movl	%ecx, 12(%esp)
	movl	56(%esp), %ecx
	movl	(%edi), %eax
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	testl	%eax, %eax
	je	.L3191
	movl	52(%esp), %eax
	movl	%eax, (%edi)
.L3185:
	movl	8(%esi), %edx
	imull	(%eax), %edx
	testb	$4, 2(%esi)
	jne	.L3186
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
.L3196:
	pushl	%edx
	.cfi_def_cfa_offset 68
	leal	68(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 72
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	asl_loc_bit1_vpi_or_tran_wireforce
	movl	__num_vpi_force_cbs@GOT(%ebx), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jle	.L3188
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__find_call_force_cbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L3188:
	movl	__vpi_force_cb_always@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	.L3197
.L3189:
	movl	52(%esp), %eax
	testl	%eax, %eax
	je	.L3184
	movl	8(%esp), %eax
	movl	%eax, (%edi)
.L3184:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3186:
	.cfi_restore_state
	subl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 52
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	%ebp
	.cfi_def_cfa_offset 64
	jmp	.L3196
	.p2align 4,,10
	.p2align 3
.L3197:
	.cfi_restore_state
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$1
	.cfi_def_cfa_offset 56
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__cb_all_rfs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3189
	.p2align 4,,10
	.p2align 3
.L3191:
	movl	8(%esp), %eax
	movl	$0, 8(%esp)
	jmp	.L3185
	.cfi_endproc
.LFE190:
	.size	asl_loc_do_qc_wire_intran_force, .-asl_loc_do_qc_wire_intran_force
	.p2align 4,,15
	.type	asl_loc_do_qc_tran_wireforce, @function
asl_loc_do_qc_tran_wireforce:
.LFB188:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%gs:20, %eax
	movl	%eax, 44(%esp)
	xorl	%eax, %eax
	leal	36(%esp), %eax
	movl	%ecx, (%esp)
	movl	80(%esp), %edi
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%edx
	.cfi_def_cfa_offset 96
	call	__get_qc_wirrng@PLT
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	$0, 24(%esp)
	movl	(%esp), %ecx
	je	.L3199
	movl	%eax, %esi
	movl	__idp@GOT(%ebx), %eax
	testl	%edi, %edi
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	%edx, 24(%esp)
	je	.L3199
	movl	4(%esi), %eax
	cmpl	$1, 12(%eax)
	jle	.L3199
	movl	84(%esp), %eax
	movl	(%esi,%eax,4), %edi
.L3199:
	movl	40(%esp), %eax
	movl	36(%esp), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	%ecx, 20(%esp)
	movl	40(%esp), %esi
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%edx, 8(%esp)
	pushl	4(%eax)
	.cfi_def_cfa_offset 92
	pushl	8(%eax)
	.cfi_def_cfa_offset 96
	call	__eval_assign_rhsexpr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	12(%esp), %ecx
	movl	%eax, %ebp
	movl	$0, %eax
	movl	(%esp), %edx
	cmpl	$-1, %ecx
	cmove	%eax, %ecx
	movl	4(%esp), %eax
	testb	$4, 2(%eax)
	je	.L3224
	movl	__idp@GOT(%ebx), %eax
	cmpl	%esi, %edx
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	jg	.L3202
	sall	$5, %eax
	subl	%edx, %ecx
	movl	%eax, 20(%esp)
	leal	-1(%edx), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L3206:
	movl	16(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	leal	(%eax,%esi), %ecx
	movl	8(%ebp), %eax
	movl	%ecx, %edx
	andl	$31, %ecx
	sarl	$5, %edx
	movl	(%eax,%edx,4), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, 4(%esp)
	pushl	%edi
	.cfi_def_cfa_offset 88
	pushl	16(%esp)
	.cfi_def_cfa_offset 92
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	shrl	%cl, %edx
	andl	$1, %edx
	pushl	%edx
	.cfi_def_cfa_offset 96
	movl	16(%esp), %ecx
	movl	%esi, %edx
	movl	20(%esp), %eax
	call	asl_loc_do_qc_wire_intran_force
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%edi, %edi
	je	.L3204
	cmpl	%esi, 12(%edi)
	je	.L3205
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	$3188
	.cfi_def_cfa_offset 92
	pushl	40(%esp)
	.cfi_def_cfa_offset 96
	call	__misc_terr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
.L3205:
	addl	20(%esp), %edi
.L3204:
	subl	$1, %esi
	cmpl	12(%esp), %esi
	jne	.L3206
.L3202:
	movl	__xspi@GOT(%ebx), %eax
	subl	$1, (%eax)
	movl	__num_vpi_force_cbs@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jle	.L3207
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	40(%esp)
	.cfi_def_cfa_offset 92
	pushl	52(%esp)
	.cfi_def_cfa_offset 96
	call	__find_call_force_cbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
.L3207:
	movl	__vpi_force_cb_always@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	.L3225
.L3208:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L3198
	movl	__idp@GOT(%ebx), %eax
	movl	24(%esp), %ebx
	movl	%ebx, (%eax)
.L3198:
	movl	44(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3226
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3225:
	.cfi_restore_state
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	pushl	$1
	.cfi_def_cfa_offset 88
	pushl	40(%esp)
	.cfi_def_cfa_offset 92
	pushl	52(%esp)
	.cfi_def_cfa_offset 96
	call	__cb_all_rfs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L3208
	.p2align 4,,10
	.p2align 3
.L3224:
	movl	8(%ebp), %eax
	movl	%ecx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	sarl	$5, %edx
	andl	$31, %ecx
	movl	(%eax,%edx,4), %eax
	pushl	%edi
	.cfi_def_cfa_offset 88
	pushl	16(%esp)
	.cfi_def_cfa_offset 92
	movl	12(%ebp), %esi
	shrl	%cl, %eax
	movl	(%esi,%edx,4), %edx
	andl	$1, %eax
	shrl	%cl, %edx
	movl	%eax, %ecx
	andl	$1, %edx
	pushl	%edx
	.cfi_def_cfa_offset 96
	movl	20(%esp), %eax
	movl	$-1, %edx
	call	asl_loc_do_qc_wire_intran_force
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L3202
.L3226:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE188:
	.size	asl_loc_do_qc_tran_wireforce, .-asl_loc_do_qc_tran_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wireforce
	.type	__asl_exec_qc_tran_wireforce, @function
__asl_exec_qc_tran_wireforce:
.LFB184:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	20(%esp), %ebx
	movl	12(%esp), %ecx
	movl	16(%eax), %edx
	movl	4(%edx), %edx
	movl	%ebx, 12(%esp)
	movl	16(%esp), %ebx
	movl	%ebx, 8(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	asl_loc_do_qc_tran_wireforce
	.cfi_endproc
.LFE184:
	.size	__asl_exec_qc_tran_wireforce, .-__asl_exec_qc_tran_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wireforce_concat
	.type	__asl_exec_qc_tran_wireforce_concat, @function
__asl_exec_qc_tran_wireforce_concat:
.LFB186:
	.cfi_startproc
	movl	20(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	16(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	12(%esp), %ecx
	jmp	asl_loc_do_qc_tran_wireforce
	.cfi_endproc
.LFE186:
	.size	__asl_exec_qc_tran_wireforce_concat, .-__asl_exec_qc_tran_wireforce_concat
	.p2align 4,,15
	.type	asl_loc_assign_1mdrwire, @function
asl_loc_assign_1mdrwire:
.LFB214:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	cmpb	$0, 2(%esi)
	movl	%edx, 4(%esp)
	js	.L3259
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__load_mdrwire@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testb	$32, 4(%esi)
	movl	%eax, %edi
	jne	.L3260
.L3241:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	%esi
	.cfi_def_cfa_offset 72
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	32(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__ld_addr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	.L3242
	movl	8(%esi), %eax
	movl	20(%esp), %edx
	movl	8(%edi), %ebp
	movl	12(%edi), %ecx
	cmpl	$32, %eax
	jle	.L3261
	addl	$31, %eax
	movl	%ecx, 12(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	sarl	$5, %eax
	sall	$2, %eax
	movl	%eax, 12(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	12(%esp), %ecx
	jne	.L3244
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	12(%esp)
	.cfi_def_cfa_offset 72
	pushl	32(%esp)
	.cfi_def_cfa_offset 76
	pushl	%ecx
	.cfi_def_cfa_offset 80
	movl	%ecx, 24(%esp)
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	8(%esp), %ecx
	je	.L3239
	.p2align 4,,10
	.p2align 3
.L3244:
	pushl	(%edi)
	.cfi_def_cfa_offset 68
	pushl	%ecx
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L3240:
	movl	4(%esp), %edx
	movl	%esi, %eax
	call	asl_loc_record_nchg
.L3239:
	movl	__xspi@GOT(%ebx), %eax
	subl	$1, (%eax)
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3262
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3260:
	.cfi_restore_state
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	12(%eax)
	.cfi_def_cfa_offset 72
	pushl	8(%eax)
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__correct_forced_newwireval@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3241
	jmp	.L3239
	.p2align 4,,10
	.p2align 3
.L3259:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__stload_mdrwire@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testb	$32, 4(%esi)
	movl	8(%eax), %edi
	jne	.L3263
.L3232:
	movl	__idp@GOT(%ebx), %eax
	movl	24(%esi), %edx
	movl	8(%esi), %ebp
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movzbl	(%esi), %eax
	andl	$31, %eax
	cmpb	$6, %al
	je	.L3264
.L3234:
	movl	4(%esp), %ecx
	testl	%ecx, %ecx
	je	.L3237
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%edx, 24(%esp)
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	8(%esp), %edx
	je	.L3239
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3240
	.p2align 4,,10
	.p2align 3
.L3261:
	movl	0(%ebp), %eax
	cmpl	%eax, (%edx)
	jne	.L3244
	movl	24(%esp), %eax
	movl	(%ecx), %edx
	cmpl	%edx, (%eax)
	jne	.L3244
	jmp	.L3239
	.p2align 4,,10
	.p2align 3
.L3264:
	testl	%ebp, %ebp
	jle	.L3234
	movl	__cap_to_stren@GOT(%ebx), %ecx
	xorl	%eax, %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	.p2align 4,,10
	.p2align 3
.L3236:
	cmpb	$2, (%edi,%eax)
	jne	.L3235
	movzbl	3(%esi), %edx
	movl	8(%esp), %ecx
	movzbl	(%ecx,%eax), %ecx
	shrb	%dl
	movl	%edx, %ebp
	movl	12(%esp), %edx
	andl	$3, %ebp
	andl	$3, %ecx
	orb	(%edx,%ebp,4), %cl
	movb	%cl, (%edi,%eax)
	movl	8(%esi), %ebp
.L3235:
	addl	$1, %eax
	cmpl	%eax, %ebp
	jg	.L3236
	movl	8(%esp), %edx
	jmp	.L3234
	.p2align 4,,10
	.p2align 3
.L3263:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	12(%eax)
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__correct_forced_newwireval@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3232
	jmp	.L3239
	.p2align 4,,10
	.p2align 3
.L3242:
	pushl	(%edi)
	.cfi_def_cfa_offset 68
	pushl	12(%edi)
	.cfi_def_cfa_offset 72
	pushl	8(%edi)
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3239
	.p2align 4,,10
	.p2align 3
.L3237:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	call	memcpy@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3239
.L3262:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE214:
	.size	asl_loc_assign_1mdrwire, .-asl_loc_assign_1mdrwire
	.section	.rodata.str1.4
	.align 4
.LC20:
	.string	"attempted release of %s in instance %s failed%s"
	.text
	.p2align 4,,15
	.type	asl_loc_do_qc_wirerelease, @function
asl_loc_do_qc_wirerelease:
.LFB202:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4172, %esp
	.cfi_def_cfa_offset 4192
	movl	%eax, 24(%esp)
	movl	%edx, 8(%esp)
	movl	%gs:20, %eax
	movl	%eax, 4156(%esp)
	xorl	%eax, %eax
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4196
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4200
	leal	60(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4204
	pushl	%edi
	.cfi_def_cfa_offset 4208
	call	__get_qc_wirrng@PLT
	movl	%eax, 20(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 4192
	testl	%eax, %eax
	movl	__idp@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	je	.L3303
	movl	(%eax), %ecx
	movl	8(%esp), %edi
	movl	%ecx, 12(%esp)
	movl	%eax, %ecx
	movl	4(%esp), %eax
	testl	%edi, %edi
	movl	%eax, (%ecx)
	je	.L3267
	movl	4(%eax), %edx
	cmpl	$1, 12(%edx)
	jle	.L3267
	movl	(%eax,%esi,4), %ecx
	movl	%ecx, 8(%esp)
.L3267:
	movl	52(%esp), %esi
	movl	(%eax), %ebp
	movl	8(%esi), %edi
	movl	%esi, 28(%esp)
	imull	%edi, %ebp
	testl	%edi, %edi
	jle	.L3268
	movl	68(%esi), %eax
	leal	0(%ebp,%ebp,2), %edx
	testb	$1, (%eax,%edx,8)
	jne	.L3269
	leal	3(%ebp,%ebp,2), %edx
	movl	%eax, %esi
	leal	(%eax,%edx,8), %ecx
	xorl	%edx, %edx
	jmp	.L3270
	.p2align 4,,10
	.p2align 3
.L3271:
	movzbl	(%ecx), %eax
	addl	$24, %ecx
	testb	$1, %al
	jne	.L3300
.L3270:
	addl	$1, %edx
	cmpl	%edx, %edi
	jne	.L3271
.L3268:
	movl	$100, %eax
	movl	$1847602464, 59(%esp)
	movl	$1768038511, 63(%esp)
	movw	%ax, 75(%esp)
	movl	__xs@GOT(%ebx), %eax
	leal	59(%esp), %edi
	movl	$1713402740, 67(%esp)
	movl	$1701016175, 71(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 4204
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msg2_cur_blditree@PLT
	movl	%eax, %esi
	popl	%eax
	.cfi_def_cfa_offset 4204
	movl	__xs2@GOT(%ebx), %eax
	popl	%edx
	.cfi_def_cfa_offset 4200
	pushl	32(%esp)
	.cfi_def_cfa_offset 4204
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msgexpr_tostr@PLT
	movl	%edi, (%esp)
	pushl	%esi
	.cfi_def_cfa_offset 4212
	pushl	%eax
	.cfi_def_cfa_offset 4216
	leal	.LC20@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4220
	pushl	$465
	.cfi_def_cfa_offset 4224
	call	__sgfinform@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 4192
	movl	4(%esp), %ecx
	testl	%ecx, %ecx
	je	.L3265
.L3302:
	movl	16(%esp), %eax
	movl	12(%esp), %ebx
	movl	%ebx, (%eax)
.L3265:
	movl	4156(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3304
	addl	$4172, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3300:
	.cfi_restore_state
	movl	%esi, %eax
.L3269:
	movl	44(%esp), %esi
	cmpl	48(%esp), %esi
	jl	.L3274
	addl	%esi, %ebp
	movl	$1, 20(%esp)
	movl	28(%esp), %edx
	leal	0(%ebp,%ebp,2), %edi
	sall	$3, %edi
	jmp	.L3278
	.p2align 4,,10
	.p2align 3
.L3305:
	andl	$-2, %eax
	movb	%al, 0(%ebp)
	movl	20(%ebp), %eax
	testl	%eax, %eax
	je	.L3276
	subl	$12, %esp
	.cfi_def_cfa_offset 4204
	pushl	%eax
	.cfi_def_cfa_offset 4208
	call	__dcelst_off@PLT
	movl	68(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 4192
.L3276:
	subl	$1, %esi
	subl	$24, %edi
	cmpl	%esi, 48(%esp)
	movl	$0, 20(%ebp)
	jg	.L3277
.L3306:
	movl	68(%edx), %eax
.L3278:
	leal	(%eax,%edi), %ebp
	movzbl	0(%ebp), %eax
	testb	$1, %al
	jne	.L3305
	subl	$1, %esi
	subl	$24, %edi
	cmpl	%esi, 48(%esp)
	movl	$0, 20(%esp)
	jle	.L3306
.L3277:
	movl	%edx, %eax
	movl	8(%esp), %edx
	call	asl_loc_assign_1mdrwire
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	.L3307
.L3279:
	movl	48(%esp), %esi
	cmpl	%esi, 44(%esp)
	movl	$-1, %eax
	cmovne	%eax, %esi
	movl	__num_vpi_rel_cbs@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jle	.L3281
	subl	$8, %esp
	.cfi_def_cfa_offset 4200
	pushl	%esi
	.cfi_def_cfa_offset 4204
	pushl	64(%esp)
	.cfi_def_cfa_offset 4208
	call	__find_call_rel_cbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 4192
.L3281:
	movl	__vpi_rel_cb_always@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	.L3308
.L3282:
	movl	4(%esp), %eax
	testl	%eax, %eax
	jne	.L3302
	jmp	.L3265
	.p2align 4,,10
	.p2align 3
.L3303:
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	jmp	.L3267
	.p2align 4,,10
	.p2align 3
.L3307:
	movl	__xs@GOT(%ebx), %eax
	movl	$1931488544, 59(%esp)
	leal	59(%esp), %edi
	movl	$543518063, 63(%esp)
	movl	$1937008994, 67(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 4204
	movl	$1919903264, 83(%esp)
	movl	$6579555, 87(%esp)
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msg2_cur_blditree@PLT
	popl	%ebp
	.cfi_def_cfa_offset 4204
	movl	%eax, %esi
	popl	%eax
	.cfi_def_cfa_offset 4200
	movl	__xs2@GOT(%ebx), %eax
	pushl	32(%esp)
	.cfi_def_cfa_offset 4204
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msgexpr_tostr@PLT
	movl	%edi, (%esp)
	pushl	%esi
	.cfi_def_cfa_offset 4212
	pushl	%eax
	.cfi_def_cfa_offset 4216
	leal	.LC20@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4220
	pushl	$465
	.cfi_def_cfa_offset 4224
	call	__sgfinform@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 4192
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	.L3279
	movl	16(%esp), %ecx
	movl	(%ecx), %edi
	movl	%eax, (%ecx)
	movl	%edi, 12(%esp)
	jmp	.L3279
	.p2align 4,,10
	.p2align 3
.L3308:
	subl	$4, %esp
	.cfi_def_cfa_offset 4196
	pushl	$0
	.cfi_def_cfa_offset 4200
	pushl	%esi
	.cfi_def_cfa_offset 4204
	pushl	64(%esp)
	.cfi_def_cfa_offset 4208
	call	__cb_all_rfs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 4192
	jmp	.L3282
	.p2align 4,,10
	.p2align 3
.L3274:
	movl	8(%esp), %edx
	movl	28(%esp), %eax
	call	asl_loc_assign_1mdrwire
	jmp	.L3279
.L3304:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE202:
	.size	asl_loc_do_qc_wirerelease, .-asl_loc_do_qc_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_wirerelease
	.type	__asl_exec_qc_wirerelease, @function
__asl_exec_qc_wirerelease:
.LFB198:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	20(%eax), %eax
	jmp	asl_loc_do_qc_wirerelease
	.cfi_endproc
.LFE198:
	.size	__asl_exec_qc_wirerelease, .-__asl_exec_qc_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_wirerelease_concat
	.type	__asl_exec_qc_wirerelease_concat, @function
__asl_exec_qc_wirerelease_concat:
.LFB200:
	.cfi_startproc
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	jmp	asl_loc_do_qc_wirerelease
	.cfi_endproc
.LFE200:
	.size	__asl_exec_qc_wirerelease_concat, .-__asl_exec_qc_wirerelease_concat
	.p2align 4,,15
	.type	asl_loc_do_qc_wire_intran_release, @function
asl_loc_do_qc_wire_intran_release:
.LFB205:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$4172, %esp
	.cfi_def_cfa_offset 4192
	movl	4192(%esp), %esi
	movl	__idp@GOT(%ebx), %edi
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 28(%esp)
	movl	%esi, 36(%esp)
	movl	%edi, 24(%esp)
	movl	4196(%esp), %esi
	movl	(%edi), %edi
	movl	%esi, 40(%esp)
	movl	%edi, 12(%esp)
	movl	%gs:20, %esi
	movl	%esi, 4156(%esp)
	xorl	%esi, %esi
	movl	(%edi), %edi
	movl	8(%eax), %esi
	imull	%esi, %edi
	testl	%esi, %esi
	jle	.L3312
	movl	68(%eax), %ecx
	leal	(%edi,%edi,2), %eax
	leal	(%ecx,%eax,8), %ebp
	movl	%ecx, 44(%esp)
	movzbl	0(%ebp), %eax
	andl	$1, %eax
	movb	%al, 35(%esp)
	jne	.L3313
	leal	3(%edi,%edi,2), %eax
	leal	(%ecx,%eax,8), %edx
	xorl	%eax, %eax
	jmp	.L3314
	.p2align 4,,10
	.p2align 3
.L3315:
	movzbl	(%edx), %ecx
	addl	$24, %edx
	andl	$1, %ecx
	jne	.L3313
.L3314:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	.L3315
.L3312:
	movl	__xs@GOT(%ebx), %eax
	movl	$100, %esi
	movl	$1847602464, 59(%esp)
	movw	%si, 75(%esp)
	movl	$1768038511, 63(%esp)
	leal	59(%esp), %edi
	movl	$1713402740, 67(%esp)
	movl	$1701016175, 71(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 4204
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msg2_cur_blditree@PLT
	popl	%ebp
	.cfi_def_cfa_offset 4204
	movl	%eax, %esi
	popl	%eax
	.cfi_def_cfa_offset 4200
	movl	__xs2@GOT(%ebx), %eax
	pushl	36(%esp)
	.cfi_def_cfa_offset 4204
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msgexpr_tostr@PLT
	movl	%edi, (%esp)
	pushl	%esi
	.cfi_def_cfa_offset 4212
	pushl	%eax
	.cfi_def_cfa_offset 4216
	leal	.LC20@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4220
	pushl	$465
	.cfi_def_cfa_offset 4224
	call	__sgfinform@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 4192
.L3311:
	movl	4156(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3337
	addl	$4172, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3313:
	.cfi_restore_state
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	.L3327
	movl	24(%esp), %edx
	movl	%eax, (%edx)
.L3317:
	movl	16(%esp), %eax
	cmpl	$-1, %eax
	je	.L3318
	addl	%eax, %edi
	movl	44(%esp), %esi
	leal	(%edi,%edi,2), %eax
	leal	(%esi,%eax,8), %ebp
	movzbl	0(%ebp), %eax
	andl	$1, %eax
	movb	%al, 35(%esp)
.L3318:
	cmpb	$0, 35(%esp)
	jne	.L3319
	movl	40(%esp), %edx
	movl	20(%esp), %eax
	call	asl_loc_assign_1mdrwire
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	.L3338
	movl	24(%esp), %ebp
	movl	12(%esp), %eax
	leal	59(%esp), %edi
	movl	$1931488544, 59(%esp)
	movl	$543518063, 63(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 4204
	movl	$1937008994, 79(%esp)
	movl	$1919903264, 83(%esp)
	movl	%eax, 0(%ebp)
	movl	__xs@GOT(%ebx), %eax
	movl	$6579555, 87(%esp)
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msg2_cur_blditree@PLT
	movl	%eax, %esi
	popl	%eax
	.cfi_def_cfa_offset 4204
	movl	__xs2@GOT(%ebx), %eax
	popl	%edx
	.cfi_def_cfa_offset 4200
	pushl	36(%esp)
	.cfi_def_cfa_offset 4204
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msgexpr_tostr@PLT
	movl	%edi, (%esp)
	pushl	%esi
	.cfi_def_cfa_offset 4212
	pushl	%eax
	.cfi_def_cfa_offset 4216
	leal	.LC20@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4220
	pushl	$465
	.cfi_def_cfa_offset 4224
	call	__sgfinform@PLT
	movl	0(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	68(%esp), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4192
	movl	%eax, 0(%ebp)
	jmp	.L3322
	.p2align 4,,10
	.p2align 3
.L3319:
	andb	$-2, 0(%ebp)
	movl	40(%esp), %edx
	movl	20(%esp), %eax
	call	asl_loc_assign_1mdrwire
.L3322:
	movl	__num_vpi_rel_cbs@GOT(%ebx), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	jle	.L3323
	subl	$8, %esp
	.cfi_def_cfa_offset 4200
	pushl	24(%esp)
	.cfi_def_cfa_offset 4204
	pushl	32(%esp)
	.cfi_def_cfa_offset 4208
	call	__find_call_rel_cbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 4192
.L3323:
	movl	__vpi_rel_cb_always@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L3339
.L3324:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L3311
	movl	24(%esp), %ebx
	movl	%eax, (%ebx)
	jmp	.L3311
	.p2align 4,,10
	.p2align 3
.L3338:
	movl	__xs@GOT(%ebx), %eax
	movl	$1931488544, 59(%esp)
	leal	59(%esp), %edi
	movl	$543518063, 63(%esp)
	movl	$1937008994, 67(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 4204
	movl	$1919903264, 83(%esp)
	movl	$6579555, 87(%esp)
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msg2_cur_blditree@PLT
	movl	%eax, %esi
	popl	%eax
	.cfi_def_cfa_offset 4204
	movl	__xs2@GOT(%ebx), %eax
	popl	%edx
	.cfi_def_cfa_offset 4200
	pushl	36(%esp)
	.cfi_def_cfa_offset 4204
	pushl	(%eax)
	.cfi_def_cfa_offset 4208
	call	__msgexpr_tostr@PLT
	movl	%edi, (%esp)
	pushl	%esi
	.cfi_def_cfa_offset 4212
	pushl	%eax
	.cfi_def_cfa_offset 4216
	leal	.LC20@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 4220
	pushl	$465
	.cfi_def_cfa_offset 4224
	call	__sgfinform@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 4192
	jmp	.L3322
	.p2align 4,,10
	.p2align 3
.L3339:
	subl	$4, %esp
	.cfi_def_cfa_offset 4196
	pushl	$0
	.cfi_def_cfa_offset 4200
	pushl	24(%esp)
	.cfi_def_cfa_offset 4204
	pushl	32(%esp)
	.cfi_def_cfa_offset 4208
	call	__cb_all_rfs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 4192
	jmp	.L3324
	.p2align 4,,10
	.p2align 3
.L3327:
	movl	$0, 12(%esp)
	jmp	.L3317
.L3337:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE205:
	.size	asl_loc_do_qc_wire_intran_release, .-asl_loc_do_qc_wire_intran_release
	.p2align 4,,15
	.type	asl_loc_do_qc_tran_wirerelease, @function
asl_loc_do_qc_tran_wirerelease:
.LFB203:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %edi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%ecx, %esi
	movl	%eax, 12(%esp)
	movl	%gs:20, %eax
	movl	%eax, 44(%esp)
	xorl	%eax, %eax
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	call	__get_qc_wirrng@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	je	.L3341
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%ebp, (%eax)
	movl	%ecx, 24(%esp)
.L3341:
	testl	%edi, %edi
	je	.L3342
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	cmpl	$1, 12(%edx)
	jle	.L3342
	movl	(%eax,%esi,4), %edi
.L3342:
	movl	40(%esp), %eax
	testb	$4, 2(%eax)
	movl	%eax, 8(%esp)
	je	.L3364
	movl	__idp@GOT(%ebx), %edx
	movl	36(%esp), %eax
	movl	32(%esp), %esi
	movl	(%edx), %edx
	cmpl	%esi, %eax
	movl	4(%edx), %edx
	movl	12(%edx), %edx
	jg	.L3344
	subl	$1, %eax
	sall	$5, %edx
	movl	%eax, 16(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L3348:
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	%esi, %edx
	pushl	%edi
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	movl	28(%esp), %ecx
	movl	24(%esp), %eax
	call	asl_loc_do_qc_wire_intran_release
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%edi, %edi
	je	.L3346
	cmpl	%esi, 12(%edi)
	je	.L3347
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	$3871
	.cfi_def_cfa_offset 92
	pushl	40(%esp)
	.cfi_def_cfa_offset 96
	call	__misc_terr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 80
.L3347:
	addl	20(%esp), %edi
.L3346:
	subl	$1, %esi
	cmpl	16(%esp), %esi
	jne	.L3348
.L3344:
	testl	%ebp, %ebp
	je	.L3340
	movl	__idp@GOT(%ebx), %eax
	movl	24(%esp), %ecx
	movl	%ecx, (%eax)
.L3340:
	movl	44(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3365
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3364:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	$-1, %edx
	pushl	%edi
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	movl	28(%esp), %ecx
	movl	24(%esp), %eax
	call	asl_loc_do_qc_wire_intran_release
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	jmp	.L3344
.L3365:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE203:
	.size	asl_loc_do_qc_tran_wirerelease, .-asl_loc_do_qc_tran_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wirerelease
	.type	__asl_exec_qc_tran_wirerelease, @function
__asl_exec_qc_tran_wirerelease:
.LFB199:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	20(%eax), %eax
	jmp	asl_loc_do_qc_tran_wirerelease
	.cfi_endproc
.LFE199:
	.size	__asl_exec_qc_tran_wirerelease, .-__asl_exec_qc_tran_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wirerelease_concat
	.type	__asl_exec_qc_tran_wirerelease_concat, @function
__asl_exec_qc_tran_wirerelease_concat:
.LFB201:
	.cfi_startproc
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	jmp	asl_loc_do_qc_tran_wirerelease
	.cfi_endproc
.LFE201:
	.size	__asl_exec_qc_tran_wirerelease_concat, .-__asl_exec_qc_tran_wirerelease_concat
	.p2align 4,,15
	.type	asl_loc_do_qc2_regstore.isra.17, @function
asl_loc_do_qc2_regstore.isra.17:
.LFB525:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%ecx, 12(%esp)
	xorl	%ecx, %ecx
	cmpl	$-1, (%edx)
	movl	%edx, 8(%esp)
	movl	64(%esp), %edi
	je	.L3369
	movl	__xspi@GOT(%ebx), %esi
	movl	__maxxnest@GOT(%ebx), %ecx
	movl	(%esi), %eax
	addl	$1, %eax
	cmpl	(%ecx), %eax
	movl	%eax, (%esi)
	jge	.L3416
.L3370:
	movl	__xstk@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	movl	(%ecx,%eax,4), %esi
	movl	8(%ebp), %ecx
	leal	31(%ecx), %eax
	sarl	$5, %eax
	cmpl	4(%esi), %eax
	jg	.L3417
.L3371:
	movl	8(%esi), %edx
	movl	%ecx, (%esi)
	leal	(%edx,%eax,4), %eax
	movl	%eax, 12(%esi)
	pushl	%ecx
	.cfi_def_cfa_offset 68
	movl	12(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 72
	pushl	8(%edi)
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	call	__rhspsel@PLT
	pushl	8(%ebp)
	.cfi_def_cfa_offset 84
	movl	28(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 88
	pushl	12(%edi)
	.cfi_def_cfa_offset 92
	movl	%esi, %edi
	pushl	12(%esi)
	.cfi_def_cfa_offset 96
	call	__rhspsel@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	movl	$1, %ecx
.L3369:
	movl	12(%esp), %eax
	xorl	%esi, %esi
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3372
	movl	__idp@GOT(%ebx), %edx
	movl	(%edx), %esi
	movl	%eax, (%edx)
.L3372:
	movzbl	1(%ebp), %eax
	andl	$126, %eax
	cmpb	$4, %al
	je	.L3418
	testb	%al, %al
	jne	.L3376
	movl	12(%edi), %eax
	movl	8(%edi), %edx
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	testl	%eax, %eax
	je	.L3377
	movl	__idp@GOT(%ebx), %eax
	movl	24(%ebp), %edi
	movl	(%eax), %eax
	leal	(%eax,%edi,4), %edi
	movl	8(%ebp), %eax
	cmpl	$32, %eax
	movl	%eax, 16(%esp)
	jg	.L3378
	movl	(%edx), %eax
	cmpl	%eax, (%edi)
	je	.L3379
	movl	%eax, (%edi)
	movl	8(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%edi)
.L3380:
	movl	68(%esp), %edx
	movl	%ebp, %eax
	movl	%ecx, 8(%esp)
	call	asl_loc_record_nchg
	movl	8(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L3375:
	testl	%ecx, %ecx
	je	.L3388
	movl	__xspi@GOT(%ebx), %eax
	subl	$1, (%eax)
.L3388:
	testl	%esi, %esi
	je	.L3368
	movl	__idp@GOT(%ebx), %eax
	movl	%esi, (%eax)
.L3368:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3376:
	.cfi_restore_state
	cmpb	$8, %al
	je	.L3419
	cmpb	$10, %al
	jne	.L3375
	movl	8(%edi), %eax
	movl	(%eax), %eax
	jmp	.L3415
	.p2align 4,,10
	.p2align 3
.L3417:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__chg_xstk_width@PLT
	movl	8(%ebp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	leal	31(%ecx), %eax
	sarl	$5, %eax
	jmp	.L3371
	.p2align 4,,10
	.p2align 3
.L3416:
	call	__grow_xstk@PLT
	movl	(%esi), %eax
	jmp	.L3370
	.p2align 4,,10
	.p2align 3
.L3418:
	movl	12(%edi), %eax
	movl	8(%edi), %edx
	movl	(%eax), %eax
	addl	%eax, %eax
	orl	(%edx), %eax
.L3415:
	movl	__idp@GOT(%ebx), %edx
	movl	24(%ebp), %edi
	movl	(%edx), %edx
	leal	(%edx,%edi,4), %edx
	movl	68(%esp), %edi
	testl	%edi, %edi
	je	.L3387
	cmpl	(%edx), %eax
	je	.L3375
	movl	%ecx, 8(%esp)
	movl	%eax, (%edx)
	movl	%ebp, %eax
	movl	68(%esp), %edx
	call	asl_loc_record_nchg
	movl	8(%esp), %ecx
	jmp	.L3375
	.p2align 4,,10
	.p2align 3
.L3378:
	movl	16(%esp), %eax
	movl	%ecx, 28(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	addl	$31, %eax
	sarl	$5, %eax
	sall	$2, %eax
	movl	%eax, 16(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%edx, 40(%esp)
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %edx
	movl	28(%esp), %ecx
	addl	%edi, %edx
	testl	%eax, %eax
	movl	%edx, 20(%esp)
	movl	24(%esp), %edx
	jne	.L3420
	movl	%ecx, 24(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	16(%esp)
	.cfi_def_cfa_offset 72
	pushl	28(%esp)
	.cfi_def_cfa_offset 76
	pushl	20(%esp)
	.cfi_def_cfa_offset 80
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	24(%esp), %ecx
	je	.L3375
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	subl	$4, %eax
	andl	$31, %edx
	movl	%eax, 24(%esp)
	movl	__masktab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 16(%esp)
	.p2align 4,,10
	.p2align 3
.L3390:
	movl	%ecx, 28(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	16(%esp)
	.cfi_def_cfa_offset 72
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	movl	32(%esp), %edi
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	memmove@PLT
	movl	%edi, %eax
	movl	40(%esp), %edi
	movl	32(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %ecx
	andl	%edx, (%eax,%edi)
	jmp	.L3380
	.p2align 4,,10
	.p2align 3
.L3387:
	movl	%eax, (%edx)
	jmp	.L3375
	.p2align 4,,10
	.p2align 3
.L3419:
	movl	68(%esp), %eax
	movl	8(%edi), %edx
	testl	%eax, %eax
	je	.L3385
	movl	__idp@GOT(%ebx), %eax
	movl	24(%ebp), %edi
	movl	(%eax), %eax
	leal	(%eax,%edi,4), %edi
	movl	8(%ebp), %eax
	cmpl	$32, %eax
	movl	%eax, 8(%esp)
	jg	.L3386
	movl	(%edx), %eax
	cmpl	%eax, (%edi)
	je	.L3380
	movl	%eax, (%edi)
	jmp	.L3380
	.p2align 4,,10
	.p2align 3
.L3377:
	movl	%ecx, 12(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 68
	pushl	12(%esp)
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %ecx
	jmp	.L3375
	.p2align 4,,10
	.p2align 3
.L3386:
	movl	8(%esp), %eax
	movl	%ecx, 16(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	addl	$31, %eax
	sarl	$5, %eax
	sall	$2, %eax
	movl	%eax, 24(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%edx, 28(%esp)
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	je	.L3375
	movl	%ecx, 12(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	24(%esp)
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	memmove@PLT
	movl	24(%esp), %edx
	movl	__masktab@GOT(%ebx), %eax
	andl	$31, %edx
	movl	(%eax,%edx,4), %eax
	movl	36(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %ecx
	andl	%eax, -4(%edi,%edx)
	jmp	.L3380
	.p2align 4,,10
	.p2align 3
.L3379:
	movl	8(%esp), %eax
	movl	(%eax), %eax
	cmpl	%eax, 4(%edi)
	je	.L3380
	movl	%eax, 4(%edi)
	jmp	.L3380
	.p2align 4,,10
	.p2align 3
.L3420:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	16(%esp)
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	memmove@PLT
	movl	28(%esp), %ecx
	movl	32(%esp), %edx
	leal	-4(%ecx), %eax
	andl	$31, %edx
	movl	%eax, 40(%esp)
	movl	__masktab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	40(%esp), %eax
	andl	%edx, (%edi,%eax)
	movl	%edx, 32(%esp)
	addl	$12, %esp
	.cfi_def_cfa_offset 68
	pushl	%ecx
	.cfi_def_cfa_offset 72
	pushl	28(%esp)
	.cfi_def_cfa_offset 76
	pushl	20(%esp)
	.cfi_def_cfa_offset 80
	call	memcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	28(%esp), %ecx
	jne	.L3390
	jmp	.L3380
	.p2align 4,,10
	.p2align 3
.L3385:
	movl	%ecx, 8(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 68
	pushl	12(%edi)
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__st_val@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	8(%esp), %ecx
	jmp	.L3375
	.cfi_endproc
.LFE525:
	.size	asl_loc_do_qc2_regstore.isra.17, .-asl_loc_do_qc2_regstore.isra.17
	.p2align 4,,15
	.type	asl_loc_do_qc_store, @function
asl_loc_do_qc_store:
.LFB193:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %edi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	pushl	%ecx
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__eval_assign_rhsexpr@PLT
	addl	$8, %esp
	.cfi_def_cfa_offset 24
	leal	16(%esi), %ecx
	leal	4(%esi), %edx
	pushl	28(%esp)
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	movl	%edi, %eax
	call	asl_loc_do_qc2_regstore.isra.17
	movl	__xspi@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	subl	$1, (%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE193:
	.size	asl_loc_do_qc_store, .-asl_loc_do_qc_store
	.p2align 4,,15
	.type	asl_loc_do_qc_assign.isra.18, @function
asl_loc_do_qc_assign.isra.18:
.LFB526:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, 12(%esp)
	movl	__idp@GOT(%ebx), %eax
	movl	%ecx, 24(%esp)
	movl	$0, 16(%esp)
	movl	(%eax), %ecx
	movl	%eax, 20(%esp)
	movzwl	(%edx), %eax
	movl	(%ecx), %edi
	andw	$1023, %ax
	cmpw	$85, %ax
	movl	%edi, %esi
	je	.L3446
.L3424:
	movl	12(%edx), %eax
	leal	(%esi,%esi,2), %edx
	sall	$4, %edx
	movl	12(%eax), %eax
	movl	68(%eax), %ebp
	movl	68(%eax), %esi
	testb	$1, 0(%ebp,%edx)
	leal	24(%esi,%edx), %esi
	je	.L3426
	movl	12(%esp), %eax
	orb	$2, (%esi)
	movl	$-1, 8(%esi)
	movl	%ecx, 16(%esi)
	movl	%eax, 12(%esi)
	movl	24(%esp), %eax
	movl	%eax, 4(%esi)
	movl	64(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax,%edi,4), %eax
	movl	%eax, 20(%esi)
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	.L3423
	movl	20(%esp), %ebx
	movl	%eax, (%ebx)
.L3423:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3426:
	.cfi_restore_state
	movzbl	(%esi), %edx
	testb	$1, %dl
	je	.L3429
	andl	$-2, %edx
	movb	%dl, (%esi)
	movl	20(%esi), %edx
	testl	%edx, %edx
	je	.L3429
	movl	%eax, 28(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	call	__dcelst_off@PLT
	movl	36(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	(%eax), %ecx
	movl	28(%esp), %eax
.L3429:
	movl	12(%esp), %edx
	movl	%ecx, 16(%esi)
	movl	64(%esp), %ecx
	orb	$1, (%esi)
	movl	$-1, 8(%esi)
	movl	%edx, 12(%esi)
	movl	24(%esp), %edx
	movl	%edx, 4(%esi)
	movl	(%ecx), %edx
	movl	(%edx,%edi,4), %edx
	movl	16(%esp), %edi
	testl	%edi, %edi
	movl	%edx, 20(%esi)
	je	.L3430
	movl	20(%esp), %ecx
	movl	%edi, (%ecx)
.L3430:
	movl	12(%esp), %edi
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	16(%edi), %edx
	movl	4(%edx), %ecx
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	8(%edx)
	.cfi_def_cfa_offset 80
	movl	%esi, %edx
	call	asl_loc_do_qc_store
	movl	20(%esi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L3423
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__dcelst_on@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3446:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	16(%edx)
	.cfi_def_cfa_offset 80
	movl	%edx, 44(%esp)
	call	__xmrget_refgrp_to_targ@PLT
	movl	36(%esp), %esi
	movl	%eax, %ecx
	movl	(%esi), %eax
	movl	%ecx, (%esi)
	movl	(%ecx), %esi
	movl	%eax, 32(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %eax
	movl	28(%esp), %edx
	testl	%eax, %eax
	je	.L3424
	movl	4(%ecx), %eax
	cmpl	$1, 12(%eax)
	jle	.L3424
	movl	72(%esp), %eax
	movl	(%ecx,%eax,4), %eax
	movl	%eax, 68(%esp)
	jmp	.L3424
	.cfi_endproc
.LFE526:
	.size	asl_loc_do_qc_assign.isra.18, .-asl_loc_do_qc_assign.isra.18
	.p2align 4,,15
	.globl	__asl_exec_qc_assign
	.type	__asl_exec_qc_assign, @function
__asl_exec_qc_assign:
.LFB206:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %eax
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	movl	20(%esp), %ecx
	movl	16(%eax), %ebx
	movl	4(%ebx), %edx
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	12(%ebx), %ebx
	movl	%ebx, 16(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	asl_loc_do_qc_assign.isra.18
	.cfi_endproc
.LFE206:
	.size	__asl_exec_qc_assign, .-__asl_exec_qc_assign
	.p2align 4,,15
	.globl	__asl_exec_qc_assign_concat
	.type	__asl_exec_qc_assign_concat, @function
__asl_exec_qc_assign_concat:
.LFB208:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %edx
	movl	8(%esp), %eax
	movl	20(%esp), %ebx
	movl	12(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	16(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 8(%esp)
	movl	24(%esp), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	asl_loc_do_qc_assign.isra.18
	.cfi_endproc
.LFE208:
	.size	__asl_exec_qc_assign_concat, .-__asl_exec_qc_assign_concat
	.p2align 4,,15
	.type	asl_loc_do_qc_regforce.isra.19, @function
asl_loc_do_qc_regforce.isra.19:
.LFB527:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__idp@GOT(%ebx), %ebp
	movl	%eax, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	0(%ebp), %eax
	movl	(%eax), %ecx
	movl	%eax, 8(%esp)
	movzwl	(%edx), %eax
	movl	%ecx, 16(%esp)
	andw	$1023, %ax
	cmpw	$85, %ax
	je	.L3480
.L3452:
	movl	12(%edx), %eax
	leal	(%ecx,%ecx,2), %edx
	sall	$4, %edx
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	movl	68(%eax), %eax
	leal	(%eax,%edx), %esi
	testb	$1, (%esi)
	je	.L3454
	movl	20(%esi), %eax
	testl	%eax, %eax
	je	.L3455
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__dcelst_off@PLT
	movl	0(%ebp), %eax
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L3455:
	movl	$0, 20(%esi)
.L3456:
	movl	24(%esp), %eax
	movl	16(%esp), %edx
	orb	$1, (%esi)
	movl	20(%esp), %ecx
	testl	%edi, %edi
	movl	$-1, 8(%esi)
	movl	%eax, 4(%esi)
	movl	8(%esp), %eax
	movl	%ecx, 12(%esi)
	movl	%eax, 16(%esi)
	movl	64(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 20(%esi)
	movl	16(%ecx), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %ecx
	je	.L3458
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%edi, 0(%ebp)
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%esi, %edx
	movl	28(%esp), %eax
	call	asl_loc_do_qc_store
	movl	20(%esi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3459
.L3465:
	movl	8(%esp), %eax
	movl	0(%ebp), %edi
	movl	%eax, 0(%ebp)
.L3464:
	movl	__num_vpi_force_cbs@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jle	.L3460
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$-1
	.cfi_def_cfa_offset 76
	pushl	24(%esp)
	.cfi_def_cfa_offset 80
	call	__find_call_force_cbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L3460:
	movl	__vpi_force_cb_always@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3481
.L3461:
	testl	%edi, %edi
	je	.L3451
	movl	%edi, 0(%ebp)
.L3451:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3454:
	.cfi_restore_state
	leal	24(%eax,%edx), %eax
	testb	$1, (%eax)
	je	.L3456
	movl	20(%eax), %edx
	testl	%edx, %edx
	je	.L3457
	movl	%eax, 28(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	call	__dcelst_off@PLT
	movl	0(%ebp), %eax
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
.L3457:
	movzbl	(%eax), %edx
	andl	$-2, %edx
	orl	$2, %edx
	movb	%dl, (%eax)
	jmp	.L3456
	.p2align 4,,10
	.p2align 3
.L3459:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__dcelst_on@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3465
	.p2align 4,,10
	.p2align 3
.L3481:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	$1
	.cfi_def_cfa_offset 72
	pushl	$-1
	.cfi_def_cfa_offset 76
	pushl	24(%esp)
	.cfi_def_cfa_offset 80
	call	__cb_all_rfs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3461
	.p2align 4,,10
	.p2align 3
.L3458:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edx
	.cfi_def_cfa_offset 80
	movl	%esi, %edx
	movl	28(%esp), %eax
	call	asl_loc_do_qc_store
	movl	20(%esi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L3464
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__dcelst_on@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3464
	.p2align 4,,10
	.p2align 3
.L3480:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	16(%edx)
	.cfi_def_cfa_offset 80
	movl	%edx, 28(%esp)
	call	__xmrget_refgrp_to_targ@PLT
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %ecx
	movl	0(%ebp), %edi
	movl	12(%esp), %edx
	movl	%eax, 0(%ebp)
	testl	%ecx, %ecx
	je	.L3482
	movl	8(%esp), %esi
	movl	4(%esi), %eax
	movl	(%esi), %ecx
	cmpl	$1, 12(%eax)
	jle	.L3452
	movl	72(%esp), %eax
	movl	(%esi,%eax,4), %eax
	movl	%eax, 68(%esp)
	jmp	.L3452
	.p2align 4,,10
	.p2align 3
.L3482:
	movl	8(%esp), %eax
	movl	(%eax), %ecx
	jmp	.L3452
	.cfi_endproc
.LFE527:
	.size	asl_loc_do_qc_regforce.isra.19, .-asl_loc_do_qc_regforce.isra.19
	.p2align 4,,15
	.globl	__asl_exec_qc_force
	.type	__asl_exec_qc_force, @function
__asl_exec_qc_force:
.LFB207:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %eax
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	movl	20(%esp), %ecx
	movl	16(%eax), %ebx
	movl	4(%ebx), %edx
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	12(%ebx), %ebx
	movl	%ebx, 16(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	asl_loc_do_qc_regforce.isra.19
	.cfi_endproc
.LFE207:
	.size	__asl_exec_qc_force, .-__asl_exec_qc_force
	.p2align 4,,15
	.globl	__asl_exec_qc_force_concat
	.type	__asl_exec_qc_force_concat, @function
__asl_exec_qc_force_concat:
.LFB209:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %edx
	movl	8(%esp), %eax
	movl	20(%esp), %ebx
	movl	12(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	16(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 8(%esp)
	movl	24(%esp), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	asl_loc_do_qc_regforce.isra.19
	.cfi_endproc
.LFE209:
	.size	__asl_exec_qc_force_concat, .-__asl_exec_qc_force_concat
	.section	.rodata.str1.4
	.align 4
.LC21:
	.string	"attempted release of reg %s in instance %s failed - never forced"
	.text
	.p2align 4,,15
	.type	asl_loc_do_qc_regrelease, @function
asl_loc_do_qc_regrelease:
.LFB222:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movzwl	(%eax), %eax
	movl	%edx, 20(%esp)
	andw	$1023, %ax
	cmpw	$85, %ax
	je	.L3488
	movl	__idp@GOT(%ebx), %esi
	movl	$0, 12(%esp)
	movl	(%esi), %eax
.L3489:
	movl	12(%edi), %edx
	movl	(%eax), %eax
	movl	12(%edx), %edx
	leal	(%eax,%eax,2), %ebp
	sall	$4, %ebp
	movl	%edx, 16(%esp)
	movl	68(%edx), %edx
	leal	(%edx,%ebp), %eax
	movzbl	(%eax), %ecx
	testb	$1, %cl
	je	.L3520
	andl	$-2, %ecx
	movb	%cl, (%eax)
	movl	20(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3493
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ecx
	.cfi_def_cfa_offset 80
	call	__dcelst_off@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	movl	24(%esp), %edx
.L3493:
	leal	24(%edx,%ebp), %ebp
	movl	$0, 20(%eax)
	movl	__force_active@GOT(%ebx), %eax
	testb	$2, 0(%ebp)
	movl	$0, (%eax)
	je	.L3494
	movl	12(%ebp), %eax
	movl	12(%esp), %edx
	movl	16(%eax), %eax
	testl	%edx, %edx
	movl	4(%eax), %ecx
	movl	8(%eax), %eax
	je	.L3495
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	(%esi), %edi
	movl	%edx, (%esi)
	pushl	28(%esp)
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	%ebp, %edx
	movl	32(%esp), %eax
	call	asl_loc_do_qc_store
	movzbl	0(%ebp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	orl	$1, %eax
	andl	$-3, %eax
	movb	%al, 0(%ebp)
	movl	20(%ebp), %eax
	testl	%eax, %eax
	je	.L3521
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__dcelst_on@PLT
	movl	__assign_active@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	(%esi), %eax
	movl	%eax, 28(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L3503:
	movl	%edi, (%esi)
.L3498:
	movl	__num_vpi_rel_cbs@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jle	.L3500
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$-1
	.cfi_def_cfa_offset 76
	pushl	28(%esp)
	.cfi_def_cfa_offset 80
	call	__find_call_rel_cbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L3500:
	movl	__vpi_rel_cb_always@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3522
.L3501:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L3487
.L3519:
	movl	%eax, (%esi)
.L3487:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3494:
	.cfi_restore_state
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	.L3499
	movl	(%esi), %edi
	jmp	.L3503
	.p2align 4,,10
	.p2align 3
.L3520:
	movl	__xs@GOT(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	(%eax)
	.cfi_def_cfa_offset 80
	call	__msg2_cur_blditree@PLT
	movl	%eax, %ebp
	movl	%edi, (%esp)
	call	__to_idnam@PLT
	pushl	%ebp
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	.LC21@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	$465
	.cfi_def_cfa_offset 96
	call	__sgfinform@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	movl	12(%esp), %eax
	testl	%eax, %eax
	jne	.L3519
	jmp	.L3487
	.p2align 4,,10
	.p2align 3
.L3522:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	$0
	.cfi_def_cfa_offset 72
	pushl	$-1
	.cfi_def_cfa_offset 76
	pushl	28(%esp)
	.cfi_def_cfa_offset 80
	call	__cb_all_rfs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3501
	.p2align 4,,10
	.p2align 3
.L3488:
	movl	%ecx, 16(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	16(%edi)
	.cfi_def_cfa_offset 80
	call	__xmrget_refgrp_to_targ@PLT
	movl	__idp@GOT(%ebx), %esi
	movl	(%esi), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 28(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	20(%esp), %ebp
	testl	%ebp, %ebp
	je	.L3489
	movl	4(%eax), %edx
	cmpl	$1, 12(%edx)
	jle	.L3489
	movl	16(%esp), %ecx
	movl	(%eax,%ecx,4), %ecx
	movl	%ecx, 20(%esp)
	jmp	.L3489
	.p2align 4,,10
	.p2align 3
.L3521:
	movl	__assign_active@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	(%esi), %eax
	movl	%eax, 12(%esp)
	jmp	.L3503
	.p2align 4,,10
	.p2align 3
.L3495:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%ebp, %edx
	pushl	28(%esp)
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	32(%esp), %eax
	call	asl_loc_do_qc_store
	movzbl	0(%ebp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	orl	$1, %eax
	andl	$-3, %eax
	movb	%al, 0(%ebp)
	movl	20(%ebp), %eax
	testl	%eax, %eax
	jne	.L3523
	movl	__assign_active@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L3498
.L3523:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	__dcelst_on@PLT
	movl	__assign_active@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	$1, (%eax)
	.p2align 4,,10
	.p2align 3
.L3499:
	movl	$0, 12(%esp)
	jmp	.L3498
	.cfi_endproc
.LFE222:
	.size	asl_loc_do_qc_regrelease, .-asl_loc_do_qc_regrelease
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign_force
	.type	__asl_exec_qc_deassign_force, @function
__asl_exec_qc_deassign_force:
.LFB218:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	20(%eax), %eax
	jmp	asl_loc_do_qc_regrelease
	.cfi_endproc
.LFE218:
	.size	__asl_exec_qc_deassign_force, .-__asl_exec_qc_deassign_force
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign_force_concat
	.type	__asl_exec_qc_deassign_force_concat, @function
__asl_exec_qc_deassign_force_concat:
.LFB220:
	.cfi_startproc
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	jmp	asl_loc_do_qc_regrelease
	.cfi_endproc
.LFE220:
	.size	__asl_exec_qc_deassign_force_concat, .-__asl_exec_qc_deassign_force_concat
	.p2align 4,,15
	.globl	__asl_assign_qcaf_regform
	.type	__asl_assign_qcaf_regform, @function
__asl_assign_qcaf_regform:
.LFB217:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %eax
	movl	68(%esp), %edi
	movl	%gs:20, %esi
	movl	%esi, 28(%esp)
	xorl	%esi, %esi
	testb	$4, 1(%eax)
	je	.L3533
	movl	__idp@GOT(%ebx), %edx
	movl	60(%eax), %ecx
	testl	%edi, %edi
	movl	(%edx), %ebp
	movl	%ecx, (%edx)
	je	.L3527
	movl	4(%ecx), %esi
	cmpl	$1, 12(%esi)
	jle	.L3528
	movl	72(%esp), %edi
	movl	(%ecx,%edi,4), %edi
.L3527:
	movl	52(%eax), %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	12(%esi), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	pushl	%edx
	.cfi_def_cfa_offset 76
	movl	%edx, 20(%esp)
	pushl	8(%eax)
	.cfi_def_cfa_offset 80
	call	__eval_assign_rhsexpr@PLT
	movl	24(%esp), %edx
	movl	%eax, 20(%esp)
	movl	12(%edx), %eax
	movl	12(%eax), %eax
	movl	%eax, 40(%esp)
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%edx
	.cfi_def_cfa_offset 96
	call	__get_qc_wirrng@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L3529
	testl	%edi, %edi
	je	.L3529
	movl	__idp@GOT(%ebx), %edx
.L3531:
	movl	(%edx), %edx
	movl	4(%edx), %edx
	cmpl	$1, 12(%edx)
	jle	.L3529
	movl	72(%esp), %edi
	movl	(%eax,%edi,4), %edi
.L3529:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	leal	16(%esi), %ecx
	leal	4(%esi), %edx
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	16(%esp)
	.cfi_def_cfa_offset 80
	movl	40(%esp), %eax
	call	asl_loc_do_qc2_regstore.isra.17
	movl	__xspi@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	subl	$1, (%eax)
	testl	%ebp, %ebp
	je	.L3526
	movl	__idp@GOT(%ebx), %eax
	movl	%ebp, (%eax)
.L3526:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3547
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3533:
	.cfi_restore_state
	xorl	%ebp, %ebp
	jmp	.L3527
	.p2align 4,,10
	.p2align 3
.L3528:
	movl	52(%eax), %esi
	movl	%edx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	12(%esi), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 76
	movl	%ecx, 20(%esp)
	pushl	8(%eax)
	.cfi_def_cfa_offset 80
	call	__eval_assign_rhsexpr@PLT
	movl	24(%esp), %ecx
	movl	%eax, 20(%esp)
	movl	12(%ecx), %eax
	movl	12(%eax), %eax
	movl	%eax, 40(%esp)
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 88
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%ecx
	.cfi_def_cfa_offset 96
	call	__get_qc_wirrng@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	12(%esp), %edx
	jne	.L3531
	jmp	.L3529
.L3547:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE217:
	.size	__asl_assign_qcaf_regform, .-__asl_assign_qcaf_regform
	.p2align 4,,15
	.type	asl_loc_assign_chged_vtxs, @function
asl_loc_assign_chged_vtxs:
.LFB402:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	__idp@GOT(%eax), %ecx
	movl	%eax, 20(%esp)
	movl	%ecx, 12(%esp)
	movl	(%ecx), %ecx
	movl	%ecx, 24(%esp)
	movl	__chg_vtxlst_hdr@GOT(%eax), %ecx
	movl	(%ecx), %ebp
	movl	%ecx, 16(%esp)
	testl	%ebp, %ebp
	je	.L3569
	movl	__cap_to_stren@GOT(%eax), %eax
	movl	%eax, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L3556:
	movl	4(%ebp), %eax
	movl	$0, %edi
	movl	4(%eax), %esi
	movl	12(%esp), %eax
	movl	%esi, (%eax)
	movl	0(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%eax), %ecx
	movzbl	(%eax), %ebx
	cmpl	$-1, %edx
	movl	%ecx, 8(%esp)
	cmove	%edi, %edx
	movl	24(%ecx), %edi
	movzbl	(%eax), %ecx
	leal	(%edx,%edi,4), %edx
	movb	%cl, 1(%eax)
	movl	8(%esp), %ecx
	addl	%edx, %esi
	movzbl	(%ecx), %edx
	andl	$31, %edx
	cmpb	$6, %dl
	movzbl	(%esi), %edx
	jne	.L3553
	cmpl	$2, %ebx
	je	.L3551
.L3553:
	cmpl	%ebx, %edx
	je	.L3554
	movb	%bl, (%esi)
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	.L3568
	movl	8(%esp), %eax
	call	asl_loc_record_nchg
.L3568:
	movl	0(%ebp), %eax
.L3554:
	movl	8(%ebp), %ebp
	andb	$-2, 2(%eax)
	testl	%ebp, %ebp
	jne	.L3556
	movl	16(%esp), %eax
	movl	24(%esp), %ebx
	movl	(%eax), %edx
	movl	12(%esp), %eax
	testl	%edx, %edx
	movl	%ebx, (%eax)
	je	.L3569
	movl	20(%esp), %edi
	movl	__vtxlst_freelst@GOT(%edi), %ecx
	movl	__chg_vtxlst_end@GOT(%edi), %eax
	movl	(%ecx), %esi
	movl	(%eax), %ebx
	movl	%edx, (%ecx)
	movl	%esi, 8(%ebx)
.L3557:
	movl	$0, (%eax)
	movl	16(%esp), %eax
	movl	$0, (%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3551:
	.cfi_restore_state
	movl	8(%esp), %ebx
	movl	28(%esp), %ecx
	movzbl	3(%ebx), %ebx
	shrb	%bl
	movl	%ebx, %edi
	movl	%edx, %ebx
	andl	$3, %edi
	andl	$3, %ebx
	orb	(%ecx,%edi,4), %bl
	movzbl	%bl, %ebx
	jmp	.L3553
	.p2align 4,,10
	.p2align 3
.L3569:
	movl	20(%esp), %eax
	movl	__chg_vtxlst_end@GOT(%eax), %eax
	jmp	.L3557
	.cfi_endproc
.LFE402:
	.size	asl_loc_assign_chged_vtxs, .-asl_loc_assign_chged_vtxs
	.p2align 4,,15
	.globl	__asl_immed_eval_trifchan
	.type	__asl_immed_eval_trifchan, @function
__asl_immed_eval_trifchan:
.LFB390:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__cvc_immed_eval_trifchan@PLT
	movl	__chg_vtxlst_hdr@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3570
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	asl_loc_assign_chged_vtxs
	.p2align 4,,10
	.p2align 3
.L3570:
	.cfi_restore_state
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE390:
	.size	__asl_immed_eval_trifchan, .-__asl_immed_eval_trifchan
	.p2align 4,,15
	.globl	__asl_eval_tran_1bit
	.type	__asl_eval_tran_1bit, @function
__asl_eval_tran_1bit:
.LFB400:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	__idp@GOT(%ebx), %eax
	movl	28(%esp), %edx
	movl	(%eax), %eax
	movl	52(%edx), %ecx
	movl	(%eax), %eax
	imull	8(%edx), %eax
	movl	4(%ecx), %edx
	addl	32(%esp), %eax
	movl	(%edx,%eax,4), %eax
	pushl	4(%eax)
	.cfi_def_cfa_offset 32
	call	__cvc_eval_update_1w_tranchan@PLT
	movl	__chg_vtxlst_hdr@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3573
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	asl_loc_assign_chged_vtxs
	.p2align 4,,10
	.p2align 3
.L3573:
	.cfi_restore_state
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE400:
	.size	__asl_eval_tran_1bit, .-__asl_eval_tran_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_vector
	.type	__asl_eval_tran_vector, @function
__asl_eval_tran_vector:
.LFB401:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	8(%eax), %esi
	movl	52(%eax), %ebp
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edi
	imull	%esi, %edi
	subl	$1, %esi
	js	.L3576
	movl	__chg_vtxlst_hdr@GOT(%ebx), %eax
	addl	%esi, %edi
	sall	$2, %edi
	movl	%eax, 12(%esp)
	.p2align 4,,10
	.p2align 3
.L3579:
	movl	4(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	(%eax,%edi), %eax
	pushl	4(%eax)
	.cfi_def_cfa_offset 64
	call	__cvc_eval_update_1w_tranchan@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3578
	call	asl_loc_assign_chged_vtxs
.L3578:
	subl	$1, %esi
	subl	$4, %edi
	cmpl	$-1, %esi
	jne	.L3579
.L3576:
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE401:
	.size	__asl_eval_tran_vector, .-__asl_eval_tran_vector
	.p2align 4,,15
	.globl	__asl_eval_htran_wire_1bit_nchg
	.type	__asl_eval_htran_wire_1bit_nchg, @function
__asl_eval_htran_wire_1bit_nchg:
.LFB417:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bp
	addl	$_GLOBAL_OFFSET_TABLE_, %ebp
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %esi
	movl	48(%esp), %ebx
	leal	8(%esp), %edx
	movl	%gs:20, %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	movl	52(%esp), %edi
	leal	4(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	movl	%ebx, %ecx
	call	asl_loc_ld_vtx_netbit
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testb	$32, 4(%ebx)
	movl	__idp@GOT(%ebp), %eax
	movl	(%eax), %ebp
	je	.L3583
	movl	8(%ebx), %eax
	movl	68(%ebx), %edx
	imull	0(%ebp), %eax
	addl	%esi, %eax
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%eax,8), %eax
	testb	$1, (%eax)
	je	.L3583
.L3582:
	movl	12(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3596
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3583:
	.cfi_restore_state
	testb	$4, 2(%ebx)
	movl	24(%ebx), %eax
	movl	8(%esp), %edx
	movl	4(%esp), %ecx
	leal	0(%ebp,%eax,4), %eax
	jne	.L3585
	addl	%edx, %edx
	orl	%edx, %ecx
	cmpl	%ecx, (%eax)
	je	.L3582
	movl	%ecx, (%eax)
	movl	%edi, %edx
	movl	%ebx, %eax
	call	asl_loc_record_nchg
	jmp	.L3582
	.p2align 4,,10
	.p2align 3
.L3585:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	8(%ebx)
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	movl	%esi, %edx
	call	asl_loc_chg_vec_lhsbsel
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L3582
	movl	%edi, %edx
	movl	%ebx, %eax
	call	asl_loc_record_nchg
	jmp	.L3582
.L3596:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE417:
	.size	__asl_eval_htran_wire_1bit_nchg, .-__asl_eval_htran_wire_1bit_nchg
	.p2align 4,,15
	.globl	__asl_eval_htran_stwire_1bit_nchg
	.type	__asl_eval_htran_stwire_1bit_nchg, @function
__asl_eval_htran_stwire_1bit_nchg:
.LFB419:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__idp@GOT(%edi), %ecx
	movl	48(%esp), %eax
	movl	56(%esp), %esi
	movl	52(%esp), %edx
	movl	(%ecx), %ebx
	movl	8(%eax), %ecx
	movl	52(%eax), %ebp
	movl	%edx, 12(%esp)
	imull	(%ebx), %ecx
	movl	0(%ebp), %ebp
	addl	%esi, %ecx
	testb	$32, 4(%eax)
	movzbl	0(%ebp,%ecx), %ebp
	je	.L3598
	movl	68(%eax), %edx
	leal	(%ecx,%ecx,2), %ecx
	leal	(%edx,%ecx,8), %ecx
	testb	$1, (%ecx)
	jne	.L3597
.L3598:
	movl	24(%eax), %ecx
	leal	(%esi,%ecx,4), %ecx
	movzbl	(%eax), %esi
	addl	%ecx, %ebx
	movzbl	(%ebx), %ecx
	andl	$31, %esi
	movl	%esi, %edx
	cmpb	$6, %dl
	jne	.L3600
	cmpl	$2, %ebp
	je	.L3611
.L3600:
	cmpl	%ebp, %ecx
	je	.L3597
	movl	%ebp, %edx
	movb	%dl, (%ebx)
	movl	12(%esp), %edx
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_record_nchg
	.p2align 4,,10
	.p2align 3
.L3597:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3611:
	.cfi_restore_state
	movzbl	3(%eax), %edx
	movl	__cap_to_stren@GOT(%edi), %edi
	movl	%ecx, %ebp
	andl	$3, %ebp
	shrb	%dl
	movl	%edx, %esi
	andl	$3, %esi
	movzbl	(%edi,%esi,4), %edi
	orl	%edi, %ebp
	movl	%ebp, %edx
	movzbl	%dl, %ebp
	jmp	.L3600
	.cfi_endproc
.LFE419:
	.size	__asl_eval_htran_stwire_1bit_nchg, .-__asl_eval_htran_stwire_1bit_nchg
	.p2align 4,,15
	.globl	__asl_exec_cause
	.type	__asl_exec_cause, @function
__asl_exec_cause:
.LFB324:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	52(%esp), %edi
	movl	16(%eax), %esi
	movzwl	(%esi), %eax
	andw	$1023, %ax
	cmpw	$85, %ax
	je	.L3635
	movl	__idp@GOT(%ebx), %ebp
	movl	$0, 8(%esp)
.L3613:
	movl	12(%esi), %eax
	movl	12(%eax), %eax
	movl	88(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3614
	movl	__nchged_i2@GOT(%ebx), %esi
	cmpl	$1, 12(%eax)
	movl	$-1, (%esi)
	movl	__nchged_i1@GOT(%ebx), %esi
	movl	$-1, (%esi)
	jg	.L3636
.L3615:
	movl	%eax, 12(%esp)
#APP
# 8047 "v_aslib.c" 1
	movl __idp, %esi
# 0 "" 2
#NO_APP
	call	*%ecx
	movl	12(%esp), %eax
.L3614:
	testl	%edi, %edi
	je	.L3616
	movl	(%edi), %edx
	testl	%edx, %edx
	je	.L3637
.L3616:
	testb	$1, 6(%eax)
	jne	.L3638
.L3617:
	movl	56(%eax), %ecx
	movl	0(%ebp), %esi
	leal	(%esi,%ecx,4), %edi
	movl	(%edi), %ecx
	movl	%ecx, %edx
	andl	$3, %edx
	cmpl	$3, %edx
	jne	.L3618
	andl	$-3, %ecx
	movl	%ecx, (%edi)
	movl	(%esi), %ecx
	leal	(%ecx,%ecx,2), %esi
	movl	108(%eax), %ecx
	leal	(%ecx,%esi,8), %esi
	movl	__dv_chgnethdr@GOT(%ebx), %ecx
	movl	(%ecx), %edx
	movl	%esi, (%ecx)
	movl	__slotend_action@GOT(%ebx), %ecx
	movl	%edx, 20(%esi)
	orl	$32, (%ecx)
.L3618:
	cmpb	$0, 4(%eax)
	js	.L3639
.L3619:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L3612
	movl	%eax, 0(%ebp)
.L3612:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3637:
	.cfi_restore_state
	movl	__nchg_futend@GOT(%ebx), %ecx
	testb	$1, 6(%eax)
	movl	$1, (%edi)
	movl	$0, 8(%edi)
	movl	$0, 28(%edi)
	movl	(%ecx), %esi
	movl	%edi, (%ecx)
	movl	%edi, 28(%esi)
	je	.L3617
.L3638:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	movl	%eax, 28(%esp)
	call	__add_togglelst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	12(%esp), %eax
	jmp	.L3617
	.p2align 4,,10
	.p2align 3
.L3636:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	movl	%eax, 28(%esp)
	call	__asl_chk_dce_cbvc
	movl	28(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	88(%eax), %ecx
	jmp	.L3615
	.p2align 4,,10
	.p2align 3
.L3639:
	movl	(%edi), %ecx
	movl	%ecx, %esi
	andl	$48, %esi
	cmpl	$48, %esi
	jne	.L3619
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	andl	$-33, %ecx
	movl	%ecx, (%edi)
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__add_dp_chglst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3619
	.p2align 4,,10
	.p2align 3
.L3635:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	16(%esi)
	.cfi_def_cfa_offset 64
	call	__xmrget_refgrp_to_targ@PLT
	movl	__idp@GOT(%ebx), %ebp
	movl	0(%ebp), %edx
	movl	%eax, 0(%ebp)
	movl	%edx, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3613
	.cfi_endproc
.LFE324:
	.size	__asl_exec_cause, .-__asl_exec_cause
	.p2align 4,,15
	.type	asl_loc_record_sel_nchg, @function
asl_loc_record_sel_nchg:
.LFB459:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L3641
	movl	__nchged_i1@GOT(%ebx), %edx
	cmpl	$1, 12(%edi)
	movl	%ecx, (%edx)
	movl	__nchged_i2@GOT(%ebx), %edx
	movl	%ecx, (%edx)
	jg	.L3657
.L3642:
#APP
# 12578 "v_aslib.c" 1
	movl __idp, %esi
# 0 "" 2
#NO_APP
	call	*%eax
.L3641:
	testl	%ebp, %ebp
	je	.L3643
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	.L3658
.L3643:
	testb	$1, 6(%edi)
	jne	.L3659
.L3644:
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	56(%edi), %eax
	leal	(%ecx,%eax,4), %edx
	movl	(%edx), %eax
	movl	%eax, %ebp
	andl	$3, %ebp
	cmpl	$3, %ebp
	jne	.L3645
	andl	$-3, %eax
	movl	%eax, (%edx)
	movl	(%ecx), %eax
	leal	(%eax,%eax,2), %ecx
	movl	108(%edi), %eax
	leal	(%eax,%ecx,8), %ecx
	movl	__dv_chgnethdr@GOT(%ebx), %eax
	movl	(%eax), %ebp
	movl	%ecx, (%eax)
	movl	__slotend_action@GOT(%ebx), %eax
	movl	%ebp, 20(%ecx)
	orl	$32, (%eax)
.L3645:
	cmpb	$0, 4(%edi)
	js	.L3660
.L3640:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3658:
	.cfi_restore_state
	movl	__nchg_futend@GOT(%ebx), %eax
	testb	$1, 6(%edi)
	movl	$1, 0(%ebp)
	movl	$0, 8(%ebp)
	movl	$0, 28(%ebp)
	movl	(%eax), %edx
	movl	%ebp, (%eax)
	movl	%ebp, 28(%edx)
	je	.L3644
.L3659:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__add_togglelst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L3644
	.p2align 4,,10
	.p2align 3
.L3657:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__asl_chk_dce_cbvc
	movl	88(%edi), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L3642
	.p2align 4,,10
	.p2align 3
.L3660:
	movl	(%edx), %eax
	movl	%eax, %ecx
	andl	$48, %ecx
	cmpl	$48, %ecx
	jne	.L3640
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	andl	$-33, %eax
	movl	%eax, (%edx)
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__add_dp_chglst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L3640
	.cfi_endproc
.LFE459:
	.size	asl_loc_record_sel_nchg, .-asl_loc_record_sel_nchg
	.p2align 4,,15
	.type	asl_loc_chg_st_bit, @function
asl_loc_chg_st_bit:
.LFB460:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movzbl	1(%eax), %eax
	movl	%edx, %esi
	movl	36(%esp), %ebp
	movl	32(%esp), %edx
	shrb	%al
	andl	$63, %eax
	cmpb	$1, %al
	je	.L3663
	jb	.L3664
	cmpb	$2, %al
	je	.L3665
	cmpb	$3, %al
	jne	.L3661
	movl	__idp@GOT(%edi), %eax
	movl	24(%ebx), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	cmpb	%cl, (%eax)
	je	.L3661
.L3671:
	movb	%cl, (%eax)
.L3668:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %ecx
	movl	%ebp, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_record_sel_nchg
	.p2align 4,,10
	.p2align 3
.L3665:
	.cfi_restore_state
	movl	__idp@GOT(%edi), %eax
	addl	%edx, %edx
	orl	%edx, %ecx
	movl	24(%ebx), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	cmpl	%ecx, (%eax)
	je	.L3661
	movl	%ecx, (%eax)
	jmp	.L3668
	.p2align 4,,10
	.p2align 3
.L3664:
	movl	__idp@GOT(%edi), %edi
	movl	24(%ebx), %eax
	movl	(%edi), %edi
	pushl	8(%ebx)
	.cfi_def_cfa_offset 36
	pushl	%edx
	.cfi_def_cfa_offset 40
	movl	%esi, %edx
	leal	(%edi,%eax,4), %eax
	call	asl_loc_chg_vec_lhsbsel
	testl	%eax, %eax
	popl	%edx
	.cfi_def_cfa_offset 36
	popl	%ecx
	.cfi_def_cfa_offset 32
	jne	.L3668
.L3661:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3663:
	.cfi_restore_state
	movl	24(%ebx), %eax
	movl	__idp@GOT(%edi), %edx
	leal	(%esi,%eax,4), %eax
	addl	(%edx), %eax
	cmpb	%cl, (%eax)
	jne	.L3671
	jmp	.L3661
	.cfi_endproc
.LFE460:
	.size	asl_loc_chg_st_bit, .-asl_loc_chg_st_bit
	.p2align 4,,15
	.globl	__asl_chk_gate_vpi_chg
	.type	__asl_chk_gate_vpi_chg, @function
__asl_chk_gate_vpi_chg:
.LFB440:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__have_vpi_gateout_cbs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3672
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	4(%edx), %eax
	movl	180(%eax), %eax
	testl	%eax, %eax
	je	.L3672
	movl	16(%esp), %ecx
	movl	(%eax,%ecx,4), %eax
	testl	%eax, %eax
	je	.L3672
	movl	(%edx), %edx
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L3672
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	__exec_vpi_gateoutcbs@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
.L3672:
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE440:
	.size	__asl_chk_gate_vpi_chg, .-__asl_chk_gate_vpi_chg
	.p2align 4,,15
	.globl	__asl_timing_check_record
	.type	__asl_timing_check_record, @function
__asl_timing_check_record:
.LFB441:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__tcpendfreelst@GOT(%ebx), %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.L3690
	movl	8(%eax), %ecx
	movl	%ecx, (%edx)
.L3686:
	movl	16(%esp), %edx
	movl	$0, 8(%eax)
	movl	%edx, (%eax)
	movl	__idp@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
	movl	__tcpendlst_end@GOT(%ebx), %edx
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L3687
	movl	%eax, 8(%ecx)
	movl	%eax, (%edx)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3687:
	.cfi_restore_state
	movl	%eax, (%edx)
	movl	__tcpendlst_hdr@GOT(%ebx), %edx
	movl	%eax, (%edx)
	movl	__slotend_action@GOT(%ebx), %eax
	orl	$1, (%eax)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3690:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$12
	.cfi_def_cfa_offset 32
	call	__my_malloc@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	jmp	.L3686
	.cfi_endproc
.LFE441:
	.size	__asl_timing_check_record, .-__asl_timing_check_record
	.p2align 4,,15
	.globl	__asl_exec_disable
	.type	__asl_exec_disable, @function
__asl_exec_disable:
.LFB442:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	pushl	16(%eax)
	.cfi_def_cfa_offset 32
	call	__exec_disable@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE442:
	.size	__asl_exec_disable, .-__asl_exec_disable
	.p2align 4,,15
	.globl	__asl_downrel_targ_to_ref
	.type	__asl_downrel_targ_to_ref, @function
__asl_downrel_targ_to_ref:
.LFB443:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edx
	movl	__idp@GOT(%ebx), %eax
	movl	8(%edx), %esi
	movl	(%eax), %eax
	testl	%esi, %esi
	movl	8(%eax), %edi
	js	.L3694
	leal	0(,%esi,4), %ebp
	jmp	.L3698
	.p2align 4,,10
	.p2align 3
.L3702:
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%edi
	.cfi_def_cfa_offset 56
	pushl	%esi
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	movl	%edx, 28(%esp)
	call	__get_gref_giarr_ip@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	%eax, 16(%edi)
	movl	12(%esp), %edx
	jne	.L3699
.L3703:
	subl	$1, %esi
	subl	$4, %ebp
	movl	8(%edi), %edi
	cmpl	$-1, %esi
	je	.L3694
.L3698:
	movl	44(%edx), %eax
	movl	(%eax,%ebp), %eax
	testl	%eax, %eax
	jne	.L3702
	movl	40(%edx), %eax
	movl	(%eax,%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, 16(%edi)
	je	.L3703
.L3699:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3694:
	.cfi_restore_state
	movl	4(%edi), %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE443:
	.size	__asl_downrel_targ_to_ref, .-__asl_downrel_targ_to_ref
	.p2align 4,,15
	.globl	__asl_uprel_targ_to_ref
	.type	__asl_uprel_targ_to_ref, @function
__asl_uprel_targ_to_ref:
.LFB444:
	.cfi_startproc
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	__idp@GOT(%edx), %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %eax
	movl	(%edx), %edx
	movl	36(%eax), %edi
	movl	8(%edx), %ecx
	movl	12(%edi), %edx
	testl	%edx, %edx
	jle	.L3709
	movl	48(%eax), %ebx
	cmpl	(%ebx), %ecx
	je	.L3710
	xorl	%eax, %eax
	jmp	.L3707
	.p2align 4,,10
	.p2align 3
.L3708:
	cmpl	%ecx, (%ebx,%eax,4)
	leal	0(,%eax,4), %esi
	je	.L3706
.L3707:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L3708
.L3709:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$-1, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3710:
	.cfi_restore_state
	xorl	%esi, %esi
.L3706:
	movl	160(%edi), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	(%eax,%esi), %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	movl	4(%eax), %eax
	ret
	.cfi_endproc
.LFE444:
	.size	__asl_uprel_targ_to_ref, .-__asl_uprel_targ_to_ref
	.p2align 4,,15
	.globl	__asl_add_static_nchglst_sel
	.type	__asl_add_static_nchglst_sel, @function
__asl_add_static_nchglst_sel:
.LFB446:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%esp), %edi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	.L3714
	cmpl	%edi, 12(%esi)
	je	.L3713
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$32
	.cfi_def_cfa_offset 32
	call	__my_malloc@PLT
	movl	20(%esi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, %esi
	movl	%edx, 20(%eax)
	leal	__asl_process_alloced_nchg@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
.L3714:
	movl	24(%esp), %eax
	movl	$1, (%esi)
	movl	%edi, 12(%esi)
	movl	$0, 8(%esi)
	movl	$0, 28(%esi)
	movl	%eax, 16(%esi)
	movl	__nchg_futend@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%esi, (%eax)
	movl	__idp@GOT(%ebx), %eax
	movl	%esi, 28(%edx)
	movl	(%eax), %eax
	movl	%eax, 24(%esi)
.L3713:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE446:
	.size	__asl_add_static_nchglst_sel, .-__asl_add_static_nchglst_sel
	.section	.rodata.str1.4
	.align 4
.LC22:
	.string	"distributed longer or path destination driver unstable"
	.text
	.p2align 4,,15
	.globl	__asl_schd_1pthwirebit
	.type	__asl_schd_1pthwirebit, @function
__asl_schd_1pthwirebit:
.LFB447:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	80(%esp), %eax
	movl	84(%esp), %edi
	movl	64(%esp), %ebp
	movl	72(%esp), %esi
	movl	%eax, 4(%esp)
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	8(%edi), %eax
	testl	%eax, %eax
	jne	.L3718
	cmpl	76(%esp), %esi
	je	.L3717
	movl	__new_gateval@GOT(%ebx), %eax
	movl	76(%esp), %edx
	movl	%esi, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L3745:
	movl	36(%ebp), %eax
	movl	68(%esp), %edx
	leal	16(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	12(%eax), %eax
	call	asl_loc_get_path_del.isra.6
	testl	%eax, %eax
	movl	%eax, 8(%esp)
	je	.L3754
	movl	__simtime@GOT(%ebx), %ecx
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	cmpl	4(%ecx), %edx
	jbe	.L3755
.L3725:
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	je	.L3756
	cmpl	76(%esp), %esi
	je	.L3724
	movl	%esi, %eax
	cmpb	%al, 2(%edi)
	je	.L3717
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3741
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L3757
.L3741:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3753
	movl	%esi, %eax
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movb	%al, 2(%edi)
	movl	28(%edi), %ebx
	movl	24(%edi), %eax
	xorl	%ecx, %ebx
	xorl	%edx, %eax
	orl	%eax, %ebx
	je	.L3717
	movl	%edi, %eax
	call	asl_loc_reschedule_1wev.part.5
	.p2align 4,,10
	.p2align 3
.L3717:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3758
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3718:
	.cfi_restore_state
	movl	__new_gateval@GOT(%ebx), %eax
	movl	76(%esp), %edx
	movl	%esi, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	cmpl	%edx, %esi
	movl	%edx, (%eax)
	jne	.L3745
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
.L3724:
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3759
.L3736:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	je	.L3738
.L3753:
	movl	__showe_onevent@GOT(%ebx), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	.L3739
	movb	$3, 2(%edi)
	jmp	.L3717
	.p2align 4,,10
	.p2align 3
.L3755:
	jb	.L3747
	cmpl	(%ecx), %eax
	ja	.L3725
.L3747:
	movl	__no_informs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3760
.L3727:
	movl	8(%edi), %eax
	testl	%eax, %eax
	je	.L3728
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3730
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3761
.L3730:
	movl	%edi, %eax
	call	linkout_tevp
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	.L3728
.L3732:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	$1, %ecx
	movl	%ebp, %eax
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	movl	84(%esp), %edx
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3717
	.p2align 4,,10
	.p2align 3
.L3759:
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3736
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3736
	leal	.LC12@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%edi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	pushl	%edi
	.cfi_def_cfa_offset 88
	pushl	92(%esp)
	.cfi_def_cfa_offset 92
	pushl	%ebp
	.cfi_def_cfa_offset 96
	call	__emit_path_samewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3736
	.p2align 4,,10
	.p2align 3
.L3756:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	pushl	%edx
	.cfi_def_cfa_offset 84
	movl	%edi, %edx
	pushl	%eax
	.cfi_def_cfa_offset 88
	movl	__pdmindel@GOT(%ebx), %eax
	pushl	4(%eax)
	.cfi_def_cfa_offset 92
	pushl	(%eax)
	.cfi_def_cfa_offset 96
	movl	100(%esp), %eax
	call	asl_loc_schedule_1wev
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3717
	.p2align 4,,10
	.p2align 3
.L3728:
	movl	%esi, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%esi, %ecx
	shrl	%eax
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	84(%esp), %edx
	movl	%ebp, %eax
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3717
	.p2align 4,,10
	.p2align 3
.L3754:
	movl	%esi, %ecx
	shrl	%esi
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	andl	$1, %esi
	pushl	12(%esp)
	.cfi_def_cfa_offset 76
	andl	$1, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 80
	movl	84(%esp), %edx
	movl	%ebp, %eax
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3717
	.p2align 4,,10
	.p2align 3
.L3739:
	movl	%edi, %eax
	call	linkout_tevp
	jmp	.L3732
	.p2align 4,,10
	.p2align 3
.L3760:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	__pdmindel@GOT(%ebx)
	.cfi_def_cfa_offset 72
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	__emit_path_distinform@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3727
	.p2align 4,,10
	.p2align 3
.L3761:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3730
	leal	.LC22@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%edi), %eax
	pushl	$0
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%edi
	.cfi_def_cfa_offset 92
	pushl	36(%esp)
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3730
	.p2align 4,,10
	.p2align 3
.L3738:
	movl	%edi, %eax
	call	linkout_tevp
	jmp	.L3717
	.p2align 4,,10
	.p2align 3
.L3757:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3741
	leal	.LC19@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%edi), %eax
	pushl	28(%esp)
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%edi
	.cfi_def_cfa_offset 92
	pushl	36(%esp)
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3741
.L3758:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE447:
	.size	__asl_schd_1pthwirebit, .-__asl_schd_1pthwirebit
	.p2align 4,,15
	.globl	__asl_schd_1pthwirebit_nomsg
	.type	__asl_schd_1pthwirebit_nomsg, @function
__asl_schd_1pthwirebit_nomsg:
.LFB448:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	84(%esp), %esi
	movl	80(%esp), %eax
	movl	64(%esp), %ebp
	movl	72(%esp), %ebx
	movl	8(%esi), %ecx
	movl	%eax, 8(%esp)
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.L3763
	cmpl	76(%esp), %ebx
	je	.L3762
	movl	__new_gateval@GOT(%edi), %eax
	movl	76(%esp), %edx
	movl	%ebx, (%eax)
	movl	__old_gateval@GOT(%edi), %eax
	movl	%edx, (%eax)
.L3775:
	movl	36(%ebp), %eax
	movl	68(%esp), %edx
	leal	16(%esp), %ecx
	movl	12(%eax), %eax
	call	asl_loc_get_path_del.isra.6
	testl	%eax, %eax
	je	.L3786
	movl	8(%esi), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, 12(%esp)
	movl	__simtime@GOT(%edi), %eax
	cmpl	4(%eax), %ecx
	jbe	.L3787
.L3770:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L3788
	cmpl	76(%esp), %ebx
	je	.L3769
	cmpb	%bl, 2(%esi)
	je	.L3762
	movb	%bl, 2(%esi)
	movl	24(%esi), %eax
	movl	28(%esi), %ebx
	xorl	%edx, %eax
	xorl	%ecx, %ebx
	orl	%eax, %ebx
	je	.L3762
	movl	%esi, %eax
	call	asl_loc_reschedule_1wev.part.5
	.p2align 4,,10
	.p2align 3
.L3762:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3789
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3763:
	.cfi_restore_state
	movl	__new_gateval@GOT(%edi), %eax
	movl	76(%esp), %ecx
	movl	%ebx, (%eax)
	movl	__old_gateval@GOT(%edi), %eax
	cmpl	%ecx, %ebx
	movl	%ecx, (%eax)
	jne	.L3775
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
.L3769:
	movl	%esi, %eax
	call	linkout_tevp
	jmp	.L3762
	.p2align 4,,10
	.p2align 3
.L3787:
	jb	.L3777
	cmpl	(%eax), %edx
	ja	.L3770
.L3777:
	movl	12(%esp), %edx
	testl	%edx, %edx
	jne	.L3790
.L3772:
	movl	%ebx, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%ebx, %ecx
	shrl	%eax
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	andl	$1, %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	movl	84(%esp), %edx
	movl	%ebp, %eax
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3762
.L3788:
	movl	__pdmindel@GOT(%edi), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ebx
	.cfi_def_cfa_offset 80
	pushl	%ecx
	.cfi_def_cfa_offset 84
	pushl	%edx
	.cfi_def_cfa_offset 88
	movl	%esi, %edx
	pushl	4(%eax)
	.cfi_def_cfa_offset 92
	pushl	(%eax)
	.cfi_def_cfa_offset 96
	movl	100(%esp), %eax
	call	asl_loc_schedule_1wev
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3762
	.p2align 4,,10
	.p2align 3
.L3786:
	movl	%ebx, %ecx
	shrl	%ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	andl	$1, %ebx
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	andl	$1, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 80
	movl	84(%esp), %edx
	movl	%ebp, %eax
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3762
	.p2align 4,,10
	.p2align 3
.L3790:
	movl	%esi, %eax
	call	linkout_tevp
	jmp	.L3772
.L3789:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE448:
	.size	__asl_schd_1pthwirebit_nomsg, .-__asl_schd_1pthwirebit_nomsg
	.p2align 4,,15
	.globl	__asl_schd_st_1pthwirebit
	.type	__asl_schd_st_1pthwirebit, @function
__asl_schd_st_1pthwirebit:
.LFB449:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	84(%esp), %esi
	movl	64(%esp), %edi
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	80(%esp), %ebp
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L3792
	movl	76(%esp), %eax
	cmpl	%eax, 72(%esp)
	je	.L3791
	movl	__new_gateval@GOT(%ebx), %eax
	movl	72(%esp), %ecx
	movl	76(%esp), %edx
	movl	%ecx, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L3820:
	movl	36(%edi), %eax
	movl	68(%esp), %edx
	leal	16(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	12(%eax), %eax
	call	asl_loc_get_path_del.isra.6
	testl	%eax, %eax
	movl	%eax, 8(%esp)
	je	.L3807
	movl	__simtime@GOT(%ebx), %ecx
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	cmpl	4(%ecx), %edx
	jbe	.L3829
.L3799:
	movl	8(%esi), %ecx
	testl	%ecx, %ecx
	je	.L3830
	movl	76(%esp), %eax
	cmpl	%eax, 72(%esp)
	je	.L3798
	movzbl	72(%esp), %eax
	cmpb	%al, 2(%esi)
	je	.L3791
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3816
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L3831
.L3816:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3828
	movzbl	72(%esp), %eax
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movl	28(%esi), %ebx
	movb	%al, 2(%esi)
	movl	24(%esi), %eax
	xorl	%ecx, %ebx
	xorl	%edx, %eax
	orl	%eax, %ebx
	je	.L3791
	movl	%esi, %eax
	call	asl_loc_reschedule_1wev.part.5
	.p2align 4,,10
	.p2align 3
.L3791:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3832
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3792:
	.cfi_restore_state
	movl	__new_gateval@GOT(%ebx), %eax
	movl	72(%esp), %edx
	movl	%edx, (%eax)
	movl	76(%esp), %edx
	cmpl	%edx, 72(%esp)
	movl	__old_gateval@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jne	.L3820
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
.L3798:
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3833
.L3811:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3813
.L3828:
	movl	__showe_onevent@GOT(%ebx), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	.L3814
	movb	$-37, 2(%esi)
	jmp	.L3791
	.p2align 4,,10
	.p2align 3
.L3829:
	jb	.L3822
	cmpl	(%ecx), %eax
	ja	.L3799
.L3822:
	movl	__no_informs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3834
.L3801:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	.L3807
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3804
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3835
.L3804:
	movl	%esi, %eax
	call	linkout_tevp
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	.L3807
.L3806:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	$219, %ecx
	movl	%edi, %eax
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	$0
	.cfi_def_cfa_offset 80
	movl	84(%esp), %edx
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3791
	.p2align 4,,10
	.p2align 3
.L3833:
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3811
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3811
	leal	.LC12@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	pushl	%esi
	.cfi_def_cfa_offset 88
	pushl	92(%esp)
	.cfi_def_cfa_offset 92
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__emit_path_samewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3811
	.p2align 4,,10
	.p2align 3
.L3830:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	84(%esp)
	.cfi_def_cfa_offset 80
	pushl	%edx
	.cfi_def_cfa_offset 84
	movl	%esi, %edx
	pushl	%eax
	.cfi_def_cfa_offset 88
	movl	__pdmindel@GOT(%ebx), %eax
	pushl	4(%eax)
	.cfi_def_cfa_offset 92
	pushl	(%eax)
	.cfi_def_cfa_offset 96
	movl	100(%esp), %eax
	call	asl_loc_schedule_1wev
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3791
	.p2align 4,,10
	.p2align 3
.L3807:
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%edi, %eax
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	$0
	.cfi_def_cfa_offset 80
	movl	88(%esp), %ecx
	movl	84(%esp), %edx
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3791
	.p2align 4,,10
	.p2align 3
.L3814:
	movl	%esi, %eax
	call	linkout_tevp
	jmp	.L3806
	.p2align 4,,10
	.p2align 3
.L3834:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	__pdmindel@GOT(%ebx)
	.cfi_def_cfa_offset 72
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__emit_path_distinform@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3801
	.p2align 4,,10
	.p2align 3
.L3835:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3804
	leal	.LC22@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	$0
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%esi
	.cfi_def_cfa_offset 92
	pushl	36(%esp)
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3804
	.p2align 4,,10
	.p2align 3
.L3813:
	movl	%esi, %eax
	call	linkout_tevp
	jmp	.L3791
	.p2align 4,,10
	.p2align 3
.L3831:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3816
	leal	.LC19@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	28(%esp)
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%esi
	.cfi_def_cfa_offset 92
	pushl	36(%esp)
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3816
.L3832:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE449:
	.size	__asl_schd_st_1pthwirebit, .-__asl_schd_st_1pthwirebit
	.p2align 4,,15
	.globl	__asl_stren_sched_unknown_bit
	.type	__asl_stren_sched_unknown_bit, @function
__asl_stren_sched_unknown_bit:
.LFB428:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	68(%esp), %eax
	movl	56(%esp), %esi
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	$11089
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__misc_terr@PLT
	movl	__lhs_changed@GOT(%ebx), %eax
	movl	8(%esi), %edx
	movl	%eax, 28(%esp)
	movl	$0, (%eax)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, %eax
	testl	%edx, %edx
	movb	%al, 3(%esp)
	jle	.L3836
	xorl	%ebx, %ebx
	jmp	.L3842
	.p2align 4,,10
	.p2align 3
.L3841:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	16(%esp)
	.cfi_def_cfa_offset 64
	pushl	%eax
	.cfi_def_cfa_offset 68
	pushl	%edx
	.cfi_def_cfa_offset 72
	pushl	%ebx
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	__asl_wdel_schd_1wirebit
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.L3840:
	addl	$1, %ebx
	cmpl	%ebx, 8(%esi)
	jle	.L3848
.L3842:
	movzbl	0(%ebp,%ebx), %eax
	movl	$219, %edx
	cmpb	3(%esp), %al
	cmove	%edi, %edx
	cmpl	%edx, %eax
	je	.L3840
	movl	36(%esi), %ecx
	movzbl	8(%ecx), %ecx
	andl	$31, %ecx
	cmpb	$15, %cl
	jne	.L3841
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	12(%esp)
	.cfi_def_cfa_offset 60
	pushl	20(%esp)
	.cfi_def_cfa_offset 64
	pushl	%eax
	.cfi_def_cfa_offset 68
	pushl	%edx
	.cfi_def_cfa_offset 72
	pushl	%ebx
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	addl	$1, %ebx
	call	__asl_schd_st_1pthwirebit
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	cmpl	%ebx, 8(%esi)
	jg	.L3842
.L3848:
	movl	12(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3849
.L3836:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3849:
	.cfi_restore_state
	movl	8(%esp), %edx
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_record_nchg
	.cfi_endproc
.LFE428:
	.size	__asl_stren_sched_unknown_bit, .-__asl_stren_sched_unknown_bit
	.p2align 4,,15
	.globl	__asl_schd_scalar_1pthwirebit
	.type	__asl_schd_scalar_1pthwirebit, @function
__asl_schd_scalar_1pthwirebit:
.LFB450:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	76(%esp), %eax
	movl	80(%esp), %esi
	movl	64(%esp), %edi
	movl	68(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L3851
	cmpl	72(%esp), %ebp
	je	.L3850
	movl	__new_gateval@GOT(%ebx), %eax
	movl	72(%esp), %ecx
	movl	%ebp, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	movl	%ecx, (%eax)
.L3879:
	movl	36(%edi), %eax
	leal	16(%esp), %edx
	movl	%edx, 12(%esp)
	call	asl_loc_get_path_del_scalar.isra.7
	testl	%eax, %eax
	je	.L3855
	movl	__simtime@GOT(%ebx), %ecx
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	cmpl	4(%ecx), %edx
	jnb	.L3887
.L3856:
	movl	__no_informs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3888
.L3861:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	.L3862
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3864
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3864
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3864
	leal	.LC22@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	$0
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%esi
	.cfi_def_cfa_offset 92
	pushl	$-1
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L3864:
	movl	%esi, %eax
	call	linkout_tevp
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	.L3866
.L3862:
	movl	__idp@GOT(%ebx), %eax
	movl	24(%edi), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	cmpl	%ebp, %edx
	je	.L3850
	movl	8(%esp), %edx
	movl	%ebp, %ecx
	movb	%cl, (%eax)
	movl	%edi, %eax
	call	asl_loc_record_nchg
	.p2align 4,,10
	.p2align 3
.L3850:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3889
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3851:
	.cfi_restore_state
	movl	__new_gateval@GOT(%ebx), %eax
	movl	72(%esp), %ecx
	movl	%ebp, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	cmpl	%ecx, %ebp
	movl	%ecx, (%eax)
	jne	.L3879
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
.L3860:
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3890
.L3870:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3872
.L3886:
	movl	__showe_onevent@GOT(%ebx), %eax
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	.L3873
	movb	$3, 2(%esi)
	jmp	.L3850
	.p2align 4,,10
	.p2align 3
.L3887:
	ja	.L3858
	cmpl	(%ecx), %eax
	jbe	.L3856
.L3858:
	movl	8(%esi), %ecx
	testl	%ecx, %ecx
	je	.L3891
	cmpl	72(%esp), %ebp
	je	.L3860
	movl	%ebp, %eax
	cmpb	%al, 2(%esi)
	je	.L3850
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3875
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L3892
.L3875:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3886
	movl	%ebp, %eax
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movb	%al, 2(%esi)
	movl	28(%esi), %ebx
	movl	24(%esi), %eax
	xorl	%ecx, %ebx
	xorl	%edx, %eax
	orl	%eax, %ebx
	je	.L3850
	movl	%esi, %eax
	call	asl_loc_reschedule_1wev.part.5
	jmp	.L3850
	.p2align 4,,10
	.p2align 3
.L3890:
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3870
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3870
	leal	.LC12@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	pushl	%esi
	.cfi_def_cfa_offset 88
	pushl	$0
	.cfi_def_cfa_offset 92
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__emit_path_samewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3870
	.p2align 4,,10
	.p2align 3
.L3873:
	movl	%esi, %eax
	call	linkout_tevp
.L3866:
	movl	__idp@GOT(%ebx), %eax
	movl	24(%edi), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	cmpb	$3, (%eax)
	je	.L3850
	movl	8(%esp), %edx
	movb	$3, (%eax)
	movl	%edi, %eax
	call	asl_loc_record_nchg
	jmp	.L3850
.L3891:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	pushl	%edx
	.cfi_def_cfa_offset 84
	movl	%esi, %edx
	pushl	%eax
	.cfi_def_cfa_offset 88
	movl	__pdmindel@GOT(%ebx), %eax
	pushl	4(%eax)
	.cfi_def_cfa_offset 92
	pushl	(%eax)
	.cfi_def_cfa_offset 96
	xorl	%eax, %eax
	call	asl_loc_schedule_1wev
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3850
	.p2align 4,,10
	.p2align 3
.L3855:
	movl	%ebp, %ecx
	shrl	%ebp
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	andl	$1, %ebp
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	andl	$1, %ecx
	pushl	%ebp
	.cfi_def_cfa_offset 80
	movl	$-1, %edx
	movl	%edi, %eax
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3850
	.p2align 4,,10
	.p2align 3
.L3888:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	__pdmindel@GOT(%ebx)
	.cfi_def_cfa_offset 72
	pushl	$-1
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__emit_path_distinform@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3861
	.p2align 4,,10
	.p2align 3
.L3872:
	movl	%esi, %eax
	call	linkout_tevp
	jmp	.L3850
	.p2align 4,,10
	.p2align 3
.L3892:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3875
	leal	.LC19@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	28(%esp)
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%esi
	.cfi_def_cfa_offset 92
	pushl	$-1
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3875
.L3889:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE450:
	.size	__asl_schd_scalar_1pthwirebit, .-__asl_schd_scalar_1pthwirebit
	.p2align 4,,15
	.globl	__asl_schd_st_scalar_1pthwirebit
	.type	__asl_schd_st_scalar_1pthwirebit, @function
__asl_schd_st_scalar_1pthwirebit:
.LFB451:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	76(%esp), %eax
	movl	80(%esp), %esi
	movl	64(%esp), %edi
	movl	68(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	movl	8(%esi), %eax
	testl	%eax, %eax
	jne	.L3894
	cmpl	72(%esp), %ebp
	je	.L3893
	movl	__new_gateval@GOT(%ebx), %eax
	movl	72(%esp), %ecx
	movl	%ebp, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	movl	%ecx, (%eax)
.L3922:
	movl	36(%edi), %eax
	leal	16(%esp), %edx
	movl	%edx, 12(%esp)
	call	asl_loc_get_path_del_scalar.isra.7
	testl	%eax, %eax
	je	.L3898
	movl	__simtime@GOT(%ebx), %ecx
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	cmpl	4(%ecx), %edx
	jnb	.L3930
.L3899:
	movl	__no_informs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3931
.L3904:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	.L3905
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3907
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3907
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3907
	leal	.LC22@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	$0
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%esi
	.cfi_def_cfa_offset 92
	pushl	$-1
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L3907:
	movl	%esi, %eax
	call	linkout_tevp
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	.L3909
.L3905:
	movl	__idp@GOT(%ebx), %eax
	movl	24(%edi), %edx
	movl	%ebp, %ecx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	cmpb	%cl, (%eax)
	je	.L3893
	movl	8(%esp), %edx
	movb	%cl, (%eax)
	movl	%edi, %eax
	call	asl_loc_record_nchg
	.p2align 4,,10
	.p2align 3
.L3893:
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	jne	.L3932
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3894:
	.cfi_restore_state
	movl	__new_gateval@GOT(%ebx), %eax
	movl	72(%esp), %ecx
	movl	%ebp, (%eax)
	movl	__old_gateval@GOT(%ebx), %eax
	cmpl	%ecx, %ebp
	movl	%ecx, (%eax)
	jne	.L3922
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
.L3903:
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3933
.L3913:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3915
.L3929:
	movl	__showe_onevent@GOT(%ebx), %eax
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	.L3916
	movb	$-37, 2(%esi)
	jmp	.L3893
	.p2align 4,,10
	.p2align 3
.L3930:
	ja	.L3901
	cmpl	(%ecx), %eax
	jbe	.L3899
.L3901:
	movl	8(%esi), %ecx
	testl	%ecx, %ecx
	je	.L3934
	cmpl	72(%esp), %ebp
	je	.L3903
	movl	%ebp, %eax
	cmpb	%al, 2(%esi)
	je	.L3893
	movl	__warn_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3918
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L3935
.L3918:
	movl	__show_cancel_e@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3929
	movl	%ebp, %eax
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movb	%al, 2(%esi)
	movl	28(%esi), %ebx
	movl	24(%esi), %eax
	xorl	%ecx, %ebx
	xorl	%edx, %eax
	orl	%eax, %ebx
	je	.L3893
	movl	%esi, %eax
	call	asl_loc_reschedule_1wev.part.5
	jmp	.L3893
	.p2align 4,,10
	.p2align 3
.L3933:
	movl	__no_warns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3913
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3913
	leal	.LC12@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	%eax
	.cfi_def_cfa_offset 84
	pushl	%esi
	.cfi_def_cfa_offset 88
	pushl	$0
	.cfi_def_cfa_offset 92
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__emit_path_samewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3913
	.p2align 4,,10
	.p2align 3
.L3916:
	movl	%esi, %eax
	call	linkout_tevp
.L3909:
	movl	__idp@GOT(%ebx), %eax
	movl	24(%edi), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	cmpb	$-37, (%eax)
	je	.L3893
	movl	8(%esp), %edx
	movb	$-37, (%eax)
	movl	%edi, %eax
	call	asl_loc_record_nchg
	jmp	.L3893
.L3934:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	pushl	%edx
	.cfi_def_cfa_offset 84
	movl	%esi, %edx
	pushl	%eax
	.cfi_def_cfa_offset 88
	movl	__pdmindel@GOT(%ebx), %eax
	pushl	4(%eax)
	.cfi_def_cfa_offset 92
	pushl	(%eax)
	.cfi_def_cfa_offset 96
	xorl	%eax, %eax
	call	asl_loc_schedule_1wev
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3893
	.p2align 4,,10
	.p2align 3
.L3898:
	movl	%ebp, %ecx
	shrl	%ebp
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	andl	$1, %ebp
	pushl	16(%esp)
	.cfi_def_cfa_offset 76
	andl	$1, %ecx
	pushl	%ebp
	.cfi_def_cfa_offset 80
	movl	$-1, %edx
	movl	%edi, %eax
	call	asl_loc_chg_st_bit
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3893
	.p2align 4,,10
	.p2align 3
.L3931:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	__pdmindel@GOT(%ebx)
	.cfi_def_cfa_offset 72
	pushl	$-1
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	__emit_path_distinform@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3904
	.p2align 4,,10
	.p2align 3
.L3915:
	movl	%esi, %eax
	call	linkout_tevp
	jmp	.L3893
	.p2align 4,,10
	.p2align 3
.L3935:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	$592
	.cfi_def_cfa_offset 80
	call	__em_suppr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	.L3918
	leal	.LC19@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	$1
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	leal	24(%esi), %eax
	pushl	28(%esp)
	.cfi_def_cfa_offset 84
	pushl	%eax
	.cfi_def_cfa_offset 88
	pushl	%esi
	.cfi_def_cfa_offset 92
	pushl	$-1
	.cfi_def_cfa_offset 96
	call	__emit_path_pulsewarn@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L3918
.L3932:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE451:
	.size	__asl_schd_st_scalar_1pthwirebit, .-__asl_schd_st_scalar_1pthwirebit
	.p2align 4,,15
	.globl	__asl_get_del_1x
	.type	__asl_get_del_1x, @function
__asl_get_del_1x:
.LFB454:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %edi
	movl	__cur_thd@GOT(%ebx), %esi
	pushl	%edi
	.cfi_def_cfa_offset 48
	movl	(%esi), %ebp
	movl	$0, (%esi)
	call	__eval2_xpr@PLT
	movl	%eax, %edx
	movl	%edi, %eax
	call	asl_loc_delx_to_deltim
	movl	__xspi@GOT(%ebx), %ecx
	movl	%ebp, (%esi)
	subl	$1, (%ecx)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE454:
	.size	__asl_get_del_1x, .-__asl_get_del_1x
	.p2align 4,,15
	.globl	__asl_get_del_4x
	.type	__asl_get_del_4x, @function
__asl_get_del_4x:
.LFB455:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__new_gateval@GOT(%ebx), %eax
	movl	48(%esp), %ecx
	movl	__cur_thd@GOT(%ebx), %esi
	movl	(%eax), %eax
	movl	(%esi), %ebp
	movl	$0, (%esi)
	movl	(%ecx,%eax,4), %edi
	testl	%edi, %edi
	je	.L3944
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	__eval2_xpr@PLT
	movl	%eax, %edx
	movl	%edi, %eax
	call	asl_loc_delx_to_deltim
	movl	__xspi@GOT(%ebx), %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%ebp, (%esi)
	subl	$1, (%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3944:
	.cfi_restore_state
	movl	(%ecx), %edi
	movl	%ecx, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	__eval2_xpr@PLT
	movl	%eax, %edx
	movl	%edi, %eax
	call	asl_loc_delx_to_deltim
	movl	28(%esp), %ecx
	movl	__xspi@GOT(%ebx), %edi
	movl	%edx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	4(%ecx), %ecx
	subl	$1, (%edi)
	movl	%ecx, 28(%esp)
	movl	%ecx, (%esp)
	call	__eval2_xpr@PLT
	movl	28(%esp), %ecx
	movl	%eax, %edx
	movl	%ecx, %eax
	call	asl_loc_delx_to_deltim
	movl	%edx, %ecx
	movl	24(%esp), %edx
	movl	%eax, %ebx
	subl	$1, (%edi)
	movl	20(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	%ecx, %edx
	jb	.L3940
	ja	.L3941
	cmpl	%ebx, %eax
	ja	.L3941
.L3940:
	movl	%ebp, (%esi)
.L3945:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3941:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	%ecx, %edx
	movl	%ebp, (%esi)
	jmp	.L3945
	.cfi_endproc
.LFE455:
	.size	__asl_get_del_4x, .-__asl_get_del_4x
	.p2align 4,,15
	.globl	__asl_chg_vec_lhsbsel
	.type	__asl_chg_vec_lhsbsel, @function
__asl_chg_vec_lhsbsel:
.LFB461:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	__idp@GOT(%eax), %eax
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	32(%esp), %edi
	movl	(%eax), %eax
	movl	24(%ebx), %edx
	pushl	8(%ebx)
	.cfi_def_cfa_offset 20
	pushl	32(%esp)
	.cfi_def_cfa_offset 24
	movl	32(%esp), %ecx
	leal	(%eax,%edx,4), %eax
	movl	%esi, %edx
	call	asl_loc_chg_vec_lhsbsel
	testl	%eax, %eax
	popl	%edx
	.cfi_def_cfa_offset 20
	popl	%ecx
	.cfi_def_cfa_offset 16
	jne	.L3949
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3949:
	.cfi_restore_state
	movl	%esi, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	asl_loc_record_sel_nchg
	.cfi_endproc
.LFE461:
	.size	__asl_chg_vec_lhsbsel, .-__asl_chg_vec_lhsbsel
	.p2align 4,,15
	.globl	__asl_chg_vec_lhsbsel_2state
	.type	__asl_chg_vec_lhsbsel_2state, @function
__asl_chg_vec_lhsbsel_2state:
.LFB462:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	56(%esp), %ebp
	movl	60(%esp), %ebx
	movl	48(%esp), %eax
	movl	%esi, %ecx
	andl	$1, %ebp
	andl	$31, %ecx
	movl	%ebx, 12(%esp)
	movl	$1, %ebx
	sall	%cl, %ebp
	sall	%cl, %ebx
	movl	%ebp, %ecx
	movl	__idp@GOT(%edi), %ebp
	movl	%esi, %edi
	sarl	$5, %edi
	addl	24(%eax), %edi
	movl	%ebx, %edx
	movl	0(%ebp), %ebp
	leal	0(%ebp,%edi,4), %edi
	movl	(%edi), %ebp
	andl	%ebp, %edx
	cmpl	%edx, %ecx
	je	.L3950
	notl	%ebx
	movl	12(%esp), %edx
	andl	%ebx, %ebp
	orl	%ebp, %ecx
	movl	%ecx, (%edi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_record_sel_nchg
	.p2align 4,,10
	.p2align 3
.L3950:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE462:
	.size	__asl_chg_vec_lhsbsel_2state, .-__asl_chg_vec_lhsbsel_2state
	.p2align 4,,15
	.globl	__asl_add_dmpv_chglst_el
	.type	__asl_add_dmpv_chglst_el, @function
__asl_add_dmpv_chglst_el:
.LFB466:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movl	__idp@GOT(%eax), %edx
	movl	56(%ecx), %ebx
	movl	(%edx), %edx
	andl	$-3, (%edx,%ebx,4)
	movl	(%edx), %edx
	leal	(%edx,%edx,2), %ebx
	movl	108(%ecx), %edx
	leal	(%edx,%ebx,8), %ecx
	movl	__dv_chgnethdr@GOT(%eax), %edx
	movl	__slotend_action@GOT(%eax), %eax
	movl	(%edx), %ebx
	orl	$32, (%eax)
	movl	%ecx, (%edx)
	movl	%ebx, 20(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE466:
	.size	__asl_add_dmpv_chglst_el, .-__asl_add_dmpv_chglst_el
	.p2align 4,,15
	.globl	__asl_add_dmpv_chglst_el_array
	.type	__asl_add_dmpv_chglst_el_array, @function
__asl_add_dmpv_chglst_el_array:
.LFB467:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	112(%edx), %eax
	movl	(%eax,%ecx,4), %eax
	testl	%eax, %eax
	je	.L3955
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	imull	116(%edx), %eax
	addl	%ecx, %eax
	leal	(%eax,%eax,2), %ecx
	movl	108(%edx), %eax
	leal	(%eax,%ecx,8), %eax
	movzbl	(%eax), %edx
	testb	$1, %dl
	jne	.L3955
	orl	$1, %edx
	movb	%dl, (%eax)
	movl	__dv_chgnethdr@GOT(%ebx), %edx
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	%ecx, 20(%eax)
	movl	__slotend_action@GOT(%ebx), %eax
	orl	$32, (%eax)
.L3955:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE467:
	.size	__asl_add_dmpv_chglst_el_array, .-__asl_add_dmpv_chglst_el_array
	.p2align 4,,15
	.globl	__asl_record_array_net_change
	.type	__asl_record_array_net_change, @function
__asl_record_array_net_change:
.LFB463:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %ebp
	movl	32(%esp), %edi
	testl	%ebp, %ebp
	je	.L3960
	movl	88(%edi), %edx
	testl	%edx, %edx
	je	.L3961
	movl	__nchged_i1@GOT(%ebx), %ecx
	movl	40(%esp), %eax
	cmpl	$1, 12(%edi)
	movl	%eax, (%ecx)
	movl	__nchged_i2@GOT(%ebx), %ecx
	movl	%eax, (%ecx)
	jle	.L3962
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__asl_chk_dce_cbvc
	movl	88(%edi), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 32
.L3962:
#APP
# 12729 "v_aslib.c" 1
	movl __idp, %esi
# 0 "" 2
#NO_APP
	call	*%edx
.L3961:
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	.L3970
.L3960:
	movl	__idp@GOT(%ebx), %ebp
	movl	56(%edi), %ecx
	movl	0(%ebp), %edx
	leal	(%edx,%ecx,4), %ecx
	movl	(%ecx), %edx
	movl	%edx, %esi
	andl	$3, %esi
	cmpl	$3, %esi
	je	.L3971
.L3964:
	cmpb	$0, 4(%edi)
	js	.L3972
.L3958:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3970:
	.cfi_restore_state
	movl	__nchg_futend@GOT(%ebx), %edx
	movl	$1, 0(%ebp)
	movl	$0, 8(%ebp)
	movl	$0, 28(%ebp)
	movl	(%edx), %ecx
	movl	%ebp, (%edx)
	movl	%ebp, 28(%ecx)
	jmp	.L3960
	.p2align 4,,10
	.p2align 3
.L3972:
	movl	0(%ebp), %edx
	movl	56(%edi), %ecx
	leal	(%edx,%ecx,4), %ecx
	movl	(%ecx), %edx
	movl	%edx, %eax
	andl	$48, %eax
	cmpl	$48, %eax
	jne	.L3958
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	andl	$-33, %edx
	movl	%edx, (%ecx)
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__add_dp_chglst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L3958
	.p2align 4,,10
	.p2align 3
.L3971:
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	andl	$-3, %edx
	movl	%edx, (%ecx)
	pushl	48(%esp)
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__asl_add_dmpv_chglst_el_array
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L3964
	.cfi_endproc
.LFE463:
	.size	__asl_record_array_net_change, .-__asl_record_array_net_change
	.p2align 4,,15
	.globl	__asl_add_dmpv_chglst_el_mdprt
	.type	__asl_add_dmpv_chglst_el_mdprt, @function
__asl_add_dmpv_chglst_el_mdprt:
.LFB468:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	testb	$1, 6(%esi)
	jne	.L3980
.L3974:
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	56(%esi), %eax
	leal	(%edx,%eax,4), %ecx
	movl	(%ecx), %eax
	movl	%eax, %edi
	andl	$3, %edi
	cmpl	$3, %edi
	jne	.L3973
	andl	$-3, %eax
	movl	%eax, (%ecx)
	movl	(%edx), %eax
	leal	(%eax,%eax,2), %edx
	movl	108(%esi), %eax
	leal	(%eax,%edx,8), %edx
	movl	__dv_chgnethdr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, (%eax)
	movl	__slotend_action@GOT(%ebx), %eax
	movl	%ecx, 20(%edx)
	orl	$32, (%eax)
.L3973:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3980:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%esi
	.cfi_def_cfa_offset 32
	call	__add_togglelst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	jmp	.L3974
	.cfi_endproc
.LFE468:
	.size	__asl_add_dmpv_chglst_el_mdprt, .-__asl_add_dmpv_chglst_el_mdprt
	.set	asl_loc_add_dmpv_chglst_el_mdprt,__asl_add_dmpv_chglst_el_mdprt
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_dmpv
	.type	__asl_mdprt_bsel_dmpv, @function
__asl_mdprt_bsel_dmpv:
.LFB300:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %eax
	movl	24(%esp), %edi
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	28(%esp), %ebx
	movl	12(%eax), %edx
	movl	16(%eax), %eax
	andl	$1, %ebx
	movl	12(%edx), %edx
	movl	12(%edx), %esi
	movl	16(%eax), %edx
	movl	__contab@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %edx
	movl	$-2, %eax
	movl	%edx, %ecx
	sarl	$5, %edx
	sall	$2, %edx
	andl	$31, %ecx
	addl	%edx, %edi
	roll	%cl, %eax
	sall	%cl, %ebx
	movl	(%edi), %ebp
	andl	%eax, %ebp
	orl	%ebp, %ebx
	movl	8(%esi), %ebp
	addl	$31, %ebp
	sarl	$5, %ebp
	leal	(%edx,%ebp,4), %ebp
	movl	28(%esp), %edx
	addl	24(%esp), %ebp
	shrl	%edx
	andl	$1, %edx
	sall	%cl, %edx
	cmpl	%ebx, (%edi)
	jne	.L3986
	movl	0(%ebp), %ecx
	andl	%ecx, %eax
	orl	%edx, %eax
	cmpl	%eax, %ecx
	je	.L3981
	movl	%eax, 0(%ebp)
	movl	%esi, 20(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.p2align 4,,10
	.p2align 3
.L3981:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3986:
	.cfi_restore_state
	movl	%ebx, (%edi)
	andl	0(%ebp), %eax
	orl	%eax, %edx
	movl	%edx, 0(%ebp)
	movl	%esi, 20(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.cfi_endproc
.LFE300:
	.size	__asl_mdprt_bsel_dmpv, .-__asl_mdprt_bsel_dmpv
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_1w_dmpv
	.type	__asl_mdprt_bsel_1w_dmpv, @function
__asl_mdprt_bsel_1w_dmpv:
.LFB301:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-2, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	24(%esp), %esi
	movl	28(%esp), %eax
	movl	20(%esp), %ecx
	movl	32(%esp), %ebp
	movl	(%esi), %edi
	movl	%eax, %ebx
	shrl	%eax
	roll	%cl, %edx
	andl	$1, %ebx
	andl	$1, %eax
	sall	%cl, %ebx
	sall	%cl, %eax
	andl	%edx, %edi
	orl	%edi, %ebx
	movl	4(%esi), %edi
	andl	%edi, %edx
	orl	%edx, %eax
	cmpl	%ebx, (%esi)
	jne	.L3992
	cmpl	%eax, %edi
	je	.L3987
	movl	%eax, 4(%esi)
	movl	%ebp, 20(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.p2align 4,,10
	.p2align 3
.L3987:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3992:
	.cfi_restore_state
	movl	%ebx, (%esi)
	movl	%eax, 4(%esi)
	movl	%ebp, 20(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.cfi_endproc
.LFE301:
	.size	__asl_mdprt_bsel_1w_dmpv, .-__asl_mdprt_bsel_1w_dmpv
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_dmpv
	.type	__asl_mdprt_bsel_nchg_dmpv, @function
__asl_mdprt_bsel_nchg_dmpv:
.LFB302:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%edi, 12(%esp)
	movl	56(%esp), %ebx
	movl	12(%eax), %edx
	movl	16(%eax), %eax
	andl	$1, %ebx
	movl	12(%edx), %edx
	movl	12(%edx), %esi
	movl	16(%eax), %edx
	movl	__contab@GOT(%edi), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %edx
	movl	52(%esp), %eax
	movl	%edx, %ecx
	sarl	$5, %edx
	sall	$2, %edx
	andl	$31, %ecx
	addl	%edx, %eax
	sall	%cl, %ebx
	movl	%eax, %edi
	movl	$-2, %eax
	movl	(%edi), %ebp
	roll	%cl, %eax
	andl	%eax, %ebp
	orl	%ebp, %ebx
	movl	8(%esi), %ebp
	addl	$31, %ebp
	sarl	$5, %ebp
	leal	(%edx,%ebp,4), %ebp
	movl	56(%esp), %edx
	addl	52(%esp), %ebp
	shrl	%edx
	andl	$1, %edx
	sall	%cl, %edx
	cmpl	%ebx, (%edi)
	jne	.L3998
	movl	0(%ebp), %ecx
	andl	%ecx, %eax
	orl	%eax, %edx
	cmpl	%edx, %ecx
	je	.L3993
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%edx, 0(%ebp)
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	asl_loc_add_dmpv_chglst_el_mdprt
	movl	76(%esp), %eax
	movl	$1, (%eax)
	movl	$0, 28(%eax)
	movl	28(%esp), %eax
	movl	__nchg_futend@GOT(%eax), %eax
.L3997:
	movl	76(%esp), %esi
	movl	(%eax), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 28(%edx)
	movl	%esi, (%eax)
.L3993:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L3998:
	.cfi_restore_state
	movl	%ebx, (%edi)
	andl	0(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	orl	%eax, %edx
	movl	%edx, 0(%ebp)
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	asl_loc_add_dmpv_chglst_el_mdprt
	movl	76(%esp), %eax
	movl	28(%esp), %edi
	movl	$1, (%eax)
	movl	$0, 28(%eax)
	movl	__nchg_futend@GOT(%edi), %eax
	jmp	.L3997
	.cfi_endproc
.LFE302:
	.size	__asl_mdprt_bsel_nchg_dmpv, .-__asl_mdprt_bsel_nchg_dmpv
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_1w_dmpv
	.type	__asl_mdprt_bsel_nchg_1w_dmpv, @function
__asl_mdprt_bsel_nchg_1w_dmpv:
.LFB303:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-2, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	48(%esp), %ecx
	movl	56(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	60(%esp), %edi
	movl	(%esi), %eax
	roll	%cl, %edx
	movl	4(%esi), %ebp
	andl	$1, %ebx
	sall	%cl, %ebx
	andl	%edx, %eax
	andl	%ebp, %edx
	orl	%eax, %ebx
	movl	56(%esp), %eax
	shrl	%eax
	andl	$1, %eax
	sall	%cl, %eax
	orl	%edx, %eax
	cmpl	%ebx, (%esi)
	jne	.L4004
	cmpl	%ebp, %eax
	je	.L3999
.L4003:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 4(%esi)
	pushl	76(%esp)
	.cfi_def_cfa_offset 64
	call	asl_loc_add_dmpv_chglst_el_mdprt
	movl	28(%esp), %eax
	movl	$1, (%edi)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, 28(%edi)
	movl	__nchg_futend@GOT(%eax), %eax
	movl	(%eax), %edx
	movl	%edi, 28(%edx)
	movl	%edi, (%eax)
.L3999:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4004:
	.cfi_restore_state
	movl	%ebx, (%esi)
	jmp	.L4003
	.cfi_endproc
.LFE303:
	.size	__asl_mdprt_bsel_nchg_1w_dmpv, .-__asl_mdprt_bsel_nchg_1w_dmpv
	.p2align 4,,15
	.globl	__asl_add_dmpp_chglst_el
	.type	__asl_add_dmpp_chglst_el, @function
__asl_add_dmpp_chglst_el:
.LFB470:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__add_dp_chglst_el@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE470:
	.size	__asl_add_dmpp_chglst_el, .-__asl_add_dmpp_chglst_el
	.p2align 4,,15
	.globl	__asl_add_dmpp_chglst_el_mdprt
	.type	__asl_add_dmpp_chglst_el_mdprt, @function
__asl_add_dmpp_chglst_el_mdprt:
.LFB471:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %edx
	movl	__idp@GOT(%ebx), %eax
	movl	56(%edx), %ecx
	movl	(%eax), %eax
	movl	(%eax,%ecx,4), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.L4010
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4010:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%edx
	.cfi_def_cfa_offset 32
	call	__add_dp_chglst_el@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE471:
	.size	__asl_add_dmpp_chglst_el_mdprt, .-__asl_add_dmpp_chglst_el_mdprt
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_dmpp
	.type	__asl_mdprt_bsel_dmpp, @function
__asl_mdprt_bsel_dmpp:
.LFB304:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %eax
	movl	24(%esp), %edi
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	28(%esp), %ebx
	movl	12(%eax), %edx
	movl	16(%eax), %eax
	andl	$1, %ebx
	movl	12(%edx), %edx
	movl	12(%edx), %esi
	movl	16(%eax), %edx
	movl	__contab@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %edx
	movl	$-2, %eax
	movl	%edx, %ecx
	sarl	$5, %edx
	sall	$2, %edx
	andl	$31, %ecx
	addl	%edx, %edi
	roll	%cl, %eax
	sall	%cl, %ebx
	movl	(%edi), %ebp
	andl	%eax, %ebp
	orl	%ebp, %ebx
	movl	8(%esi), %ebp
	addl	$31, %ebp
	sarl	$5, %ebp
	leal	(%edx,%ebp,4), %ebp
	movl	28(%esp), %edx
	addl	24(%esp), %ebp
	shrl	%edx
	andl	$1, %edx
	sall	%cl, %edx
	cmpl	%ebx, (%edi)
	jne	.L4016
	movl	0(%ebp), %ecx
	andl	%ecx, %eax
	orl	%edx, %eax
	cmpl	%eax, %ecx
	je	.L4011
	movl	%eax, 0(%ebp)
	movl	%esi, 20(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__asl_add_dmpp_chglst_el_mdprt
	.p2align 4,,10
	.p2align 3
.L4011:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4016:
	.cfi_restore_state
	movl	%ebx, (%edi)
	andl	0(%ebp), %eax
	orl	%eax, %edx
	movl	%edx, 0(%ebp)
	movl	%esi, 20(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__asl_add_dmpp_chglst_el_mdprt
	.cfi_endproc
.LFE304:
	.size	__asl_mdprt_bsel_dmpp, .-__asl_mdprt_bsel_dmpp
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_1w_dmpp
	.type	__asl_mdprt_bsel_1w_dmpp, @function
__asl_mdprt_bsel_1w_dmpp:
.LFB305:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-2, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	24(%esp), %esi
	movl	28(%esp), %eax
	movl	20(%esp), %ecx
	movl	32(%esp), %ebp
	movl	(%esi), %edi
	movl	%eax, %ebx
	shrl	%eax
	roll	%cl, %edx
	andl	$1, %ebx
	andl	$1, %eax
	sall	%cl, %ebx
	sall	%cl, %eax
	andl	%edx, %edi
	orl	%edi, %ebx
	movl	4(%esi), %edi
	andl	%edi, %edx
	orl	%edx, %eax
	cmpl	%ebx, (%esi)
	jne	.L4022
	cmpl	%eax, %edi
	je	.L4017
	movl	%eax, 4(%esi)
	movl	%ebp, 20(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__asl_add_dmpp_chglst_el_mdprt
	.p2align 4,,10
	.p2align 3
.L4017:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4022:
	.cfi_restore_state
	movl	%ebx, (%esi)
	movl	%eax, 4(%esi)
	movl	%ebp, 20(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__asl_add_dmpp_chglst_el_mdprt
	.cfi_endproc
.LFE305:
	.size	__asl_mdprt_bsel_1w_dmpp, .-__asl_mdprt_bsel_1w_dmpp
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_dmpp
	.type	__asl_mdprt_bsel_nchg_dmpp, @function
__asl_mdprt_bsel_nchg_dmpp:
.LFB306:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.di
	addl	$_GLOBAL_OFFSET_TABLE_, %edi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%edi, 12(%esp)
	movl	56(%esp), %ebx
	movl	12(%eax), %edx
	movl	16(%eax), %eax
	andl	$1, %ebx
	movl	12(%edx), %edx
	movl	12(%edx), %esi
	movl	16(%eax), %edx
	movl	__contab@GOT(%edi), %eax
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %edx
	movl	52(%esp), %eax
	movl	%edx, %ecx
	sarl	$5, %edx
	sall	$2, %edx
	andl	$31, %ecx
	addl	%edx, %eax
	sall	%cl, %ebx
	movl	%eax, %edi
	movl	$-2, %eax
	movl	(%edi), %ebp
	roll	%cl, %eax
	andl	%eax, %ebp
	orl	%ebp, %ebx
	movl	8(%esi), %ebp
	addl	$31, %ebp
	sarl	$5, %ebp
	leal	(%edx,%ebp,4), %ebp
	movl	56(%esp), %edx
	addl	52(%esp), %ebp
	shrl	%edx
	andl	$1, %edx
	sall	%cl, %edx
	cmpl	%ebx, (%edi)
	jne	.L4028
	movl	0(%ebp), %ecx
	andl	%ecx, %eax
	orl	%eax, %edx
	cmpl	%edx, %ecx
	je	.L4023
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%edx, 0(%ebp)
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__asl_add_dmpp_chglst_el_mdprt
	movl	76(%esp), %eax
	movl	$1, (%eax)
	movl	$0, 28(%eax)
	movl	28(%esp), %eax
	movl	__nchg_futend@GOT(%eax), %eax
.L4027:
	movl	76(%esp), %esi
	movl	(%eax), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 28(%edx)
	movl	%esi, (%eax)
.L4023:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4028:
	.cfi_restore_state
	movl	%ebx, (%edi)
	andl	0(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	orl	%eax, %edx
	movl	%edx, 0(%ebp)
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	__asl_add_dmpp_chglst_el_mdprt
	movl	76(%esp), %eax
	movl	28(%esp), %edi
	movl	$1, (%eax)
	movl	$0, 28(%eax)
	movl	__nchg_futend@GOT(%edi), %eax
	jmp	.L4027
	.cfi_endproc
.LFE306:
	.size	__asl_mdprt_bsel_nchg_dmpp, .-__asl_mdprt_bsel_nchg_dmpp
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_1w_dmpp
	.type	__asl_mdprt_bsel_nchg_1w_dmpp, @function
__asl_mdprt_bsel_nchg_1w_dmpp:
.LFB307:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-2, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	48(%esp), %ecx
	movl	56(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	60(%esp), %edi
	movl	(%esi), %eax
	roll	%cl, %edx
	movl	4(%esi), %ebp
	andl	$1, %ebx
	sall	%cl, %ebx
	andl	%edx, %eax
	andl	%ebp, %edx
	orl	%eax, %ebx
	movl	56(%esp), %eax
	shrl	%eax
	andl	$1, %eax
	sall	%cl, %eax
	orl	%edx, %eax
	cmpl	%ebx, (%esi)
	jne	.L4034
	cmpl	%ebp, %eax
	je	.L4029
.L4033:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 4(%esi)
	pushl	76(%esp)
	.cfi_def_cfa_offset 64
	call	__asl_add_dmpp_chglst_el_mdprt
	movl	28(%esp), %eax
	movl	$1, (%edi)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, 28(%edi)
	movl	__nchg_futend@GOT(%eax), %eax
	movl	(%eax), %edx
	movl	%edi, 28(%edx)
	movl	%edi, (%eax)
.L4029:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4034:
	.cfi_restore_state
	movl	%ebx, (%esi)
	jmp	.L4033
	.cfi_endproc
.LFE307:
	.size	__asl_mdprt_bsel_nchg_1w_dmpp, .-__asl_mdprt_bsel_nchg_1w_dmpp
	.p2align 4,,15
	.globl	__asl_add_togglelst_el_port
	.type	__asl_add_togglelst_el_port, @function
__asl_add_togglelst_el_port:
.LFB472:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__tgl_record_on@GOT(%eax), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	je	.L4044
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %edx
	movl	124(%edx), %edx
	testl	%edx, %edx
	je	.L4035
	movl	4(%edx), %ecx
	testl	%ecx, %ecx
	je	.L4035
	movl	__idp@GOT(%eax), %ebx
	movl	(%ebx), %ebx
	movl	(%ebx), %esi
	leal	(%ecx,%esi,4), %ecx
	movl	(%ecx), %esi
	testl	%esi, %esi
	jne	.L4035
	movl	$1, (%ecx)
	movl	(%edx), %edx
	movl	(%ebx,%edx,4), %ecx
	movl	__toggle_chghdr@GOT(%eax), %edx
	movl	__slotend_action@GOT(%eax), %eax
	movl	(%edx), %ebx
	movl	%ecx, (%edx)
	orl	$65536, (%eax)
	movl	%ebx, 24(%ecx)
.L4035:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4044:
	rep ret
	.cfi_endproc
.LFE472:
	.size	__asl_add_togglelst_el_port, .-__asl_add_togglelst_el_port
	.p2align 4,,15
	.globl	__asl_process_mipd_nchg_ev
	.type	__asl_process_mipd_nchg_ev, @function
__asl_process_mipd_nchg_ev:
.LFB473:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ecx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	.L4048
	leal	(%eax,%eax,4), %edx
	sall	$2, %edx
.L4048:
	movl	48(%ecx), %edi
	movl	__idp@GOT(%ebx), %esi
	movl	16(%edi), %edi
	movl	(%esi), %esi
	movl	12(%edi,%edx), %edx
	movl	(%esi), %edi
	movl	$0, (%edx,%edi,4)
	movl	56(%ecx), %edx
	testb	$8, (%esi,%edx,4)
	jne	.L4047
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	pushl	%eax
	.cfi_def_cfa_offset 24
	pushl	%eax
	.cfi_def_cfa_offset 28
	pushl	%ecx
	.cfi_def_cfa_offset 32
	call	__add_select_nchglst_el@PLT
	movl	__nchg_futend@GOT(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	(%eax), %eax
	movl	$1, 8(%eax)
.L4047:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE473:
	.size	__asl_process_mipd_nchg_ev, .-__asl_process_mipd_nchg_ev
	.p2align 4,,15
	.globl	__asl_process_mipd_scalar_nchg_ev
	.type	__asl_process_mipd_scalar_nchg_ev, @function
__asl_process_mipd_scalar_nchg_ev:
.LFB474:
	.cfi_startproc
	movl	4(%esp), %eax
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L4054
	movl	__nchg_futend@GOT(%edx), %edx
	movl	$1, (%eax)
	movl	$0, 28(%eax)
	movl	(%edx), %ecx
	movl	%eax, (%edx)
	movl	%eax, 28(%ecx)
	movl	$1, 8(%eax)
.L4054:
	rep ret
	.cfi_endproc
.LFE474:
	.size	__asl_process_mipd_scalar_nchg_ev, .-__asl_process_mipd_scalar_nchg_ev
	.p2align 4,,15
	.globl	__asl_force_active
	.type	__asl_force_active, @function
__asl_force_active:
.LFB545:
	.cfi_startproc
	jmp	__asl_qc_active
	.cfi_endproc
.LFE545:
	.size	__asl_force_active, .-__asl_force_active
	.p2align 4,,15
	.globl	__asl_rhs_psel
	.type	__asl_rhs_psel, @function
__asl_rhs_psel:
.LFB476:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %edx
	movl	76(%esp), %esi
	movl	%gs:20, %ecx
	movl	%ecx, 28(%esp)
	xorl	%ecx, %ecx
	movl	64(%esp), %eax
	movl	68(%esp), %edi
	leal	(%edx,%esi), %ecx
	cmpl	$32, %ecx
	jle	.L4059
	movl	%edx, %ecx
	andl	$31, %edx
	sarl	$5, %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	addl	%ecx, %edi
	leal	(%esi,%edx), %ecx
	cmpl	$32, %ecx
	jle	.L4059
	testl	%edx, %edx
	je	.L4064
	movl	__masktab@GOT(%ebx), %ecx
	movl	$32, %ebp
	subl	%edx, %ebp
	movl	(%ecx,%esi,4), %ebx
	movl	(%eax), %esi
	movl	%edx, %ecx
	movl	4(%eax), %eax
	shrl	%cl, %esi
	movl	%ebp, %ecx
	sall	%cl, %eax
	movl	%edx, %ecx
	orl	%esi, %eax
	movl	(%edi), %esi
	andl	%ebx, %eax
	shrl	%cl, %esi
	movl	%ebp, %ecx
	movl	%esi, %edx
	movl	4(%edi), %esi
	sall	%cl, %esi
	orl	%esi, %edx
	andl	%edx, %ebx
#APP
# 13107 "v_aslib.c" 1
	movl %ebx, %ecx
# 0 "" 2
#NO_APP
	jmp	.L4057
	.p2align 4,,10
	.p2align 3
.L4059:
	movl	__masktab@GOT(%ebx), %ecx
	movl	(%eax), %eax
	movl	(%edi), %ebx
	movl	(%ecx,%esi,4), %esi
	movl	%edx, %ecx
	shrl	%cl, %eax
	shrl	%cl, %ebx
	andl	%esi, %eax
	andl	%esi, %ebx
#APP
# 13070 "v_aslib.c" 1
	movl %ebx, %ecx
# 0 "" 2
#NO_APP
.L4057:
	movl	28(%esp), %edi
	xorl	%gs:20, %edi
	jne	.L4065
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4064:
	.cfi_restore_state
	leal	31(%esi), %ebp
	pushl	$4
	.cfi_def_cfa_offset 68
	andl	$31, %esi
	sarl	$5, %ebp
	sall	$2, %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	32(%esp), %ecx
	pushl	%ecx
	.cfi_def_cfa_offset 80
	movl	%ecx, 28(%esp)
	call	__memmove_chk@PLT
	movl	28(%esp), %ecx
	movl	__masktab@GOT(%ebx), %eax
	leal	-4(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	(%eax,%esi,4), %esi
	andl	%esi, (%ecx,%edx)
	pushl	$4
	.cfi_def_cfa_offset 84
	pushl	%ebp
	.cfi_def_cfa_offset 88
	pushl	%edi
	.cfi_def_cfa_offset 92
	leal	52(%esp), %edi
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	__memmove_chk@PLT
	movl	44(%esp), %edx
	andl	%esi, (%edi,%edx)
#APP
# 13092 "v_aslib.c" 1
	movl 56(%esp), %ecx
# 0 "" 2
#NO_APP
	movl	52(%esp), %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	jmp	.L4057
.L4065:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE476:
	.size	__asl_rhs_psel, .-__asl_rhs_psel
	.p2align 4,,15
	.globl	__asl_rhs_psel_2state
	.type	__asl_rhs_psel_2state, @function
__asl_rhs_psel_2state:
.LFB477:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %edx
	movl	56(%esp), %esi
	movl	%gs:20, %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	movl	48(%esp), %edi
	leal	(%edx,%esi), %eax
	cmpl	$32, %eax
	jle	.L4068
	movl	%edx, %eax
	andl	$31, %edx
	sarl	$5, %eax
	leal	(%edi,%eax,4), %edi
	leal	(%esi,%edx), %eax
	cmpl	$32, %eax
	jle	.L4068
	testl	%edx, %edx
	je	.L4073
	movl	4(%edi), %eax
	movl	$32, %ecx
	movl	(%edi), %edi
	subl	%edx, %ecx
	sall	%cl, %eax
	movl	%edx, %ecx
	movl	__masktab@GOT(%ebx), %edx
	shrl	%cl, %edi
	orl	%edi, %eax
	andl	(%edx,%esi,4), %eax
	jmp	.L4066
	.p2align 4,,10
	.p2align 3
.L4068:
	movl	%edx, %ecx
	movl	(%edi), %eax
	movl	__masktab@GOT(%ebx), %edx
	shrl	%cl, %eax
	andl	(%edx,%esi,4), %eax
.L4066:
	movl	12(%esp), %ebx
	xorl	%gs:20, %ebx
	jne	.L4074
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4073:
	.cfi_restore_state
	leal	31(%esi), %ebp
	pushl	$4
	.cfi_def_cfa_offset 52
	andl	$31, %esi
	sarl	$5, %ebp
	sall	$2, %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 56
	pushl	%edi
	.cfi_def_cfa_offset 60
	leal	20(%esp), %edi
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	__memmove_chk@PLT
	movl	__masktab@GOT(%ebx), %eax
	movl	(%eax,%esi,4), %eax
	andl	%eax, -4(%edi,%ebp)
	movl	24(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L4066
.L4074:
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE477:
	.size	__asl_rhs_psel_2state, .-__asl_rhs_psel_2state
	.p2align 4,,15
	.globl	__asl_rhs_st_psel
	.type	__asl_rhs_st_psel, @function
__asl_rhs_st_psel:
.LFB541:
	.cfi_startproc
	jmp	__asl_movabw_fr_svec
	.cfi_endproc
.LFE541:
	.size	__asl_rhs_st_psel, .-__asl_rhs_st_psel
	.p2align 4,,15
	.globl	__asl_rhs_psel_wide
	.type	__asl_rhs_psel_wide, @function
__asl_rhs_psel_wide:
.LFB479:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	68(%esp), %edx
	movl	64(%esp), %eax
	movl	56(%esp), %ebp
	movl	60(%esp), %edi
	addl	%eax, %edx
	cmpl	$32, %edx
	jle	.L4078
	movl	%eax, %edx
	andl	$31, %eax
	sarl	$5, %edx
	sall	$2, %edx
	addl	%edx, %ebp
	addl	%edx, %edi
	movl	68(%esp), %edx
	addl	%eax, %edx
	cmpl	$32, %edx
	jle	.L4078
	testl	%eax, %eax
	je	.L4085
	movl	$32, %edx
	movl	0(%ebp), %esi
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	$32, 68(%esp)
	movl	%ecx, (%esp)
	jle	.L4081
	movl	%eax, 64(%esp)
	movl	48(%esp), %ebx
	addl	$4, %ebp
	movl	52(%esp), %edx
	addl	$4, %edi
	movl	%ecx, %eax
	jmp	.L4082
	.p2align 4,,10
	.p2align 3
.L4086:
	movzbl	(%esp), %ecx
	movl	0(%ebp), %esi
	addl	$32, %eax
	addl	$4, %edi
	sall	%cl, %esi
	movzbl	(%esp), %ecx
	orl	%esi, (%ebx)
	movl	-4(%edi), %esi
	addl	$4, %ebx
	sall	%cl, %esi
	orl	%esi, (%edx)
	movl	%eax, %esi
	subl	(%esp), %esi
	addl	$4, %edx
	cmpl	%esi, 68(%esp)
	jle	.L4083
	movl	0(%ebp), %esi
	addl	$4, %ebp
.L4082:
	movzbl	64(%esp), %ecx
	movl	%ebx, 8(%esp)
	movl	%edx, 12(%esp)
	shrl	%cl, %esi
	movl	%esi, (%ebx)
	movl	-4(%edi), %esi
	shrl	%cl, %esi
	cmpl	%eax, 68(%esp)
	movl	%esi, (%edx)
	jg	.L4086
.L4083:
	movl	4(%esp), %edi
	movl	68(%esp), %eax
	movl	12(%esp), %esi
	movl	__masktab@GOT(%edi), %edx
	movl	8(%esp), %edi
	andl	$31, %eax
	movl	(%edx,%eax,4), %eax
	andl	%eax, (%edi)
	andl	%eax, (%esi)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4078:
	.cfi_restore_state
	movl	4(%esp), %ebx
	movl	%eax, %ecx
	movl	48(%esp), %esi
	movl	52(%esp), %eax
	movl	__masktab@GOT(%ebx), %edx
	movl	68(%esp), %ebx
	movl	(%edx,%ebx,4), %edx
	movl	0(%ebp), %ebx
	shrl	%cl, %ebx
	andl	%edx, %ebx
	movl	%ebx, (%esi)
	movl	(%edi), %ebx
	shrl	%cl, %ebx
	andl	%ebx, %edx
	movl	%edx, (%eax)
.L4076:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4081:
	.cfi_restore_state
	movl	48(%esp), %ebx
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, (%ebx)
	movl	4(%esp), %ebx
	movl	__masktab@GOT(%ebx), %edx
	movl	68(%esp), %ebx
	movl	(%edx,%ebx,4), %edx
	movl	4(%ebp), %ebx
	movl	(%esp), %ebp
	movl	%ebp, %ecx
	sall	%cl, %ebx
	movl	%eax, %ecx
	movl	52(%esp), %eax
	orl	%ebx, %esi
	movl	48(%esp), %ebx
	andl	%edx, %esi
	movl	%esi, (%ebx)
	movl	(%edi), %ebx
	shrl	%cl, %ebx
	movl	%ebp, %ecx
	movl	%ebx, (%eax)
	movl	4(%edi), %eax
	sall	%cl, %eax
	orl	%ebx, %eax
	andl	%eax, %edx
	movl	52(%esp), %eax
	movl	%edx, (%eax)
	jmp	.L4076
	.p2align 4,,10
	.p2align 3
.L4085:
	movl	68(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	leal	31(%eax), %esi
	sarl	$5, %esi
	sall	$2, %esi
	pushl	%esi
	.cfi_def_cfa_offset 56
	pushl	%ebp
	.cfi_def_cfa_offset 60
	leal	-4(%esi), %ebp
	pushl	60(%esp)
	.cfi_def_cfa_offset 64
	movl	20(%esp), %ebx
	call	memmove@PLT
	movl	20(%esp), %ebx
	movl	84(%esp), %edx
	movl	__masktab@GOT(%ebx), %eax
	andl	$31, %edx
	movl	(%eax,%edx,4), %edx
	movl	64(%esp), %eax
	andl	%edx, (%eax,%ebp)
	movl	%edx, 16(%esp)
	addl	$12, %esp
	.cfi_def_cfa_offset 52
	pushl	%esi
	.cfi_def_cfa_offset 56
	pushl	%edi
	.cfi_def_cfa_offset 60
	pushl	64(%esp)
	.cfi_def_cfa_offset 64
	call	memmove@PLT
	movl	68(%esp), %eax
	movl	16(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	andl	%edx, (%eax,%ebp)
	jmp	.L4076
	.cfi_endproc
.LFE479:
	.size	__asl_rhs_psel_wide, .-__asl_rhs_psel_wide
	.p2align 4,,15
	.globl	__asl_rhs_psel_wide_2state
	.type	__asl_rhs_psel_wide_2state, @function
__asl_rhs_psel_wide_2state:
.LFB480:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	60(%esp), %edi
	movl	56(%esp), %eax
	movl	48(%esp), %esi
	movl	52(%esp), %edx
	leal	(%eax,%edi), %ecx
	cmpl	$32, %ecx
	jle	.L4089
	movl	%eax, %ecx
	andl	$31, %eax
	sarl	$5, %ecx
	leal	(%edx,%ecx,4), %edx
	leal	(%edi,%eax), %ecx
	cmpl	$32, %ecx
	jle	.L4089
	testl	%eax, %eax
	je	.L4096
	movl	$32, %ecx
	movl	(%edx), %ebp
	subl	%eax, %ecx
	cmpl	$32, %edi
	movl	%ecx, %ebx
	jle	.L4092
	addl	$4, %edx
	movl	%eax, 56(%esp)
	movl	%ecx, 8(%esp)
	jmp	.L4093
	.p2align 4,,10
	.p2align 3
.L4097:
	movzbl	8(%esp), %ecx
	movl	(%edx), %eax
	addl	$32, %ebx
	addl	$4, %esi
	sall	%cl, %eax
	movl	%ebx, %ecx
	subl	8(%esp), %ecx
	orl	%eax, %ebp
	movl	%ebp, -4(%esi)
	cmpl	%ecx, %edi
	jle	.L4094
	movl	(%edx), %ebp
	addl	$4, %edx
.L4093:
	movzbl	56(%esp), %ecx
	movl	%esi, 12(%esp)
	shrl	%cl, %ebp
	cmpl	%ebx, %edi
	movl	%ebp, (%esi)
	jg	.L4097
.L4094:
	movl	4(%esp), %eax
	andl	$31, %edi
	movl	__masktab@GOT(%eax), %eax
	andl	(%eax,%edi,4), %ebp
	movl	12(%esp), %eax
	movl	%ebp, (%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4089:
	.cfi_restore_state
	movl	%eax, %ecx
	movl	4(%esp), %eax
	movl	(%edx), %edx
	movl	__masktab@GOT(%eax), %eax
	shrl	%cl, %edx
	andl	(%eax,%edi,4), %edx
	movl	%edx, (%esi)
.L4087:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4092:
	.cfi_restore_state
	movl	%eax, %ecx
	shrl	%cl, %ebp
	movl	%ebx, %ecx
	movl	%ebp, (%esi)
	movl	4(%edx), %eax
	sall	%cl, %eax
	orl	%eax, %ebp
	movl	4(%esp), %eax
	movl	__masktab@GOT(%eax), %eax
	andl	(%eax,%edi,4), %ebp
	movl	%ebp, (%esi)
	jmp	.L4087
	.p2align 4,,10
	.p2align 3
.L4096:
	leal	31(%edi), %ebp
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	andl	$31, %edi
	sarl	$5, %ebp
	sall	$2, %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	movl	20(%esp), %ebx
	call	memmove@PLT
	movl	20(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	__masktab@GOT(%eax), %eax
	movl	(%eax,%edi,4), %eax
	andl	%eax, -4(%esi,%ebp)
	jmp	.L4087
	.cfi_endproc
.LFE480:
	.size	__asl_rhs_psel_wide_2state, .-__asl_rhs_psel_wide_2state
	.p2align 4,,15
	.globl	__asl_random_with_seed
	.type	__asl_random_with_seed, @function
__asl_random_with_seed:
.LFB481:
	.cfi_startproc
	movl	4(%esp), %eax
	jmp	asl_loc_rtl_dist_uniform.part.1.constprop.22
	.cfi_endproc
.LFE481:
	.size	__asl_random_with_seed, .-__asl_random_with_seed
	.p2align 4,,15
	.globl	__asl_random
	.type	__asl_random, @function
__asl_random:
.LFB482:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	__seed@GOT(%eax), %eax
	jmp	asl_loc_rtl_dist_uniform.part.1.constprop.22
	.cfi_endproc
.LFE482:
	.size	__asl_random, .-__asl_random
	.p2align 4,,15
	.globl	__asl_free_next_event
	.type	__asl_free_next_event, @function
__asl_free_next_event:
.LFB485:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__cur_tevp@GOT(%ebx), %eax
	movl	__free_tev_ndx@GOT(%ebx), %ebp
	movl	__free_tevs@GOT(%ebx), %ecx
	movl	(%eax), %edx
	movl	%eax, 8(%esp)
	movl	0(%ebp), %eax
	movl	%ecx, 12(%esp)
	movl	(%ecx), %ecx
	movl	44(%edx), %esi
	leal	0(,%eax,4), %edi
	movl	%edi, 4(%esp)
	movl	__free_tev_size@GOT(%ebx), %edi
	cmpl	(%edi), %eax
	je	.L4103
.L4101:
	addl	$1, %eax
	movl	%eax, 0(%ebp)
	movl	4(%esp), %eax
	movl	%edx, (%ecx,%eax)
	movl	8(%esp), %eax
	movl	32(%esi), %edx
	movl	%esi, (%eax)
	movl	__idp@GOT(%ebx), %eax
	movl	%edx, (%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4103:
	.cfi_restore_state
	movl	%eax, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%edx, %eax
	movl	%eax, (%edi)
	sall	$2, %eax
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	12(%esp)
	.cfi_def_cfa_offset 60
	pushl	%ecx
	.cfi_def_cfa_offset 64
	call	__my_realloc@PLT
	movl	%eax, %ecx
	movl	28(%esp), %eax
	movl	%ecx, (%eax)
	movl	0(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, 20(%esp)
	movl	24(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	(%edx), %edx
	jmp	.L4101
	.cfi_endproc
.LFE485:
	.size	__asl_free_next_event, .-__asl_free_next_event
	.p2align 4,,15
	.globl	__garbage_calls
	.type	__garbage_calls, @function
__garbage_calls:
.LFB490:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	asl_loc_nb_conflict_list
	xorl	%edx, %edx
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	asl_loc_conflict_list
	.cfi_endproc
.LFE490:
	.size	__garbage_calls, .-__garbage_calls
	.p2align 4,,15
	.globl	__asl_misc_terr
	.type	__asl_misc_terr, @function
__asl_misc_terr:
.LFB495:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	$14212
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	__misc_terr@PLT
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE495:
	.size	__asl_misc_terr, .-__asl_misc_terr
	.p2align 4,,15
	.globl	__asl_st_string_const
	.type	__asl_st_string_const, @function
__asl_st_string_const:
.LFB496:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %edi
	movl	40(%esp), %esi
	testb	$16, 2(%edi)
	jne	.L4116
.L4109:
	testl	%esi, %esi
	jle	.L4108
	movl	__idp@GOT(%ebx), %eax
	movl	24(%edi), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %edi
	movl	8(%edi), %edx
	movl	(%edi), %eax
	cmpl	%edx, %esi
	jg	.L4117
.L4111:
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	pushl	%esi
	.cfi_def_cfa_offset 40
	pushl	44(%esp)
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	strncpy@PLT
	movl	%esi, 4(%edi)
	addl	$16, %esp
	.cfi_def_cfa_offset 32
.L4108:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4117:
	.cfi_restore_state
	leal	(%esi,%esi), %ebp
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	pushl	%ebp
	.cfi_def_cfa_offset 40
	pushl	%edx
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	__my_realloc@PLT
	movl	%ebp, 8(%edi)
	movl	%eax, (%edi)
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L4111
	.p2align 4,,10
	.p2align 3
.L4116:
	leal	.LC3@GOTOFF(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	$14510
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	__misc_terr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	jmp	.L4109
	.cfi_endproc
.LFE496:
	.size	__asl_st_string_const, .-__asl_st_string_const
	.p2align 4,,15
	.globl	__asl_st_string_var
	.type	__asl_st_string_var, @function
__asl_st_string_var:
.LFB497:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	24(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	24(%edx), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %eax
	pushl	4(%eax)
	.cfi_def_cfa_offset 24
	pushl	(%eax)
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__asl_st_string_const
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE497:
	.size	__asl_st_string_var, .-__asl_st_string_var
	.p2align 4,,15
	.globl	__asl_st_string_rhsx
	.type	__asl_st_string_rhsx, @function
__asl_st_string_rhsx:
.LFB498:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	pushl	32(%esp)
	.cfi_def_cfa_offset 32
	call	__eval2_xpr@PLT
	movl	(%eax), %ecx
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	leal	14(%ecx), %edx
	addl	$7, %ecx
	cmovns	%ecx, %edx
	sarl	$3, %edx
	pushl	%edx
	.cfi_def_cfa_offset 24
	pushl	8(%eax)
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	__asl_st_string_const
	movl	__xspi@GOT(%ebx), %eax
	subl	$1, (%eax)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE498:
	.size	__asl_st_string_rhsx, .-__asl_st_string_rhsx
	.p2align 4,,15
	.globl	__asl_st_string_byte
	.type	__asl_st_string_byte, @function
__asl_st_string_byte:
.LFB499:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	4(%esp), %edx
	movl	8(%esp), %ecx
	movl	__idp@GOT(%eax), %eax
	movl	24(%edx), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %edx
	movl	4(%edx), %eax
	cmpl	%ecx, %eax
	jl	.L4122
	subl	%ecx, %eax
	movl	12(%esp), %ecx
	movl	(%edx), %edx
	movl	(%ecx), %ecx
	movb	%cl, -1(%eax,%edx)
.L4122:
	rep ret
	.cfi_endproc
.LFE499:
	.size	__asl_st_string_byte, .-__asl_st_string_byte
	.p2align 4,,15
	.globl	__asl_st_string_array_const
	.type	__asl_st_string_array_const, @function
__asl_st_string_array_const:
.LFB500:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	cmpl	$-1, %edx
	je	.L4124
	movl	%ebx, 8(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__asl_st_string_array_const.part.21
	.p2align 4,,10
	.p2align 3
.L4124:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE500:
	.size	__asl_st_string_array_const, .-__asl_st_string_array_const
	.p2align 4,,15
	.globl	__asl_st_string_array_var
	.type	__asl_st_string_array_var, @function
__asl_st_string_array_var:
.LFB501:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %edx
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	cmpl	$-1, %edx
	je	.L4127
	movl	__idp@GOT(%ecx), %ecx
	movl	24(%ebx), %ebx
	movl	(%ecx), %ecx
	leal	(%ecx,%ebx,4), %ecx
	movl	4(%ecx), %ebx
	movl	%ebx, 8(%esp)
	movl	(%ecx), %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__asl_st_string_array_const.part.21
	.p2align 4,,10
	.p2align 3
.L4127:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE501:
	.size	__asl_st_string_array_var, .-__asl_st_string_array_var
	.p2align 4,,15
	.globl	__asl_st_string_array_rhsx
	.type	__asl_st_string_array_rhsx, @function
__asl_st_string_array_rhsx:
.LFB502:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movl	36(%esp), %esi
	pushl	32(%esp)
	.cfi_def_cfa_offset 32
	call	__eval2_xpr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	cmpl	$-1, %esi
	je	.L4131
	movl	(%eax), %edx
	movl	8(%eax), %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	leal	14(%edx), %eax
	addl	$7, %edx
	cmovns	%edx, %eax
	movl	%esi, %edx
	sarl	$3, %eax
	pushl	%eax
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	call	__asl_st_string_array_const.part.21
	addl	$16, %esp
	.cfi_def_cfa_offset 16
.L4131:
	movl	__xspi@GOT(%ebx), %eax
	subl	$1, (%eax)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE502:
	.size	__asl_st_string_array_rhsx, .-__asl_st_string_array_rhsx
	.p2align 4,,15
	.globl	__asl_get_string_byte
	.type	__asl_get_string_byte, @function
__asl_get_string_byte:
.LFB503:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	__idp@GOT(%eax), %eax
	movl	12(%esp), %ebx
	movl	24(%edx), %edx
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movl	4(%ecx), %edx
	cmpl	%ebx, %edx
	jl	.L4136
	movl	(%ecx), %eax
	subl	%ebx, %edx
	movsbl	-1(%edx,%eax), %eax
.L4136:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE503:
	.size	__asl_get_string_byte, .-__asl_get_string_byte
	.p2align 4,,15
	.globl	__asl_sv_dpi_string
	.type	__asl_sv_dpi_string, @function
__asl_sv_dpi_string:
.LFB504:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 44
	movl	%gs:20, %eax
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	pushl	44(%esp)
	.cfi_def_cfa_offset 48
	call	__eval2_xpr@PLT
	addl	$12, %esp
	.cfi_def_cfa_offset 36
	leal	12(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 40
	pushl	(%eax)
	.cfi_def_cfa_offset 44
	pushl	8(%eax)
	.cfi_def_cfa_offset 48
	call	__vval_to_vstr@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	12(%esp), %ecx
	xorl	%gs:20, %ecx
	jne	.L4144
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L4144:
	.cfi_restore_state
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE504:
	.size	__asl_sv_dpi_string, .-__asl_sv_dpi_string
	.p2align 4,,15
	.globl	__asl_sv_dpi_string_store
	.type	__asl_sv_dpi_string_store, @function
__asl_sv_dpi_string_store:
.LFB505:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	64(%esp), %eax
	movl	(%eax), %edi
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	strlen@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L4145
	movl	%eax, %esi
	movl	48(%esp), %eax
	movl	24(%eax), %edx
	movl	__idp@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%eax,%edx,4), %ebp
	movl	8(%ebp), %ecx
	movl	0(%ebp), %eax
	cmpl	%ecx, %esi
	jg	.L4154
.L4147:
	movb	$0, (%eax,%esi)
	leal	-1(%eax,%esi), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L4148:
	movzbl	(%edi,%eax), %edx
	addl	$1, %eax
	subl	$1, %ecx
	movb	%dl, 1(%ecx)
	cmpl	%eax, %esi
	jg	.L4148
	movl	%esi, 4(%ebp)
.L4145:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4154:
	.cfi_restore_state
	leal	(%esi,%esi), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%edx
	.cfi_def_cfa_offset 56
	movl	%edx, 20(%esp)
	pushl	%ecx
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	__my_realloc@PLT
	movl	28(%esp), %edx
	movl	%eax, 0(%ebp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%edx, 8(%ebp)
	jmp	.L4147
	.cfi_endproc
.LFE505:
	.size	__asl_sv_dpi_string_store, .-__asl_sv_dpi_string_store
	.p2align 4,,15
	.globl	__asl_string_binop
	.type	__asl_string_binop, @function
__asl_string_binop:
.LFB506:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %esi
	pushl	12(%esi)
	.cfi_def_cfa_offset 48
	call	__eval2_xpr@PLT
	movl	%eax, %edi
	popl	%eax
	.cfi_def_cfa_offset 44
	pushl	16(%esi)
	.cfi_def_cfa_offset 48
	call	__eval2_xpr@PLT
	movzwl	(%esi), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	(%edi), %edx
	addw	$921, %cx
	andw	$1023, %cx
	cmpw	$5, %cx
	ja	.L4186
	movzwl	%cx, %ecx
	movl	%eax, %ebp
	movl	.L4158@GOTOFF(%ebx,%ecx,4), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L4158:
	.long	.L4157@GOTOFF
	.long	.L4159@GOTOFF
	.long	.L4160@GOTOFF
	.long	.L4161@GOTOFF
	.long	.L4162@GOTOFF
	.long	.L4163@GOTOFF
	.text
	.p2align 4,,10
	.p2align 3
.L4162:
	xorl	%eax, %eax
	cmpl	%edx, 0(%ebp)
	je	.L4209
.L4156:
	movl	__xspi@GOT(%ebx), %edx
	subl	$2, (%edx)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4163:
	.cfi_restore_state
	cmpl	%edx, 0(%ebp)
	movl	$1, %eax
	jne	.L4156
	addl	$31, %edx
	movl	8(%ebp), %ecx
	movl	8(%edi), %esi
	sarl	$5, %edx
	subl	$1, %edx
	js	.L4186
	movl	(%esi,%edx,4), %edi
	cmpl	%edi, (%ecx,%edx,4)
	je	.L4184
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4185:
	movl	(%ecx,%edx,4), %eax
	cmpl	%eax, (%esi,%edx,4)
	jne	.L4202
.L4184:
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	.L4185
	.p2align 4,,10
	.p2align 3
.L4186:
	xorl	%eax, %eax
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4157:
	cmpl	%edx, 0(%ebp)
	movl	$1, %eax
	jl	.L4156
	addl	$31, %edx
	movl	8(%ebp), %eax
	movl	8(%edi), %ecx
	sarl	$5, %edx
	subl	$1, %edx
	js	.L4186
	movl	(%ecx,%edx,4), %esi
	movl	(%eax,%edx,4), %edi
	cmpl	%esi, %edi
	je	.L4166
	jmp	.L4165
	.p2align 4,,10
	.p2align 3
.L4167:
	movl	(%ecx,%edx,4), %esi
	movl	(%eax,%edx,4), %edi
	cmpl	%edi, %esi
	jne	.L4165
.L4166:
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	.L4167
	xorl	%eax, %eax
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4159:
	cmpl	%edx, 0(%ebp)
	movl	$1, %eax
	jle	.L4156
	addl	$31, %edx
	movl	8(%ebp), %ecx
	movl	8(%edi), %esi
	sarl	$5, %edx
	subl	$1, %edx
	jns	.L4171
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4170:
	subl	$1, %edx
	cmpl	$-1, %edx
	je	.L4202
.L4171:
	movl	(%esi,%edx,4), %edi
	movl	(%ecx,%edx,4), %eax
	cmpl	%eax, %edi
	je	.L4170
	cmpl	%eax, %edi
	setnb	%al
	movzbl	%al, %eax
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4160:
	cmpl	%edx, 0(%ebp)
	movl	$1, %eax
	jg	.L4156
	addl	$31, %edx
	movl	8(%ebp), %eax
	movl	8(%edi), %ecx
	sarl	$5, %edx
	subl	$1, %edx
	js	.L4186
	movl	(%ecx,%edx,4), %edi
	movl	(%eax,%edx,4), %esi
	cmpl	%edi, %esi
	je	.L4174
	jmp	.L4173
	.p2align 4,,10
	.p2align 3
.L4175:
	movl	(%ecx,%edx,4), %edi
	movl	(%eax,%edx,4), %esi
	cmpl	%esi, %edi
	jne	.L4173
.L4174:
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	.L4175
	xorl	%eax, %eax
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4161:
	cmpl	%edx, 0(%ebp)
	movl	$1, %eax
	jge	.L4156
	addl	$31, %edx
	movl	8(%ebp), %ecx
	movl	8(%edi), %esi
	sarl	$5, %edx
	subl	$1, %edx
	js	.L4156
	movl	(%esi,%edx,4), %edi
	movl	(%ecx,%edx,4), %eax
	cmpl	%edi, %eax
	je	.L4178
	jmp	.L4177
	.p2align 4,,10
	.p2align 3
.L4179:
	movl	(%esi,%edx,4), %edi
	movl	(%ecx,%edx,4), %eax
	cmpl	%eax, %edi
	jne	.L4177
.L4178:
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	.L4179
.L4202:
	movl	$1, %eax
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4209:
	addl	$31, %edx
	movl	8(%ebp), %ecx
	movl	8(%edi), %esi
	sarl	$5, %edx
	subl	$1, %edx
	js	.L4202
	movl	(%ecx,%edx,4), %edi
	cmpl	%edi, (%esi,%edx,4)
	je	.L4181
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4182:
	movl	(%ecx,%edx,4), %eax
	cmpl	%eax, (%esi,%edx,4)
	jne	.L4186
.L4181:
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	.L4182
	jmp	.L4202
	.p2align 4,,10
	.p2align 3
.L4173:
	xorl	%eax, %eax
	cmpl	%esi, %edi
	setb	%al
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4177:
	cmpl	%eax, %edi
	setb	%al
	movzbl	%al, %eax
	jmp	.L4156
	.p2align 4,,10
	.p2align 3
.L4165:
	xorl	%eax, %eax
	cmpl	%esi, %edi
	setbe	%al
	jmp	.L4156
	.cfi_endproc
.LFE506:
	.size	__asl_string_binop, .-__asl_string_binop
	.globl	__asl_popcount_tab
	.section	.rodata
	.align 32
	.type	__asl_popcount_tab, @object
	.size	__asl_popcount_tab, 1024
__asl_popcount_tab:
	.long	0
	.long	1
	.long	1
	.long	2
	.long	1
	.long	2
	.long	2
	.long	3
	.long	1
	.long	2
	.long	2
	.long	3
	.long	2
	.long	3
	.long	3
	.long	4
	.long	1
	.long	2
	.long	2
	.long	3
	.long	2
	.long	3
	.long	3
	.long	4
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	1
	.long	2
	.long	2
	.long	3
	.long	2
	.long	3
	.long	3
	.long	4
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	1
	.long	2
	.long	2
	.long	3
	.long	2
	.long	3
	.long	3
	.long	4
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	4
	.long	5
	.long	5
	.long	6
	.long	5
	.long	6
	.long	6
	.long	7
	.long	1
	.long	2
	.long	2
	.long	3
	.long	2
	.long	3
	.long	3
	.long	4
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	4
	.long	5
	.long	5
	.long	6
	.long	5
	.long	6
	.long	6
	.long	7
	.long	2
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	4
	.long	5
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	4
	.long	5
	.long	5
	.long	6
	.long	5
	.long	6
	.long	6
	.long	7
	.long	3
	.long	4
	.long	4
	.long	5
	.long	4
	.long	5
	.long	5
	.long	6
	.long	4
	.long	5
	.long	5
	.long	6
	.long	5
	.long	6
	.long	6
	.long	7
	.long	4
	.long	5
	.long	5
	.long	6
	.long	5
	.long	6
	.long	6
	.long	7
	.long	5
	.long	6
	.long	6
	.long	7
	.long	6
	.long	7
	.long	7
	.long	8
	.globl	__asl_stren_map_tab
	.align 32
	.type	__asl_stren_map_tab, @object
	.size	__asl_stren_map_tab, 1024
__asl_stren_map_tab:
	.long	0
	.long	0
	.long	2
	.long	0
	.long	2
	.long	37
	.long	0
	.long	7
	.long	2
	.long	73
	.long	0
	.long	11
	.long	2
	.long	109
	.long	0
	.long	15
	.long	2
	.long	145
	.long	0
	.long	19
	.long	2
	.long	181
	.long	0
	.long	23
	.long	2
	.long	217
	.long	0
	.long	27
	.long	2
	.long	253
	.long	0
	.long	31
	.long	36
	.long	2
	.long	0
	.long	35
	.long	36
	.long	37
	.long	0
	.long	39
	.long	36
	.long	73
	.long	0
	.long	43
	.long	36
	.long	109
	.long	0
	.long	47
	.long	36
	.long	145
	.long	0
	.long	51
	.long	36
	.long	181
	.long	0
	.long	55
	.long	36
	.long	217
	.long	0
	.long	59
	.long	36
	.long	253
	.long	0
	.long	63
	.long	72
	.long	2
	.long	0
	.long	67
	.long	72
	.long	37
	.long	0
	.long	71
	.long	72
	.long	73
	.long	0
	.long	75
	.long	72
	.long	109
	.long	0
	.long	79
	.long	72
	.long	145
	.long	0
	.long	83
	.long	72
	.long	181
	.long	0
	.long	87
	.long	72
	.long	217
	.long	0
	.long	91
	.long	73
	.long	253
	.long	0
	.long	95
	.long	108
	.long	2
	.long	0
	.long	99
	.long	108
	.long	37
	.long	0
	.long	103
	.long	108
	.long	73
	.long	0
	.long	107
	.long	108
	.long	109
	.long	0
	.long	111
	.long	108
	.long	145
	.long	0
	.long	115
	.long	108
	.long	181
	.long	0
	.long	119
	.long	108
	.long	217
	.long	0
	.long	123
	.long	108
	.long	253
	.long	0
	.long	127
	.long	144
	.long	2
	.long	0
	.long	131
	.long	144
	.long	37
	.long	0
	.long	135
	.long	144
	.long	73
	.long	0
	.long	139
	.long	144
	.long	109
	.long	0
	.long	143
	.long	144
	.long	145
	.long	0
	.long	147
	.long	144
	.long	181
	.long	0
	.long	151
	.long	144
	.long	217
	.long	0
	.long	155
	.long	144
	.long	253
	.long	0
	.long	159
	.long	180
	.long	2
	.long	0
	.long	163
	.long	180
	.long	37
	.long	0
	.long	167
	.long	180
	.long	73
	.long	0
	.long	171
	.long	180
	.long	109
	.long	0
	.long	175
	.long	180
	.long	145
	.long	0
	.long	179
	.long	180
	.long	181
	.long	0
	.long	183
	.long	180
	.long	185
	.long	0
	.long	187
	.long	180
	.long	253
	.long	0
	.long	191
	.long	216
	.long	2
	.long	0
	.long	195
	.long	216
	.long	37
	.long	0
	.long	199
	.long	216
	.long	73
	.long	0
	.long	203
	.long	216
	.long	109
	.long	0
	.long	207
	.long	216
	.long	145
	.long	0
	.long	211
	.long	216
	.long	181
	.long	0
	.long	215
	.long	216
	.long	217
	.long	0
	.long	219
	.long	216
	.long	253
	.long	0
	.long	223
	.long	252
	.long	2
	.long	0
	.long	227
	.long	252
	.long	37
	.long	0
	.long	231
	.long	252
	.long	73
	.long	0
	.long	235
	.long	252
	.long	109
	.long	0
	.long	239
	.long	252
	.long	145
	.long	0
	.long	243
	.long	252
	.long	181
	.long	0
	.long	247
	.long	252
	.long	217
	.long	0
	.long	251
	.long	252
	.long	253
	.long	0
	.long	255
	.globl	__asl_is_xedge_tab
	.align 32
	.type	__asl_is_xedge_tab, @object
	.size	__asl_is_xedge_tab, 64
__asl_is_xedge_tab:
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.globl	__asl_epair_tab
	.align 32
	.type	__asl_epair_tab, @object
	.size	__asl_epair_tab, 64
__asl_epair_tab:
	.long	0
	.long	1
	.long	4
	.long	4
	.long	2
	.long	0
	.long	16
	.long	16
	.long	32
	.long	8
	.long	0
	.long	0
	.long	32
	.long	8
	.long	0
	.long	0
	.globl	__epair_neg_tab
	.align 32
	.type	__epair_neg_tab, @object
	.size	__epair_neg_tab, 64
__epair_neg_tab:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.globl	__epair_pos_tab
	.align 32
	.type	__epair_pos_tab, @object
	.size	__epair_pos_tab, 64
__epair_pos_tab:
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.globl	__xnor_g4
	.align 32
	.type	__xnor_g4, @object
	.size	__xnor_g4, 1024
__xnor_g4:
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__xor_g4
	.align 32
	.type	__xor_g4, @object
	.size	__xor_g4, 1024
__xor_g4:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__nor_g4
	.align 32
	.type	__nor_g4, @object
	.size	__nor_g4, 1024
__nor_g4:
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.globl	__or_g4
	.align 32
	.type	__or_g4, @object
	.size	__or_g4, 1024
__or_g4:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.globl	__nand_g4
	.align 32
	.type	__nand_g4, @object
	.size	__nand_g4, 1024
__nand_g4:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.globl	__and_g4
	.align 32
	.type	__and_g4, @object
	.size	__and_g4, 1024
__and_g4:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.globl	__xnor_g3
	.align 32
	.type	__xnor_g3, @object
	.size	__xnor_g3, 256
__xnor_g3:
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__xor_g3
	.align 32
	.type	__xor_g3, @object
	.size	__xor_g3, 256
__xor_g3:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__nor_g3
	.align 32
	.type	__nor_g3, @object
	.size	__nor_g3, 256
__nor_g3:
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.globl	__or_g3
	.align 32
	.type	__or_g3, @object
	.size	__or_g3, 256
__or_g3:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.globl	__nand_g3
	.align 32
	.type	__nand_g3, @object
	.size	__nand_g3, 256
__nand_g3:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.globl	__and_g3
	.align 32
	.type	__and_g3, @object
	.size	__and_g3, 256
__and_g3:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.globl	__nor_svals
	.align 32
	.type	__nor_svals, @object
	.size	__nor_svals, 64
__nor_svals:
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.globl	__nand_svals
	.align 32
	.type	__nand_svals, @object
	.size	__nand_svals, 64
__nand_svals:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.globl	__qcol_comb_svals
	.align 32
	.type	__qcol_comb_svals, @object
	.size	__qcol_comb_svals, 64
__qcol_comb_svals:
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__un_p2_svals
	.align 4
	.type	__un_p2_svals, @object
	.size	__un_p2_svals, 16
__un_p2_svals:
	.long	1
	.long	0
	.long	3
	.long	3
	.globl	__un_p1_svals
	.align 4
	.type	__un_p1_svals, @object
	.size	__un_p1_svals, 16
__un_p1_svals:
	.long	0
	.long	1
	.long	3
	.long	3
	.globl	__bitor_x_svals
	.align 32
	.type	__bitor_x_svals, @object
	.size	__bitor_x_svals, 64
__bitor_x_svals:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__relceq_svals
	.align 32
	.type	__relceq_svals, @object
	.size	__relceq_svals, 64
__relceq_svals:
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.globl	__relcneq_svals
	.align 32
	.type	__relcneq_svals, @object
	.size	__relcneq_svals, 64
__relcneq_svals:
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.globl	__rellt_svals
	.align 32
	.type	__rellt_svals, @object
	.size	__rellt_svals, 64
__rellt_svals:
	.long	0
	.long	0
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__relle_svals
	.align 32
	.type	__relle_svals, @object
	.size	__relle_svals, 64
__relle_svals:
	.long	1
	.long	0
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__relgt_svals
	.align 32
	.type	__relgt_svals, @object
	.size	__relgt_svals, 64
__relgt_svals:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__bitand_svals
	.align 32
	.type	__bitand_svals, @object
	.size	__bitand_svals, 64
__bitand_svals:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.globl	__mod_svals
	.align 32
	.type	__mod_svals, @object
	.size	__mod_svals, 64
__mod_svals:
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__div_svals
	.align 32
	.type	__div_svals, @object
	.size	__div_svals, 64
__div_svals:
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__times_svals
	.align 32
	.type	__times_svals, @object
	.size	__times_svals, 64
__times_svals:
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__shift_svals
	.align 32
	.type	__shift_svals, @object
	.size	__shift_svals, 64
__shift_svals:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__p4_svals
	.align 32
	.type	__p4_svals, @object
	.size	__p4_svals, 64
__p4_svals:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	1
	.long	3
	.long	3
	.globl	__p3_svals
	.align 32
	.type	__p3_svals, @object
	.size	__p3_svals, 64
__p3_svals:
	.long	1
	.long	0
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__p2_svals
	.align 32
	.type	__p2_svals, @object
	.size	__p2_svals, 64
__p2_svals:
	.long	1
	.long	1
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__p1_svals
	.align 32
	.type	__p1_svals, @object
	.size	__p1_svals, 64
__p1_svals:
	.long	0
	.long	1
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__notif1_supply1_tab
	.align 32
	.type	__notif1_supply1_tab, @object
	.size	__notif1_supply1_tab, 64
__notif1_supply1_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	181
	.long	252
	.long	247
	.long	247
	.long	23
	.long	227
	.long	247
	.long	247
	.long	23
	.long	227
	.long	247
	.long	247
	.globl	__notif0_supply1_tab
	.align 32
	.type	__notif0_supply1_tab, @object
	.size	__notif0_supply1_tab, 64
__notif0_supply1_tab:
	.long	181
	.long	252
	.long	247
	.long	247
	.long	2
	.long	2
	.long	2
	.long	2
	.long	23
	.long	227
	.long	247
	.long	247
	.long	23
	.long	227
	.long	247
	.long	247
	.globl	__bufif1_supply1_tab
	.align 32
	.type	__bufif1_supply1_tab, @object
	.size	__bufif1_supply1_tab, 64
__bufif1_supply1_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	252
	.long	181
	.long	247
	.long	247
	.long	227
	.long	23
	.long	247
	.long	247
	.long	227
	.long	23
	.long	247
	.long	247
	.globl	__bufif0_supply1_tab
	.align 32
	.type	__bufif0_supply1_tab, @object
	.size	__bufif0_supply1_tab, 64
__bufif0_supply1_tab:
	.long	252
	.long	181
	.long	247
	.long	247
	.long	2
	.long	2
	.long	2
	.long	2
	.long	227
	.long	23
	.long	247
	.long	247
	.long	227
	.long	23
	.long	247
	.long	247
	.globl	__notif1_supply0_tab
	.align 32
	.type	__notif1_supply0_tab, @object
	.size	__notif1_supply0_tab, 64
__notif1_supply0_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	145
	.long	252
	.long	243
	.long	243
	.long	19
	.long	227
	.long	243
	.long	243
	.long	19
	.long	227
	.long	243
	.long	243
	.globl	__notif0_supply0_tab
	.align 32
	.type	__notif0_supply0_tab, @object
	.size	__notif0_supply0_tab, 64
__notif0_supply0_tab:
	.long	145
	.long	252
	.long	243
	.long	243
	.long	2
	.long	2
	.long	2
	.long	2
	.long	19
	.long	227
	.long	243
	.long	243
	.long	19
	.long	227
	.long	243
	.long	243
	.globl	__bufif1_supply0_tab
	.align 32
	.type	__bufif1_supply0_tab, @object
	.size	__bufif1_supply0_tab, 64
__bufif1_supply0_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	252
	.long	145
	.long	243
	.long	243
	.long	227
	.long	19
	.long	243
	.long	243
	.long	227
	.long	19
	.long	243
	.long	243
	.globl	__bufif0_supply0_tab
	.align 32
	.type	__bufif0_supply0_tab, @object
	.size	__bufif0_supply0_tab, 64
__bufif0_supply0_tab:
	.long	252
	.long	145
	.long	243
	.long	243
	.long	2
	.long	2
	.long	2
	.long	2
	.long	227
	.long	19
	.long	243
	.long	243
	.long	227
	.long	19
	.long	243
	.long	243
	.globl	__notif1_pull1_tab
	.align 32
	.type	__notif1_pull1_tab, @object
	.size	__notif1_pull1_tab, 64
__notif1_pull1_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	181
	.long	216
	.long	215
	.long	215
	.long	23
	.long	195
	.long	215
	.long	215
	.long	23
	.long	195
	.long	215
	.long	215
	.globl	__notif0_pull1_tab
	.align 32
	.type	__notif0_pull1_tab, @object
	.size	__notif0_pull1_tab, 64
__notif0_pull1_tab:
	.long	181
	.long	216
	.long	215
	.long	215
	.long	2
	.long	2
	.long	2
	.long	2
	.long	23
	.long	195
	.long	215
	.long	215
	.long	23
	.long	195
	.long	215
	.long	215
	.globl	__bufif1_pull1_tab
	.align 32
	.type	__bufif1_pull1_tab, @object
	.size	__bufif1_pull1_tab, 64
__bufif1_pull1_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	216
	.long	181
	.long	215
	.long	215
	.long	195
	.long	23
	.long	215
	.long	215
	.long	195
	.long	23
	.long	215
	.long	215
	.globl	__bufif0_pull1_tab
	.align 32
	.type	__bufif0_pull1_tab, @object
	.size	__bufif0_pull1_tab, 64
__bufif0_pull1_tab:
	.long	216
	.long	181
	.long	215
	.long	215
	.long	2
	.long	2
	.long	2
	.long	2
	.long	195
	.long	23
	.long	215
	.long	215
	.long	195
	.long	23
	.long	215
	.long	215
	.globl	__notif1_pull0_tab
	.align 32
	.type	__notif1_pull0_tab, @object
	.size	__notif1_pull0_tab, 64
__notif1_pull0_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	145
	.long	216
	.long	211
	.long	211
	.long	19
	.long	195
	.long	211
	.long	211
	.long	19
	.long	195
	.long	211
	.long	211
	.globl	__notif0_pull0_tab
	.align 32
	.type	__notif0_pull0_tab, @object
	.size	__notif0_pull0_tab, 64
__notif0_pull0_tab:
	.long	145
	.long	216
	.long	211
	.long	211
	.long	2
	.long	2
	.long	2
	.long	2
	.long	19
	.long	195
	.long	211
	.long	211
	.long	19
	.long	195
	.long	211
	.long	211
	.globl	__bufif1_pull0_tab
	.align 32
	.type	__bufif1_pull0_tab, @object
	.size	__bufif1_pull0_tab, 64
__bufif1_pull0_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	216
	.long	145
	.long	211
	.long	211
	.long	195
	.long	19
	.long	211
	.long	211
	.long	195
	.long	19
	.long	211
	.long	211
	.globl	__bufif0_pull0_tab
	.align 32
	.type	__bufif0_pull0_tab, @object
	.size	__bufif0_pull0_tab, 64
__bufif0_pull0_tab:
	.long	216
	.long	145
	.long	211
	.long	211
	.long	2
	.long	2
	.long	2
	.long	2
	.long	195
	.long	19
	.long	211
	.long	211
	.long	195
	.long	19
	.long	211
	.long	211
	.globl	__notif1_hiz_tab
	.align 32
	.type	__notif1_hiz_tab, @object
	.size	__notif1_hiz_tab, 64
__notif1_hiz_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	73
	.long	2
	.long	11
	.long	11
	.long	11
	.long	0
	.long	11
	.long	11
	.long	11
	.long	0
	.long	11
	.long	11
	.globl	__notif0_hiz_tab
	.align 32
	.type	__notif0_hiz_tab, @object
	.size	__notif0_hiz_tab, 64
__notif0_hiz_tab:
	.long	73
	.long	2
	.long	11
	.long	11
	.long	2
	.long	2
	.long	2
	.long	2
	.long	11
	.long	0
	.long	11
	.long	11
	.long	11
	.long	0
	.long	11
	.long	11
	.globl	__bufif1_hiz_tab
	.align 32
	.type	__bufif1_hiz_tab, @object
	.size	__bufif1_hiz_tab, 64
__bufif1_hiz_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	73
	.long	11
	.long	11
	.long	0
	.long	11
	.long	11
	.long	11
	.long	0
	.long	11
	.long	11
	.long	11
	.globl	__bufif0_hiz_tab
	.align 32
	.type	__bufif0_hiz_tab, @object
	.size	__bufif0_hiz_tab, 64
__bufif0_hiz_tab:
	.long	2
	.long	73
	.long	11
	.long	11
	.long	2
	.long	2
	.long	2
	.long	2
	.long	0
	.long	11
	.long	11
	.long	11
	.long	0
	.long	11
	.long	11
	.long	11
	.globl	__notif1_strongx_tab
	.align 32
	.type	__notif1_strongx_tab, @object
	.size	__notif1_strongx_tab, 64
__notif1_strongx_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	109
	.long	108
	.long	111
	.long	111
	.long	15
	.long	99
	.long	111
	.long	111
	.long	15
	.long	99
	.long	111
	.long	111
	.globl	__notif0_strongx_tab
	.align 32
	.type	__notif0_strongx_tab, @object
	.size	__notif0_strongx_tab, 64
__notif0_strongx_tab:
	.long	109
	.long	108
	.long	111
	.long	111
	.long	2
	.long	2
	.long	2
	.long	2
	.long	15
	.long	99
	.long	111
	.long	111
	.long	15
	.long	99
	.long	111
	.long	111
	.globl	__bufif1_strongx_tab
	.align 32
	.type	__bufif1_strongx_tab, @object
	.size	__bufif1_strongx_tab, 64
__bufif1_strongx_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	108
	.long	109
	.long	111
	.long	111
	.long	99
	.long	15
	.long	111
	.long	111
	.long	99
	.long	15
	.long	111
	.long	111
	.globl	__bufif0_strongx_tab
	.align 32
	.type	__bufif0_strongx_tab, @object
	.size	__bufif0_strongx_tab, 64
__bufif0_strongx_tab:
	.long	108
	.long	109
	.long	111
	.long	111
	.long	2
	.long	2
	.long	2
	.long	2
	.long	99
	.long	15
	.long	111
	.long	111
	.long	99
	.long	15
	.long	111
	.long	111
	.globl	__notif1_strval_tab
	.align 32
	.type	__notif1_strval_tab, @object
	.size	__notif1_strval_tab, 64
__notif1_strval_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	217
	.long	216
	.long	219
	.long	219
	.long	27
	.long	195
	.long	219
	.long	219
	.long	27
	.long	195
	.long	219
	.long	219
	.globl	__notif0_strval_tab
	.align 32
	.type	__notif0_strval_tab, @object
	.size	__notif0_strval_tab, 64
__notif0_strval_tab:
	.long	217
	.long	216
	.long	219
	.long	219
	.long	2
	.long	2
	.long	2
	.long	2
	.long	27
	.long	195
	.long	219
	.long	219
	.long	27
	.long	195
	.long	219
	.long	219
	.globl	__bufif1_strval_tab
	.align 32
	.type	__bufif1_strval_tab, @object
	.size	__bufif1_strval_tab, 64
__bufif1_strval_tab:
	.long	2
	.long	2
	.long	2
	.long	2
	.long	216
	.long	217
	.long	219
	.long	219
	.long	195
	.long	27
	.long	219
	.long	219
	.long	195
	.long	27
	.long	219
	.long	219
	.globl	__bufif0_strval_tab
	.align 32
	.type	__bufif0_strval_tab, @object
	.size	__bufif0_strval_tab, 64
__bufif0_strval_tab:
	.long	216
	.long	217
	.long	219
	.long	219
	.long	2
	.long	2
	.long	2
	.long	2
	.long	195
	.long	27
	.long	219
	.long	219
	.long	195
	.long	27
	.long	219
	.long	219
	.globl	__gate_ormask_4_3
	.align 4
	.type	__gate_ormask_4_3, @object
	.size	__gate_ormask_4_3, 16
__gate_ormask_4_3:
	.long	0
	.long	8
	.long	128
	.long	136
	.globl	__gate_ormask_4_2
	.align 4
	.type	__gate_ormask_4_2, @object
	.size	__gate_ormask_4_2, 16
__gate_ormask_4_2:
	.long	0
	.long	4
	.long	64
	.long	68
	.globl	__gate_ormask_4_1
	.align 4
	.type	__gate_ormask_4_1, @object
	.size	__gate_ormask_4_1, 16
__gate_ormask_4_1:
	.long	0
	.long	2
	.long	32
	.long	34
	.globl	__gate_ormask_4_0
	.align 4
	.type	__gate_ormask_4_0, @object
	.size	__gate_ormask_4_0, 16
__gate_ormask_4_0:
	.long	0
	.long	1
	.long	16
	.long	17
	.globl	__gate_ormask_3_3
	.align 4
	.type	__gate_ormask_3_3, @object
	.size	__gate_ormask_3_3, 16
__gate_ormask_3_3:
	.long	0
	.long	8
	.long	64
	.long	72
	.globl	__gate_ormask_3_2
	.align 4
	.type	__gate_ormask_3_2, @object
	.size	__gate_ormask_3_2, 16
__gate_ormask_3_2:
	.long	0
	.long	4
	.long	32
	.long	36
	.globl	__gate_ormask_3_1
	.align 4
	.type	__gate_ormask_3_1, @object
	.size	__gate_ormask_3_1, 16
__gate_ormask_3_1:
	.long	0
	.long	2
	.long	16
	.long	18
	.globl	__gate_ormask_3_0
	.align 4
	.type	__gate_ormask_3_0, @object
	.size	__gate_ormask_3_0, 16
__gate_ormask_3_0:
	.long	0
	.long	1
	.long	8
	.long	9
	.globl	__gate_ormask_2_3
	.align 4
	.type	__gate_ormask_2_3, @object
	.size	__gate_ormask_2_3, 16
__gate_ormask_2_3:
	.long	0
	.long	8
	.long	32
	.long	40
	.globl	__gate_ormask_2_2
	.align 4
	.type	__gate_ormask_2_2, @object
	.size	__gate_ormask_2_2, 16
__gate_ormask_2_2:
	.long	0
	.long	4
	.long	16
	.long	20
	.globl	__gate_ormask_2_1
	.align 4
	.type	__gate_ormask_2_1, @object
	.size	__gate_ormask_2_1, 16
__gate_ormask_2_1:
	.long	0
	.long	2
	.long	8
	.long	10
	.globl	__gate_ormask_2_0
	.align 4
	.type	__gate_ormask_2_0, @object
	.size	__gate_ormask_2_0, 16
__gate_ormask_2_0:
	.long	0
	.long	1
	.long	4
	.long	5
	.globl	__gnot
	.align 4
	.type	__gnot, @object
	.size	__gnot, 16
__gnot:
	.long	1
	.long	0
	.long	3
	.long	3
	.globl	__gbuf
	.align 4
	.type	__gbuf, @object
	.size	__gbuf, 16
__gbuf:
	.long	0
	.long	1
	.long	3
	.long	3
	.globl	__redxnor
	.align 32
	.type	__redxnor, @object
	.size	__redxnor, 1024
__redxnor:
	.long	1
	.long	0
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__redxor
	.align 32
	.type	__redxor, @object
	.size	__redxor, 1024
__redxor:
	.long	0
	.long	1
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__nor
	.align 32
	.type	__nor, @object
	.size	__nor, 1024
__nor:
	.long	1
	.long	0
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__redor
	.align 32
	.type	__redor, @object
	.size	__redor, 1024
__redor:
	.long	0
	.long	1
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__nand
	.align 32
	.type	__nand, @object
	.size	__nand, 1024
__nand:
	.long	1
	.long	0
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	1
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	0
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__redand
	.align 32
	.type	__redand, @object
	.size	__redand, 1024
__redand:
	.long	0
	.long	1
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	0
	.long	1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	1
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.globl	__asl_to_noztab
	.align 4
	.type	__asl_to_noztab, @object
	.size	__asl_to_noztab, 16
__asl_to_noztab:
	.long	0
	.long	1
	.long	3
	.long	3
	.globl	__asl_to_uvaltab
	.align 4
	.type	__asl_to_uvaltab, @object
	.size	__asl_to_uvaltab, 16
__asl_to_uvaltab:
	.long	0
	.long	1
	.long	2
	.long	2
	.globl	__asl_4to2
	.align 4
	.type	__asl_4to2, @object
	.size	__asl_4to2, 16
__asl_4to2:
	.long	0
	.long	1
	.long	0
	.long	0
	.globl	__nchglst_template
	.data
	.align 32
	.type	__nchglst_template, @object
	.size	__nchglst_template, 32
__nchglst_template:
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	-1
	.long	0
	.long	0
	.long	0
	.globl	__tevdat_template
	.bss
	.align 32
	.type	__tevdat_template, @object
	.size	__tevdat_template, 60
__tevdat_template:
	.zero	60
	.comm	__edge_freelst,4,4
	.comm	__nxt_ofs,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	606757888
	.long	1102189877
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC5:
	.long	872415232
	.section	.rodata.cst8
	.align 8
.LC7:
	.long	4292870144
	.long	1106247679
	.section	.rodata.cst4
	.align 4
.LC8:
	.long	1325400064
	.align 4
.LC9:
	.long	1333788672
	.align 4
.LC15:
	.long	1056964608
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB548:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE548:
	.section	.text.__x86.get_pc_thunk.dx,"axG",@progbits,__x86.get_pc_thunk.dx,comdat
	.globl	__x86.get_pc_thunk.dx
	.hidden	__x86.get_pc_thunk.dx
	.type	__x86.get_pc_thunk.dx, @function
__x86.get_pc_thunk.dx:
.LFB549:
	.cfi_startproc
	movl	(%esp), %edx
	ret
	.cfi_endproc
.LFE549:
	.section	.text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.globl	__x86.get_pc_thunk.cx
	.hidden	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
.LFB550:
	.cfi_startproc
	movl	(%esp), %ecx
	ret
	.cfi_endproc
.LFE550:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB551:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE551:
	.section	.text.__x86.get_pc_thunk.si,"axG",@progbits,__x86.get_pc_thunk.si,comdat
	.globl	__x86.get_pc_thunk.si
	.hidden	__x86.get_pc_thunk.si
	.type	__x86.get_pc_thunk.si, @function
__x86.get_pc_thunk.si:
.LFB552:
	.cfi_startproc
	movl	(%esp), %esi
	ret
	.cfi_endproc
.LFE552:
	.section	.text.__x86.get_pc_thunk.di,"axG",@progbits,__x86.get_pc_thunk.di,comdat
	.globl	__x86.get_pc_thunk.di
	.hidden	__x86.get_pc_thunk.di
	.type	__x86.get_pc_thunk.di, @function
__x86.get_pc_thunk.di:
.LFB553:
	.cfi_startproc
	movl	(%esp), %edi
	ret
	.cfi_endproc
.LFE553:
	.section	.text.__x86.get_pc_thunk.bp,"axG",@progbits,__x86.get_pc_thunk.bp,comdat
	.globl	__x86.get_pc_thunk.bp
	.hidden	__x86.get_pc_thunk.bp
	.type	__x86.get_pc_thunk.bp, @function
__x86.get_pc_thunk.bp:
.LFB554:
	.cfi_startproc
	movl	(%esp), %ebp
	ret
	.cfi_endproc
.LFE554:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
