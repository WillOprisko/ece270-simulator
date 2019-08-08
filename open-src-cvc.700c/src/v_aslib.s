	.file	"v_aslib.c"
	.text
	.p2align 4,,15
	.type	asl_loc_stmt_assign_to_accum_1w_id, @function
asl_loc_stmt_assign_to_accum_1w_id:
.LFB244:
	.cfi_startproc
	movslq	240(%rdi), %r8
	movl	(%rsi), %r10d
	movq	16(%rsi), %r9
	testl	%r10d, %r10d
	leaq	0(,%r8,4), %rax
	movl	(%r9,%r8,4), %r9d
	jne	.L2
	movq	24(%rsi), %r10
	addq	64(%rsi), %rax
	testl	%r9d, %r9d
	movq	(%r10,%r8,8), %r10
	je	.L3
.L4:
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L10
.L7:
	orq	8(%r10), %rcx
	movq	(%r10), %rsi
	xorq	%rdx, %rsi
	orq	%rsi, %rcx
	movq	%rcx, 8(%r10)
	orq	%rdx, %rcx
	movq	%rcx, (%r10)
	orb	$4, 6(%rdi)
	movl	$1, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	movq	32(%rsi), %r10
	addq	72(%rsi), %rax
	testl	%r9d, %r9d
	movq	(%r10,%r8,8), %r10
	jne	.L4
	movq	56(%rsi), %r9
	movq	(%r9,%r8,8), %r9
.L6:
	movq	40(%rsi), %rsi
	movq	__masktab@GOTPCREL(%rip), %r11
	movq	(%rsi,%r8,8), %r8
	movl	8(%rdi), %esi
	andl	$63, %esi
	movq	(%r11,%rsi,8), %rsi
	andq	%rsi, (%r8)
	andq	%rsi, (%r9)
	movl	(%rax), %esi
	testl	%esi, %esi
	jne	.L7
.L10:
	movq	%rdx, (%r10)
	movq	%rcx, 8(%r10)
	orb	$4, 6(%rdi)
	movl	$1, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movq	48(%rsi), %r9
	movq	(%r9,%r8,8), %r9
	jmp	.L6
	.cfi_endproc
.LFE244:
	.size	asl_loc_stmt_assign_to_accum_1w_id, .-asl_loc_stmt_assign_to_accum_1w_id
	.p2align 4,,15
	.type	asl_loc_combine_xprop_accum, @function
asl_loc_combine_xprop_accum:
.LFB254:
	.cfi_startproc
	leal	63(%rcx), %r8d
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sarl	$6, %r8d
	movslq	%r8d, %rax
	testl	%r8d, %r8d
	leaq	0(,%rax,8), %r11
	leaq	(%rdi,%r11), %r10
	jle	.L12
	leal	-1(%r8), %eax
	leaq	8(,%rax,8), %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L13:
	movq	(%r10,%rax), %r8
	movq	(%rdi,%rax), %r9
	orq	(%rdx,%rax), %r8
	xorq	(%rsi,%rax), %r9
	orq	%r9, %r8
	movq	%r8, (%r10,%rax)
	orq	(%rsi,%rax), %r8
	movq	%r8, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.L13
.L12:
	movq	__masktab@GOTPCREL(%rip), %rdx
	leaq	-8(%r11), %rax
	andl	$63, %ecx
	movq	(%rdx,%rcx,8), %rdx
	andq	%rdx, (%rdi,%rax)
	andq	%rdx, (%r10,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE254:
	.size	asl_loc_combine_xprop_accum, .-asl_loc_combine_xprop_accum
	.p2align 4,,15
	.type	asl_loc_chg_vec_lhsbsel, @function
asl_loc_chg_vec_lhsbsel:
.LFB446:
	.cfi_startproc
	movq	%rcx, %r10
	movl	%esi, %ecx
	sarl	$6, %esi
	movslq	%esi, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	salq	$3, %rsi
	andl	$63, %ecx
	movl	$1, %r9d
	leaq	(%rdi,%rsi), %r11
	salq	%cl, %r9
	andl	$1, %edx
	salq	%cl, %rdx
	xorl	%eax, %eax
	movq	(%r11), %rbx
	movq	%rbx, %rbp
	andq	%r9, %rbp
	cmpq	%rdx, %rbp
	je	.L17
	movq	%r9, %rax
	notq	%rax
	andq	%rbx, %rax
	orq	%rax, %rdx
	movl	$1, %eax
	movq	%rdx, (%r11)
.L17:
	addl	$63, %r8d
	andl	$1, %r10d
	sarl	$6, %r8d
	salq	%cl, %r10
	movslq	%r8d, %r8
	leaq	(%rsi,%r8,8), %rdx
	addq	%rdx, %rdi
	movq	(%rdi), %rdx
	movq	%rdx, %rsi
	andq	%r9, %rsi
	cmpq	%r10, %rsi
	je	.L16
	notq	%r9
	movl	$1, %eax
	andq	%rdx, %r9
	orq	%r10, %r9
	movq	%r9, (%rdi)
.L16:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE446:
	.size	asl_loc_chg_vec_lhsbsel, .-asl_loc_chg_vec_lhsbsel
	.p2align 4,,15
	.type	asl_loc_stmt_assign_to_accum_wide_id, @function
asl_loc_stmt_assign_to_accum_wide_id:
.LFB246:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movslq	240(%rdi), %rax
	movl	8(%rdi), %edi
	movl	(%rsi), %ecx
	movq	16(%rsi), %rdx
	leal	63(%rdi), %ebx
	leaq	0(,%rax,4), %r13
	movl	(%rdx,%rax,4), %edx
	sarl	$6, %ebx
	testl	%ecx, %ecx
	jne	.L23
	movq	24(%rsi), %rcx
	addq	64(%rsi), %r13
	testl	%edx, %edx
	movq	(%rcx,%rax,8), %r14
	je	.L24
.L25:
	movl	0(%r13), %eax
	testl	%eax, %eax
	je	.L31
.L28:
	movl	8(%r12), %ecx
	movq	%rbp, %rdx
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	asl_loc_combine_xprop_accum
.L29:
	orb	$4, 6(%r12)
	movl	$1, 0(%r13)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	movq	32(%rsi), %rcx
	addq	72(%rsi), %r13
	testl	%edx, %edx
	movq	(%rcx,%rax,8), %r14
	jne	.L25
	movq	56(%rsi), %rdx
	movq	(%rdx,%rax,8), %rdi
	movq	%rdi, (%rsp)
.L27:
	movq	40(%rsi), %rdx
	leal	0(,%rbx,8), %ecx
	movl	$255, %esi
	movslq	%ecx, %rcx
	movq	(%rdx,%rax,8), %rdi
	movq	%rcx, %rdx
	movq	%rcx, 8(%rsp)
	call	memset@PLT
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdi
	movl	$255, %esi
	movq	%rcx, %rdx
	call	memset@PLT
	movl	0(%r13), %eax
	testl	%eax, %eax
	jne	.L28
.L31:
	sall	$3, %ebx
	movq	%r15, %rsi
	movq	%r14, %rdi
	movslq	%ebx, %rbx
	movq	%rbx, %rdx
	call	memcpy@PLT
	leaq	(%r14,%rbx), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	memcpy@PLT
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L24:
	movq	48(%rsi), %rdx
	movq	(%rdx,%rax,8), %rdi
	movq	%rdi, (%rsp)
	jmp	.L27
	.cfi_endproc
.LFE246:
	.size	asl_loc_stmt_assign_to_accum_wide_id, .-asl_loc_stmt_assign_to_accum_wide_id
	.p2align 4,,15
	.type	asl_loc_get_new_event, @function
asl_loc_get_new_event:
.LFB145:
	.cfi_startproc
	movq	__free_tev_ndx@GOTPCREL(%rip), %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	(%rdx), %eax
	cmpl	$1, %eax
	jle	.L33
	movq	__free_tevs@GOTPCREL(%rip), %rcx
	subl	$1, %eax
	movl	%eax, (%rdx)
	cltq
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
.L34:
	movq	24(%rbx), %rdx
	movq	%rdx, 24(%rax)
	movq	56(%rbx), %rdx
	movq	$0, (%rax)
	movq	%rdx, 56(%rax)
	movq	64(%rbx), %rdx
	movq	$1, 16(%rax)
	movq	%rdx, 64(%rax)
	movq	__process_next_event_free_enterp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 32(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	movl	$104, %edi
	call	__my_malloc@PLT
	jmp	.L34
	.cfi_endproc
.LFE145:
	.size	asl_loc_get_new_event, .-asl_loc_get_new_event
	.p2align 4,,15
	.type	asl_loc_get_new_event_nb, @function
asl_loc_get_new_event_nb:
.LFB146:
	.cfi_startproc
	movq	__free_tev_ndx@GOTPCREL(%rip), %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	(%rdx), %eax
	cmpl	$1, %eax
	jle	.L37
	movq	__free_tevs@GOTPCREL(%rip), %rcx
	subl	$1, %eax
	movl	%eax, (%rdx)
	cltq
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
.L38:
	movq	32(%rbx), %rdx
	movq	%rdx, 24(%rax)
	movq	56(%rbx), %rdx
	movq	%rdx, 56(%rax)
	movq	64(%rbx), %rdx
	movq	$0, (%rax)
	movq	$1, 16(%rax)
	movq	%rdx, 64(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_restore_state
	movl	$104, %edi
	call	__my_malloc@PLT
	jmp	.L38
	.cfi_endproc
.LFE146:
	.size	asl_loc_get_new_event_nb, .-asl_loc_get_new_event_nb
	.p2align 4,,15
	.type	asl_loc_get_new_nbmem_event, @function
asl_loc_get_new_nbmem_event:
.LFB147:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	__free_tev_ndx@GOTPCREL(%rip), %rdx
	movl	(%rdx), %eax
	cmpl	$1, %eax
	jle	.L41
	movq	__free_tevs@GOTPCREL(%rip), %rcx
	subl	$1, %eax
	movl	%eax, (%rdx)
	cltq
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rbx
.L42:
	movq	32(%r12), %rax
	movslq	%esi, %rbp
	movq	%rbp, %rdi
	movq	%rax, 24(%rbx)
	movq	56(%r12), %rax
	movq	$0, (%rbx)
	movq	%rax, 56(%rbx)
	call	__my_malloc@PLT
	movq	%rax, 8(%rbx)
	movq	64(%r12), %rax
	movq	$1, 16(%rbx)
	movq	%rbp, 88(%rbx)
	movq	%rax, 64(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	movl	$104, %edi
	movl	%esi, 12(%rsp)
	call	__my_malloc@PLT
	movl	12(%rsp), %esi
	movq	%rax, %rbx
	jmp	.L42
	.cfi_endproc
.LFE147:
	.size	asl_loc_get_new_nbmem_event, .-asl_loc_get_new_nbmem_event
	.p2align 4,,15
	.type	asl_loc_get_new_thread_event, @function
asl_loc_get_new_thread_event:
.LFB148:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	__free_tev_ndx@GOTPCREL(%rip), %rdx
	movl	(%rdx), %eax
	cmpl	$1, %eax
	jle	.L45
	movq	__free_tevs@GOTPCREL(%rip), %rcx
	subl	$1, %eax
	movl	%eax, (%rdx)
	cltq
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
.L46:
	movq	__process_compiled_thrd_ev_enterp@GOTPCREL(%rip), %rdx
	movq	$1, 16(%rax)
	movq	(%rdx), %rdx
	movq	%rdx, 24(%rax)
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	$0, (%rax)
	movq	%rdx, 56(%rax)
	movq	__process_next_event_free_enterp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 32(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	.cfi_restore_state
	movl	$104, %edi
	call	__my_malloc@PLT
	jmp	.L46
	.cfi_endproc
.LFE148:
	.size	asl_loc_get_new_thread_event, .-asl_loc_get_new_thread_event
	.p2align 4,,15
	.type	asl_loc_add_new_heap_time, @function
asl_loc_add_new_heap_time:
.LFB474:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%esi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	__heap_size@GOTPCREL(%rip), %rbx
	movq	__heap_maxsize@GOTPCREL(%rip), %rax
	movq	__heap@GOTPCREL(%rip), %r12
	movslq	(%rbx), %rcx
	cmpl	(%rax), %ecx
	movq	(%r12), %rdi
	movq	%rcx, %r10
	leaq	0(,%rcx,8), %rbp
	je	.L49
	movq	__free_heap_ndx@GOTPCREL(%rip), %rcx
	movq	__free_heap@GOTPCREL(%rip), %rax
	movl	(%rcx), %edx
	movq	(%rax), %r8
.L50:
	leal	-1(%rdx), %eax
	movq	48(%r15), %r11
	movq	__time_hash@GOTPCREL(%rip), %rdx
	cmpl	$1, %r10d
	movl	%eax, (%rcx)
	cltq
	movq	(%r8,%rax,8), %rax
	movq	$0, 80(%r15)
	movq	%rax, 40(%r15)
	movl	%r13d, (%rax)
	movq	%r11, 8(%rax)
	movq	$0, 48(%rax)
	movq	%rax, (%rdx,%r13,8)
	jle	.L54
	movl	%r10d, %esi
	sarl	%esi
	movslq	%esi, %rdx
	movq	(%rdi,%rdx,8), %r8
	cmpq	8(%r8), %r11
	ja	.L54
	movslq	%r10d, %rcx
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L56:
	movl	%esi, %r9d
	movslq	%esi, %rcx
	sarl	%r9d
	movslq	%r9d, %rdx
	movq	(%rdi,%rdx,8), %r8
	cmpq	%r11, 8(%r8)
	jb	.L54
	movl	%r9d, %esi
.L55:
	cmpl	$1, %esi
	movq	%r8, (%rdi,%rcx,8)
	leaq	0(,%rdx,8), %rbp
	jne	.L56
.L54:
	addl	$1, %r10d
	movl	%r10d, (%rbx)
	movq	%rax, (%rdi,%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	shrq	%rcx
	movq	%rbp, %rsi
	addl	%ecx, %r10d
	movq	%rcx, %r14
	movl	%r10d, (%rax)
	movslq	%r10d, %r10
	salq	$3, %r10
	movq	%r10, %rdx
	movq	%r10, 8(%rsp)
	call	__my_realloc@PLT
	movq	%rax, (%r12)
	movq	__free_heap@GOTPCREL(%rip), %rax
	movq	%rbp, %rsi
	movq	(%rax), %rdi
	call	__my_free@PLT
	movq	8(%rsp), %r10
	movq	%r10, %rdi
	call	__my_malloc@PLT
	movq	__free_heap@GOTPCREL(%rip), %rdi
	movq	%rax, (%rdi)
	movslq	%r14d, %rax
	leaq	0(,%rax,8), %rdi
	subq	%rax, %rdi
	salq	$3, %rdi
	call	__my_malloc@PLT
	leal	1(%r14), %edx
	cmpl	$1, %edx
	jle	.L51
	movq	__free_heap@GOTPCREL(%rip), %rdi
	leal	-1(%r14), %ecx
	addq	$1, %rcx
	movq	(%rdi), %r8
	leaq	0(,%rcx,8), %rdi
	subq	%rcx, %rdi
	leaq	8(%r8), %rsi
	leaq	(%rax,%rdi,8), %rcx
	.p2align 4,,10
	.p2align 3
.L52:
	movq	%rax, (%rsi)
	addq	$56, %rax
	addq	$8, %rsi
	cmpq	%rcx, %rax
	jne	.L52
.L53:
	movslq	(%rbx), %rbp
	movq	(%r12), %rdi
	movq	__free_heap_ndx@GOTPCREL(%rip), %rcx
	movq	%rbp, %r10
	salq	$3, %rbp
	jmp	.L50
.L51:
	movq	__free_heap@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	jmp	.L53
	.cfi_endproc
.LFE474:
	.size	asl_loc_add_new_heap_time, .-asl_loc_add_new_heap_time
	.p2align 4,,15
	.type	asl_loc_conflict_list, @function
asl_loc_conflict_list:
.LFB469:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	48(%rdi), %rax
	cmpq	%rax, 8(%rsi)
	ja	.L74
	movq	48(%rsi), %rbp
	testq	%rbp, %rbp
	je	.L69
	cmpq	%rax, 8(%rbp)
	je	.L70
	jbe	.L65
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L68:
	cmpq	%rax, 8(%rbx)
	je	.L63
	ja	.L64
	movq	%rbx, %rbp
.L65:
	movq	48(%rbp), %rbx
	testq	%rbx, %rbx
	jne	.L68
.L62:
	movl	0(%r13), %esi
	movq	%r12, %rdi
	call	asl_loc_add_new_heap_time
	movslq	0(%r13), %rcx
	movq	__time_hash@GOTPCREL(%rip), %rdx
	movq	%r13, (%rdx,%rcx,8)
	movq	%rax, 48(%rbp)
	movq	%r12, 24(%rax)
	movq	%r12, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
.L59:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	.cfi_restore_state
	movl	(%rsi), %esi
	call	asl_loc_add_new_heap_time
	movq	%r13, 48(%rax)
	movq	%r12, 24(%rax)
	movq	%r12, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L70:
	.cfi_restore_state
	movq	%rbp, %rbx
	.p2align 4,,10
	.p2align 3
.L63:
	movq	24(%rbx), %rax
	movq	%rbx, 40(%r12)
	testq	%rax, %rax
	je	.L76
	movq	%r12, 72(%rax)
	movq	%rax, 80(%r12)
	movq	%r12, 24(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L75:
	.cfi_restore_state
	movq	%rbp, %rbx
	movq	%rsi, %rbp
.L64:
	movl	0(%r13), %esi
	movq	%r12, %rdi
	call	asl_loc_add_new_heap_time
	movslq	0(%r13), %rcx
	movq	__time_hash@GOTPCREL(%rip), %rdx
	movq	%r13, (%rdx,%rcx,8)
	movq	%rax, 48(%rbp)
	movq	%rbx, 48(%rax)
	movq	%r12, 24(%rax)
	movq	%r12, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	movq	%r12, 24(%rbx)
	movq	%r12, 16(%rbx)
	jmp	.L59
.L69:
	movq	%rsi, %rbp
	jmp	.L62
	.cfi_endproc
.LFE469:
	.size	asl_loc_conflict_list, .-asl_loc_conflict_list
	.p2align 4,,15
	.type	asl_loc_nb_conflict_list, @function
asl_loc_nb_conflict_list:
.LFB473:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	48(%rdi), %rax
	cmpq	%rax, 8(%rsi)
	ja	.L92
	movq	48(%rsi), %rbp
	testq	%rbp, %rbp
	je	.L87
	cmpq	%rax, 8(%rbp)
	je	.L88
	jbe	.L83
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L86:
	cmpq	%rax, 8(%rbx)
	je	.L81
	ja	.L82
	movq	%rbx, %rbp
.L83:
	movq	48(%rbp), %rbx
	testq	%rbx, %rbx
	jne	.L86
.L80:
	movl	0(%r13), %esi
	movq	%r12, %rdi
	call	asl_loc_add_new_heap_time
	movslq	0(%r13), %rcx
	movq	__time_hash@GOTPCREL(%rip), %rdx
	movq	%r13, (%rdx,%rcx,8)
	movq	__last_nb_hp@GOTPCREL(%rip), %rdx
	movq	%rax, 48(%rbp)
	movq	%rax, (%rdx)
	movq	%r12, 40(%rax)
	movq	%r12, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
.L77:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	.cfi_restore_state
	movl	(%rsi), %esi
	call	asl_loc_add_new_heap_time
	movq	__last_nb_hp@GOTPCREL(%rip), %rdx
	movq	%r13, 48(%rax)
	movq	%rax, (%rdx)
	movq	%r12, 40(%rax)
	movq	%r12, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L88:
	.cfi_restore_state
	movq	%rbp, %rbx
	.p2align 4,,10
	.p2align 3
.L81:
	movq	40(%rbx), %rax
	movq	__last_nb_hp@GOTPCREL(%rip), %rdx
	testq	%rax, %rax
	movq	%rbx, (%rdx)
	je	.L94
	movq	%r12, 72(%rax)
	movq	%rax, 80(%r12)
	movq	%r12, 40(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L93:
	.cfi_restore_state
	movq	%rbp, %rbx
	movq	%rsi, %rbp
.L82:
	movl	0(%r13), %esi
	movq	%r12, %rdi
	call	asl_loc_add_new_heap_time
	movslq	0(%r13), %rcx
	movq	__time_hash@GOTPCREL(%rip), %rdx
	movq	%r13, (%rdx,%rcx,8)
	movq	__last_nb_hp@GOTPCREL(%rip), %rdx
	movq	%rax, 48(%rbp)
	movq	%rbx, 48(%rax)
	movq	%rax, (%rdx)
	movq	%r12, 40(%rax)
	movq	%r12, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L94:
	.cfi_restore_state
	movq	%r12, 40(%rbx)
	movq	%r12, 32(%rbx)
	jmp	.L77
.L87:
	movq	%rsi, %rbp
	jmp	.L80
	.cfi_endproc
.LFE473:
	.size	asl_loc_nb_conflict_list, .-asl_loc_nb_conflict_list
	.p2align 4,,15
	.type	asl_loc_add_dmpv_chglst_el_mdprt, @function
asl_loc_add_dmpv_chglst_el_mdprt:
.LFB451:
	.cfi_startproc
	testb	$1, 6(%rdi)
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	jne	.L102
.L96:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	96(%rbx), %rax
	leaq	(%rdx,%rax,8), %rcx
	movq	(%rcx), %rax
	movq	%rax, %rsi
	andl	$3, %esi
	cmpq	$3, %rsi
	je	.L103
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	.cfi_restore_state
	andq	$-3, %rax
	movq	%rax, (%rcx)
	movslq	(%rdx), %rax
	movq	__dv_chgnethdr@GOTPCREL(%rip), %rdx
	leaq	(%rax,%rax,2), %rax
	movq	(%rdx), %rcx
	salq	$4, %rax
	addq	200(%rbx), %rax
	movq	%rcx, 40(%rax)
	movq	%rax, (%rdx)
	movq	__slotend_action@GOTPCREL(%rip), %rax
	orq	$32, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L102:
	.cfi_restore_state
	call	__add_togglelst_el@PLT
	jmp	.L96
	.cfi_endproc
.LFE451:
	.size	asl_loc_add_dmpv_chglst_el_mdprt, .-asl_loc_add_dmpv_chglst_el_mdprt
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"attempted deassign of reg %s in instance %s failed - not assigned"
	.text
	.p2align 4,,15
	.type	asl_loc_do_qc_deassign, @function
asl_loc_do_qc_deassign:
.LFB205:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movzwl	(%rdi), %eax
	andw	$1023, %ax
	cmpw	$85, %ax
	je	.L105
	movq	__idp@GOTPCREL(%rip), %r13
	xorl	%r14d, %r14d
	movq	0(%r13), %rax
.L106:
	movq	16(%r12), %rdx
	movq	(%rax), %rbx
	movq	16(%rdx), %rdx
	addl	%ebx, %ebx
	movslq	%ebx, %rbx
	leaq	5(%rbx,%rbx,4), %rax
	movq	120(%rdx), %r15
	leaq	(%r15,%rax,8), %rbp
	movzbl	0(%rbp), %eax
	testb	$3, %al
	je	.L121
	movl	%eax, %edx
	andl	$-2, %edx
	testb	$2, %al
	movb	%dl, 0(%rbp)
	jne	.L109
	movq	32(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L109
	call	__dcelst_off@PLT
.L109:
	movq	__assign_active@GOTPCREL(%rip), %rax
	andb	$-3, 0(%rbp)
	movq	$0, 32(%rbp)
	movl	$0, (%rax)
	leaq	(%rbx,%rbx,4), %rax
	testb	$1, (%r15,%rax,8)
	jne	.L122
.L108:
	testq	%r14, %r14
	je	.L104
	movq	%r14, 0(%r13)
.L104:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L122:
	.cfi_restore_state
	movq	__force_active@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L121:
	movq	__xs@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	__msg2_cur_blditree@PLT
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	__to_idnam@PLT
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdx
	movq	%rbx, %rcx
	movl	$462, %edi
	xorl	%eax, %eax
	call	__sgfinform@PLT
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L105:
	movq	24(%rdi), %rdi
	call	__xmrget_refgrp_to_targ@PLT
	movq	__idp@GOTPCREL(%rip), %r13
	movq	0(%r13), %r14
	movq	%rax, 0(%r13)
	jmp	.L106
	.cfi_endproc
.LFE205:
	.size	asl_loc_do_qc_deassign, .-asl_loc_do_qc_deassign
	.p2align 4,,15
	.type	asl_loc_set_restore_xprop_accum_block, @function
asl_loc_set_restore_xprop_accum_block:
.LFB252:
	.cfi_startproc
	movl	4(%rdi), %ecx
	andb	$-33, 8(%rdi)
	testl	%ecx, %ecx
	jle	.L192
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movl	%esi, 20(%rsp)
	.p2align 4,,10
	.p2align 3
.L148:
	movq	80(%r13), %rax
	movl	0(%r13), %edx
	leaq	0(,%r14,8), %r15
	movq	(%rax,%r14,8), %rbp
	movl	8(%rbp), %ecx
	movq	232(%rbp), %r12
	leal	63(%rcx), %eax
	sarl	$6, %eax
	testl	%edx, %edx
	movl	%eax, 8(%rsp)
	movq	32(%r13), %rax
	movq	(%rax,%r14,8), %rsi
	movq	24(%r13), %rax
	movq	(%rax,%r14,8), %rax
	movq	%rax, (%rsp)
	je	.L125
	movq	%rsi, (%rsp)
	movq	%rax, %rsi
.L125:
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jne	.L197
.L126:
	movl	8(%rsp), %ebx
	movq	(%rsp), %rsi
	movq	%r12, %rdi
	sall	$4, %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %rdx
	call	memcpy@PLT
	movq	16(%r13), %rax
	leaq	0(,%r14,4), %r9
	movl	(%rax,%r14,4), %eax
	testl	%eax, %eax
	je	.L127
	movq	64(%r13), %rcx
	movq	72(%r13), %rsi
	movl	(%rcx,%r14,4), %edi
	movl	(%rsi,%r14,4), %edx
	cmpl	%edx, %edi
	je	.L128
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jne	.L198
.L128:
	movq	104(%r13), %rax
	movq	96(%r13), %r10
	addq	%r9, %r10
	testq	%rax, %rax
	je	.L133
	testb	$32, 8(%rax)
	je	.L133
	movl	0(%r13), %r15d
	testl	%r15d, %r15d
	cmove	%edi, %edx
	testl	%edx, %edx
	je	.L133
	movslq	(%r10), %rsi
	movl	(%rax), %r12d
	movq	%r9, 8(%rsp)
	testl	%r12d, %r12d
	leaq	0(,%rsi,4), %rcx
	jne	.L135
	addq	64(%rax), %rcx
	movq	24(%rax), %rax
	orl	%edx, (%rcx)
.L195:
	movq	(%rax,%rsi,8), %rdi
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	call	memcpy@PLT
	movq	8(%rsp), %r9
	movq	96(%r13), %r10
	movq	64(%r13), %rcx
	movq	72(%r13), %rsi
	addq	%r9, %r10
	.p2align 4,,10
	.p2align 3
.L133:
	movl	$-1, (%rcx,%r9)
	movl	$-1, (%rsi,%r9)
	movl	(%r10), %ecx
.L136:
	leal	1(%r14), %eax
	addq	$1, %r14
	cmpl	%eax, 4(%r13)
	movl	%ecx, 240(%rbp)
	jg	.L148
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L127:
	.cfi_restore_state
	movq	48(%r13), %rax
	movl	20(%rsp), %r11d
	movq	(%rax,%r15), %rbx
	movq	56(%r13), %rax
	testl	%r11d, %r11d
	movq	(%rax,%r15), %rax
	jne	.L199
.L137:
	movq	104(%r13), %rdx
	movq	96(%r13), %rcx
	testq	%rdx, %rdx
	movl	(%rcx,%r9), %ecx
	je	.L136
	testb	$32, 8(%rdx)
	je	.L136
	movl	0(%r13), %esi
	movl	(%rdx), %r8d
	movq	40(%rdx), %rdi
	testl	%esi, %esi
	movq	40(%r13), %rsi
	cmove	%rbx, %rax
	testl	%r8d, %r8d
	movq	(%rsi,%r15), %r15
	movslq	%ecx, %rsi
	movq	(%rdi,%rsi,8), %r11
	movl	8(%rbp), %edi
	jne	.L141
	movq	48(%rdx), %r10
	movq	24(%rdx), %rdx
	testl	%edi, %edi
	movq	(%rdx,%rsi,8), %rbx
	movq	(%r10,%rsi,8), %r12
	movq	%rbx, 24(%rsp)
	jle	.L142
	movslq	8(%rsp), %rdi
	xorl	%r10d, %r10d
	movq	%rax, 56(%rsp)
	movq	%r13, %rax
	movq	%r12, 48(%rsp)
	movq	%r14, 72(%rsp)
	movq	%rbp, %r12
	movq	%r15, %r13
	movq	(%rsp), %rbp
	movq	%r9, 64(%rsp)
	movq	%r11, (%rsp)
	movl	%r10d, %r14d
	movq	%rdi, 32(%rsp)
	leaq	(%rbx,%rdi,8), %rdi
	movq	%rax, %r15
	movq	%rdi, 40(%rsp)
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L143:
	addl	$1, %r14d
	cmpl	%r14d, 8(%r12)
	jle	.L196
.L144:
	movl	%r14d, %eax
	movl	%r14d, %ecx
	sarl	$6, %eax
	andl	$63, %ecx
	cltq
	movq	0(%r13,%rax,8), %rdx
	btq	%rcx, %rdx
	jnc	.L143
	movq	32(%rsp), %rdi
	movl	%r14d, %esi
	leaq	(%rax,%rdi), %rdx
	movq	24(%rsp), %rdi
	movq	0(%rbp,%rdx,8), %rbx
	movq	0(%rbp,%rax,8), %rdx
	shrq	%cl, %rdx
	shrq	%cl, %rbx
	andl	$1, %edx
	andl	$1, %ebx
	call	__lhsbsel@PLT
	movq	40(%rsp), %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	addl	$1, %r14d
	call	__lhsbsel@PLT
	cmpl	%r14d, 8(%r12)
	jg	.L144
	.p2align 4,,10
	.p2align 3
.L196:
	movq	%r15, %rdi
	movq	64(%rsp), %r9
	movq	%r12, %rbp
	movq	96(%rdi), %rdx
	movq	56(%rsp), %rax
	movq	%r13, %r15
	movq	48(%rsp), %r12
	movq	(%rsp), %r11
	movq	%rdi, %r13
	movq	72(%rsp), %r14
	movl	(%rdx,%r9), %ecx
.L142:
	movl	8(%rsp), %edi
	testl	%edi, %edi
	jle	.L136
	leal	-1(%rdi), %edx
	leaq	8(,%rdx,8), %rdi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L147:
	movq	(%rax,%rdx), %rsi
	orq	%rsi, (%r12,%rdx)
	movq	(%r15,%rdx), %rsi
	orq	%rsi, (%r11,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rdi
	jne	.L147
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L197:
	movslq	8(%rsp), %rax
	movq	(%rsp), %rdi
	leaq	(%rsi,%rax,8), %rdx
	call	asl_loc_combine_xprop_accum
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L199:
	movl	8(%rbp), %r10d
	testl	%r10d, %r10d
	jle	.L137
	movslq	8(%rsp), %rdx
	xorl	%r10d, %r10d
	movq	%r14, 40(%rsp)
	movq	%r13, 48(%rsp)
	movq	%r9, 32(%rsp)
	movq	%rbx, %r13
	movl	%r10d, %r14d
	movq	%r12, %rbx
	leaq	(%r12,%rdx,8), %rdi
	movq	%rax, %r12
	movq	%rdi, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L139:
	movl	%r14d, %edx
	movl	%r14d, %ecx
	sarl	$6, %edx
	andl	$63, %ecx
	movslq	%edx, %rdx
	movq	0(%r13,%rdx,8), %rsi
	movq	(%r12,%rdx,8), %rdx
	shrq	%cl, %rsi
	shrq	%cl, %rdx
	andl	$1, %esi
	andl	$1, %edx
	cmpl	%edx, %esi
	je	.L138
	movl	$1, %edx
	movl	%r14d, %esi
	movq	%rbx, %rdi
	call	__lhsbsel@PLT
	movq	24(%rsp), %rdi
	movl	$1, %edx
	movl	%r14d, %esi
	call	__lhsbsel@PLT
.L138:
	addl	$1, %r14d
	cmpl	%r14d, 8(%rbp)
	jg	.L139
	movq	%r13, %rbx
	movq	%r12, %rax
	movq	32(%rsp), %r9
	movq	40(%rsp), %r14
	movq	48(%rsp), %r13
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L198:
	movl	8(%rbp), %eax
	movq	__masktab@GOTPCREL(%rip), %r15
	leal	63(%rax), %r10d
	andl	$63, %eax
	movq	(%r15,%rax,8), %r15
	sarl	$6, %r10d
	movslq	%r10d, %r8
	testl	%r10d, %r10d
	movq	%r15, 24(%rsp)
	leaq	-8(%r12,%r8,8), %r11
	movslq	8(%rsp), %r15
	jle	.L129
	leaq	8(%r12), %rax
	subl	$1, %r10d
	movq	%r12, 40(%rsp)
	movq	%r10, 32(%rsp)
	movq	%rax, 8(%rsp)
	leaq	(%rax,%r10,8), %r10
	movq	%r12, %rax
	.p2align 4,,10
	.p2align 3
.L130:
	movq	$-1, (%rax)
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.L130
	movq	24(%rsp), %rax
	andq	%rax, (%r11)
	leaq	(%r12,%r15,8), %rax
	movq	32(%rsp), %r11
	movq	8(%rsp), %r10
	addq	%r15, %r11
	leaq	(%r10,%r11,8), %r10
	.p2align 4,,10
	.p2align 3
.L132:
	movq	$-1, (%rax)
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.L132
	leaq	(%r8,%r15), %rax
	movq	24(%rsp), %r8
	andq	%r8, -8(%r12,%rax,8)
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L141:
	movq	56(%rdx), %r10
	movq	32(%rdx), %rdx
	testl	%edi, %edi
	movq	(%rdx,%rsi,8), %rbx
	movq	(%r10,%rsi,8), %r12
	movq	%rbx, 24(%rsp)
	jle	.L142
	movslq	8(%rsp), %rdi
	xorl	%r10d, %r10d
	movq	%rax, 56(%rsp)
	movq	%r13, %rax
	movq	%r12, 48(%rsp)
	movq	%r14, 72(%rsp)
	movq	%rbp, %r12
	movq	%r15, %r13
	movq	(%rsp), %rbp
	movq	%r9, 64(%rsp)
	movq	%r11, (%rsp)
	movl	%r10d, %r14d
	movq	%rdi, 32(%rsp)
	leaq	(%rbx,%rdi,8), %rdi
	movq	%rax, %r15
	movq	%rdi, 40(%rsp)
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L145:
	addl	$1, %r14d
	cmpl	%r14d, 8(%r12)
	jle	.L196
.L146:
	movl	%r14d, %eax
	movl	%r14d, %ecx
	sarl	$6, %eax
	andl	$63, %ecx
	cltq
	movq	0(%r13,%rax,8), %rdx
	btq	%rcx, %rdx
	jnc	.L145
	movq	32(%rsp), %rdi
	movl	%r14d, %esi
	leaq	(%rax,%rdi), %rdx
	movq	24(%rsp), %rdi
	movq	0(%rbp,%rdx,8), %rbx
	movq	0(%rbp,%rax,8), %rdx
	shrq	%cl, %rdx
	shrq	%cl, %rbx
	andl	$1, %edx
	andl	$1, %ebx
	call	__lhsbsel@PLT
	movq	40(%rsp), %rdi
	movq	%rbx, %rdx
	movl	%r14d, %esi
	call	__lhsbsel@PLT
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L135:
	addq	72(%rax), %rcx
	movq	32(%rax), %rax
	orl	%edx, (%rcx)
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L192:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	rep ret
	.p2align 4,,10
	.p2align 3
.L129:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	24(%rsp), %rax
	andq	%rax, (%r11)
	leaq	(%r8,%r15), %rax
	movq	24(%rsp), %r8
	andq	%r8, -8(%r12,%rax,8)
	jmp	.L128
	.cfi_endproc
.LFE252:
	.size	asl_loc_set_restore_xprop_accum_block, .-asl_loc_set_restore_xprop_accum_block
	.p2align 4,,15
	.type	asl_loc_set_restore_xprop_accum_block_selfv, @function
asl_loc_set_restore_xprop_accum_block_selfv:
.LFB253:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movl	4(%rdi), %ebx
	andb	$-33, 8(%rdi)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movl	%esi, 32(%rsp)
	testl	%ebx, %ebx
	jle	.L200
	leaq	112(%rsp), %rax
	movq	%rdi, %r15
	xorl	%r14d, %r14d
	movq	%rax, 56(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	%esi, %eax
	andl	$1, %eax
	movb	%al, 39(%rsp)
	.p2align 4,,10
	.p2align 3
.L230:
	leaq	0(,%r14,8), %rax
	movl	(%r15), %r11d
	movq	%rax, 16(%rsp)
	movq	80(%r15), %rax
	movq	(%rax,%r14,8), %rbx
	movl	8(%rbx), %eax
	movq	232(%rbx), %r13
	addl	$63, %eax
	sarl	$6, %eax
	testl	%r11d, %r11d
	movl	%eax, 8(%rsp)
	movq	32(%r15), %rax
	movq	(%rax,%r14,8), %r12
	movq	24(%r15), %rax
	movq	(%rax,%r14,8), %rax
	movq	%rax, (%rsp)
	je	.L202
	movq	%r12, (%rsp)
	movq	%rax, %r12
.L202:
	movzbl	6(%rbx), %eax
	leaq	0(,%r14,4), %rbp
	testb	$4, %al
	je	.L203
	orl	$4, %eax
	movq	32(%rbx), %rdx
	movb	%al, 6(%rbx)
	movq	64(%r15), %rax
	movl	$1, (%rax,%r14,4)
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rsi
	movzbl	1(%rbx), %eax
	testb	$126, %al
	je	.L280
	andl	$124, %eax
	cmpb	$4, %al
	je	.L281
	movq	__xspi@GOTPCREL(%rip), %rax
	movq	__maxxnest@GOTPCREL(%rip), %rcx
	movl	(%rax), %edi
	leal	1(%rdi), %edx
	cmpl	(%rcx), %edx
	movl	%edx, (%rax)
	jge	.L282
.L206:
	movq	__xstk@GOTPCREL(%rip), %rcx
	movslq	%edx, %rdx
	movq	(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rcx
	movl	8(%rbx), %edx
	leal	63(%rdx), %esi
	sarl	$6, %esi
	cmpl	4(%rcx), %esi
	jg	.L283
.L207:
	movq	8(%rcx), %rdi
	movslq	%esi, %rsi
	movl	%edx, (%rcx)
	movq	%rbx, %rdx
	movq	%rax, 40(%rsp)
	movq	%rcx, 24(%rsp)
	leaq	(%rdi,%rsi,8), %rsi
	movq	%rsi, 16(%rcx)
	call	__ld_wire_val_wrds@PLT
	movq	24(%rsp), %rcx
	movq	(%rsp), %rdi
	movq	16(%rcx), %rdx
	movq	8(%rcx), %rsi
	movl	$1, %ecx
	call	asl_loc_combine_xprop_accum
	movq	40(%rsp), %rax
	subl	$1, (%rax)
.L203:
	movl	32(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L284
.L208:
	movl	8(%rsp), %r12d
	movq	(%rsp), %rsi
	movq	%r13, %rdi
	sall	$4, %r12d
	movslq	%r12d, %r12
	movq	%r12, %rdx
	call	memcpy@PLT
	movq	16(%r15), %rax
	movl	(%rax,%rbp), %r9d
	testl	%r9d, %r9d
	je	.L209
	movq	64(%r15), %rcx
	movq	72(%r15), %rsi
	movl	(%rcx,%rbp), %edi
	movl	(%rsi,%rbp), %edx
	cmpl	%edx, %edi
	je	.L210
	cmpb	$0, 39(%rsp)
	jne	.L285
.L210:
	movq	104(%r15), %rax
	movq	96(%r15), %r9
	addq	%rbp, %r9
	testq	%rax, %rax
	je	.L215
	testb	$32, 8(%rax)
	je	.L215
	movl	(%r15), %r8d
	testl	%r8d, %r8d
	cmove	%edi, %edx
	testl	%edx, %edx
	je	.L215
	movslq	(%r9), %rsi
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	leaq	0(,%rsi,4), %rcx
	jne	.L217
	addq	64(%rax), %rcx
	movq	24(%rax), %rax
	orl	%edx, (%rcx)
.L278:
	movq	(%rax,%rsi,8), %rdi
	movq	(%rsp), %rsi
	movq	%r12, %rdx
	call	memcpy@PLT
	movq	96(%r15), %r9
	movq	64(%r15), %rcx
	movq	72(%r15), %rsi
	addq	%rbp, %r9
	.p2align 4,,10
	.p2align 3
.L215:
	movl	$-1, (%rcx,%rbp)
	movl	$-1, (%rsi,%rbp)
	movl	(%r9), %edx
.L218:
	leal	1(%r14), %eax
	addq	$1, %r14
	cmpl	%eax, 4(%r15)
	movl	%edx, 240(%rbx)
	jg	.L230
.L200:
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L286
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	.cfi_restore_state
	movq	48(%r15), %rax
	leaq	0(,%r14,8), %rdi
	movl	32(%rsp), %r11d
	movq	(%rax,%rdi), %r12
	movq	56(%r15), %rax
	testl	%r11d, %r11d
	movq	(%rax,%rdi), %r9
	jne	.L287
.L219:
	movq	104(%r15), %rcx
	movq	96(%r15), %rax
	testq	%rcx, %rcx
	movl	(%rax,%rbp), %edx
	je	.L218
	testb	$32, 8(%rcx)
	je	.L218
	movl	(%r15), %eax
	movq	16(%rsp), %rdi
	movslq	%edx, %rsi
	movl	(%rcx), %r8d
	testl	%eax, %eax
	movq	40(%r15), %rax
	cmove	%r12, %r9
	testl	%r8d, %r8d
	movq	(%rax,%rdi), %rax
	movq	40(%rcx), %rdi
	movq	(%rdi,%rsi,8), %r13
	movl	8(%rbx), %edi
	jne	.L223
	movq	48(%rcx), %r10
	movq	24(%rcx), %rcx
	testl	%edi, %edi
	movq	(%rcx,%rsi,8), %rcx
	movq	(%r10,%rsi,8), %r8
	movq	%rcx, 16(%rsp)
	jle	.L224
	movslq	8(%rsp), %rdi
	xorl	%r12d, %r12d
	movq	%r13, 80(%rsp)
	movq	%rbp, 88(%rsp)
	movl	%r12d, %r13d
	movq	%rbx, %rbp
	movq	%r8, 48(%rsp)
	movq	%r9, 72(%rsp)
	movq	%rax, %r12
	movq	(%rsp), %rbx
	movq	%rdi, 24(%rsp)
	leaq	(%rcx,%rdi,8), %rdi
	movq	%rdi, 40(%rsp)
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L225:
	addl	$1, %r13d
	cmpl	%r13d, 8(%rbp)
	jle	.L279
.L226:
	movl	%r13d, %esi
	movl	%r13d, %ecx
	sarl	$6, %esi
	andl	$63, %ecx
	movslq	%esi, %rsi
	movq	(%r12,%rsi,8), %rdx
	btq	%rcx, %rdx
	jnc	.L225
	movq	(%rbx,%rsi,8), %rdx
	addq	24(%rsp), %rsi
	movq	16(%rsp), %rdi
	shrq	%cl, %rdx
	andl	$1, %edx
	movq	%rdx, 104(%rsp)
	movq	(%rbx,%rsi,8), %rsi
	shrq	%cl, %rsi
	andl	$1, %esi
	movq	%rsi, 112(%rsp)
	movl	%r13d, %esi
	call	__lhsbsel@PLT
	movq	112(%rsp), %rdx
	movq	40(%rsp), %rdi
	movl	%r13d, %esi
	addl	$1, %r13d
	call	__lhsbsel@PLT
	cmpl	%r13d, 8(%rbp)
	jg	.L226
	.p2align 4,,10
	.p2align 3
.L279:
	movq	%rbp, %rbx
	movq	96(%r15), %rdx
	movq	88(%rsp), %rbp
	movq	48(%rsp), %r8
	movq	72(%rsp), %r9
	movq	%r12, %rax
	movq	80(%rsp), %r13
	movl	(%rdx,%rbp), %edx
.L224:
	movl	8(%rsp), %edi
	testl	%edi, %edi
	jle	.L218
	leal	-1(%rdi), %ecx
	leaq	8(,%rcx,8), %rdi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L229:
	movq	(%r9,%rcx), %rsi
	orq	%rsi, (%r8,%rcx)
	movq	(%rax,%rcx), %rsi
	orq	%rsi, 0(%r13,%rcx)
	addq	$8, %rcx
	cmpq	%rcx, %rdi
	jne	.L229
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L284:
	movslq	8(%rsp), %rax
	movl	8(%rbx), %ecx
	movq	%r12, %rsi
	movq	(%rsp), %rdi
	leaq	(%r12,%rax,8), %rdx
	call	asl_loc_combine_xprop_accum
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L287:
	movl	8(%rbx), %r10d
	testl	%r10d, %r10d
	jle	.L219
	movslq	8(%rsp), %rax
	movq	%rbp, 40(%rsp)
	movq	%rbx, %rbp
	movq	%r14, 48(%rsp)
	movq	%r13, %rbx
	movq	%r12, %r14
	leaq	0(%r13,%rax,8), %rax
	movq	%r9, %r13
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movl	%eax, %r12d
	.p2align 4,,10
	.p2align 3
.L221:
	movl	%r12d, %edx
	movl	%r12d, %ecx
	sarl	$6, %edx
	andl	$63, %ecx
	movslq	%edx, %rdx
	movq	(%r14,%rdx,8), %rsi
	movq	0(%r13,%rdx,8), %rdx
	shrq	%cl, %rsi
	shrq	%cl, %rdx
	andl	$1, %esi
	andl	$1, %edx
	cmpl	%edx, %esi
	je	.L220
	movl	$1, %edx
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	__lhsbsel@PLT
	movq	24(%rsp), %rdi
	movl	$1, %edx
	movl	%r12d, %esi
	call	__lhsbsel@PLT
.L220:
	addl	$1, %r12d
	cmpl	%r12d, 8(%rbp)
	jg	.L221
	movq	%rbp, %rbx
	movq	%r14, %r12
	movq	%r13, %r9
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r14
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L280:
	movslq	8(%rsp), %rax
	movl	8(%rbx), %ecx
	movq	(%rsp), %rdi
	leaq	(%rsi,%rax,8), %rdx
	call	asl_loc_combine_xprop_accum
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L285:
	movl	8(%rbx), %eax
	movq	__masktab@GOTPCREL(%rip), %r10
	leal	63(%rax), %r9d
	andl	$63, %eax
	movq	(%r10,%rax,8), %r8
	sarl	$6, %r9d
	movslq	%r9d, %r11
	testl	%r9d, %r9d
	leaq	-8(%r13,%r11,8), %r10
	movq	%r11, 16(%rsp)
	movslq	8(%rsp), %r11
	movq	%r10, 24(%rsp)
	jle	.L211
	leal	-1(%r9), %r10d
	leaq	8(%r13), %r9
	movq	%r13, %rax
	movq	%r9, 8(%rsp)
	leaq	(%r9,%r10,8), %r9
	.p2align 4,,10
	.p2align 3
.L212:
	movq	$-1, (%rax)
	addq	$8, %rax
	cmpq	%rax, %r9
	jne	.L212
	movq	24(%rsp), %rax
	movq	8(%rsp), %r9
	addq	%r11, %r10
	andq	%r8, (%rax)
	leaq	(%r9,%r10,8), %r9
	leaq	0(%r13,%r11,8), %rax
	.p2align 4,,10
	.p2align 3
.L214:
	movq	$-1, (%rax)
	addq	$8, %rax
	cmpq	%rax, %r9
	jne	.L214
	movq	16(%rsp), %rax
	addq	%r11, %rax
	andq	%r8, -8(%r13,%rax,8)
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L281:
	movq	(%rsi), %rax
	movq	(%rsp), %rdi
	movl	$1, %ecx
	movq	64(%rsp), %rsi
	movq	%rax, %rdx
	shrq	%rax
	andl	$1, %edx
	andl	$1, %eax
	movq	%rdx, 104(%rsp)
	movq	56(%rsp), %rdx
	movq	%rax, 112(%rsp)
	call	asl_loc_combine_xprop_accum
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L223:
	movq	56(%rcx), %r10
	movq	32(%rcx), %rcx
	testl	%edi, %edi
	movq	(%rcx,%rsi,8), %rcx
	movq	(%r10,%rsi,8), %r8
	movq	%rcx, 16(%rsp)
	jle	.L224
	movslq	8(%rsp), %rdi
	xorl	%r12d, %r12d
	movq	%r13, 80(%rsp)
	movq	%rbp, 88(%rsp)
	movl	%r12d, %r13d
	movq	%rbx, %rbp
	movq	%r8, 48(%rsp)
	movq	%r9, 72(%rsp)
	movq	%rax, %r12
	movq	(%rsp), %rbx
	movq	%rdi, 24(%rsp)
	leaq	(%rcx,%rdi,8), %rdi
	movq	%rdi, 40(%rsp)
	jmp	.L228
	.p2align 4,,10
	.p2align 3
.L227:
	addl	$1, %r13d
	cmpl	%r13d, 8(%rbp)
	jle	.L279
.L228:
	movl	%r13d, %esi
	movl	%r13d, %ecx
	sarl	$6, %esi
	andl	$63, %ecx
	movslq	%esi, %rsi
	movq	(%r12,%rsi,8), %rdx
	btq	%rcx, %rdx
	jnc	.L227
	movq	(%rbx,%rsi,8), %rdx
	addq	24(%rsp), %rsi
	movq	16(%rsp), %rdi
	shrq	%cl, %rdx
	andl	$1, %edx
	movq	%rdx, 104(%rsp)
	movq	(%rbx,%rsi,8), %rsi
	shrq	%cl, %rsi
	andl	$1, %esi
	movq	%rsi, 112(%rsp)
	movl	%r13d, %esi
	call	__lhsbsel@PLT
	movq	112(%rsp), %rdx
	movq	40(%rsp), %rdi
	movl	%r13d, %esi
	call	__lhsbsel@PLT
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L283:
	movq	%rcx, %rdi
	movq	%rax, 40(%rsp)
	movq	%rcx, 24(%rsp)
	call	__chg_xstk_width@PLT
	movl	8(%rbx), %edx
	movq	40(%rsp), %rax
	movq	24(%rsp), %rcx
	leal	63(%rdx), %esi
	sarl	$6, %esi
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L282:
	movq	%rax, 24(%rsp)
	call	__grow_xstk@PLT
	movq	24(%rsp), %rax
	movl	(%rax), %edx
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L217:
	addq	72(%rax), %rcx
	movq	32(%rax), %rax
	orl	%edx, (%rcx)
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L211:
	movq	24(%rsp), %rax
	andq	%r8, (%rax)
	movq	16(%rsp), %rax
	addq	%r11, %rax
	andq	%r8, -8(%r13,%rax,8)
	jmp	.L210
.L286:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE253:
	.size	asl_loc_set_restore_xprop_accum_block_selfv, .-asl_loc_set_restore_xprop_accum_block_selfv
	.p2align 4,,15
	.type	linkout_cur_time, @function
linkout_cur_time:
.LFB338:
	.cfi_startproc
	movq	__cur_te_endp@GOTPCREL(%rip), %rcx
	movq	$0, 16(%rdi)
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L302
	movq	80(%rdi), %rax
	testq	%rax, %rax
	je	.L303
	movq	72(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L304
	movq	%rsi, 72(%rax)
	movq	72(%rdi), %rsi
	cmpq	%rdi, %rdx
	movq	%rax, 80(%rsi)
	je	.L305
.L288:
	rep ret
	.p2align 4,,10
	.p2align 3
.L303:
	cmpq	%rdi, %rdx
	je	.L306
	movq	72(%rdi), %rax
	testq	%rax, %rax
	je	.L288
	movq	$0, 80(%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L304:
	movq	%rax, (%rcx)
	movq	$0, 72(%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L305:
	movq	80(%rdx), %rax
	movq	%rax, (%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L306:
	movq	$0, (%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L302:
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rcx
	cmpq	(%rcx), %rdi
	je	.L307
.L290:
	movq	80(%rdi), %rax
	movq	72(%rdi), %rdx
	testq	%rax, %rax
	je	.L308
	testq	%rdx, %rdx
	je	.L309
	movq	%rdx, 72(%rax)
	movq	72(%rdi), %rdx
	movq	%rax, 80(%rdx)
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rdi
	jne	.L288
	movq	80(%rdi), %rdx
	movq	%rdx, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L307:
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	cmpq	(%rax), %rdi
	jne	.L290
	movq	$0, (%rax)
	movq	$0, (%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	testq	%rdx, %rdx
	movq	%rdx, (%rcx)
	je	.L288
	movq	$0, 80(%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L309:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	$0, 72(%rax)
	ret
	.cfi_endproc
.LFE338:
	.size	linkout_cur_time, .-linkout_cur_time
	.p2align 4,,15
	.type	linkout_tevp, @function
linkout_tevp:
.LFB337:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, 48(%rdi)
	je	.L318
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	40(%rdi), %rbx
	movq	$0, 16(%rdi)
	movq	$0, 40(%rdi)
	cmpq	%rdi, 16(%rbx)
	je	.L319
.L312:
	movq	80(%rdi), %rax
	movq	72(%rdi), %rdx
	testq	%rax, %rax
	je	.L320
	testq	%rdx, %rdx
	je	.L321
	movq	%rdx, 72(%rax)
	movq	72(%rdi), %rdx
	movq	%rax, 80(%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L319:
	.cfi_restore_state
	cmpq	%rdi, 24(%rbx)
	jne	.L312
	call	asl_loc_get_new_event
	movq	__process_cancel_ev_enterp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 24(%rax)
	movq	%rax, 24(%rbx)
	movq	%rax, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	.cfi_restore_state
	movq	%rdx, 16(%rbx)
	movq	$0, 80(%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L321:
	.cfi_restore_state
	movq	%rax, 24(%rbx)
	movq	$0, 72(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L318:
	.cfi_restore 3
	jmp	linkout_cur_time
	.cfi_endproc
.LFE337:
	.size	linkout_tevp, .-linkout_tevp
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"v_aslib.c"
	.text
	.p2align 4,,15
	.type	set_trchan_1vtx_nchg_fld.isra.3, @function
set_trchan_1vtx_nchg_fld.isra.3:
.LFB493:
	.cfi_startproc
	movslq	%edx, %rdx
	movq	__chantab@GOTPCREL(%rip), %r9
	leaq	(%rdx,%rdx,4), %rax
	salq	$3, %rax
	addq	(%r9), %rax
	testb	$16, (%rax)
	je	.L335
	rep ret
	.p2align 4,,10
	.p2align 3
.L335:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%r8, %r12
	movq	%rcx, %rbp
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	__needs_netchg_record@PLT
	testl	%eax, %eax
	jne	.L336
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L336:
	.cfi_restore_state
	movq	0(%rbp), %rbp
	movl	%ebx, %edx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	__find_nchg_range@PLT
	cmpq	16(%rbp), %r13
	movq	%rax, %rbx
	je	.L326
	leaq	.LC1(%rip), %rdi
	movl	$1213, %esi
	call	__misc_terr@PLT
.L326:
	testq	%rbx, %rbx
	je	.L337
.L327:
	movq	16(%rbx), %rax
	movq	(%r12,%rax,8), %rax
	movq	%rax, 8(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L337:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	movl	$1214, %esi
	call	__misc_terr@PLT
	jmp	.L327
	.cfi_endproc
.LFE493:
	.size	set_trchan_1vtx_nchg_fld.isra.3, .-set_trchan_1vtx_nchg_fld.isra.3
	.p2align 4,,15
	.type	asl_loc_get_impth_del.isra.5, @function
asl_loc_get_impth_del.isra.5:
.LFB495:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rax), %rax
	movslq	(%rax), %rax
	movq	(%rsi,%rax,8), %rbx
	movzbl	(%rbx), %esi
	movq	8(%rbx), %rdi
	movq	32(%rbx), %r12
	call	__get_del@PLT
	movq	40(%rbx), %rbx
	movq	__pdmindel@GOTPCREL(%rip), %r14
	testq	%rbx, %rbx
	movq	%rax, (%r14)
	je	.L346
	.p2align 4,,10
	.p2align 3
.L339:
	movq	32(%rbx), %rbp
	cmpq	%r12, %rbp
	jb	.L341
	movzbl	(%rbx), %esi
	movq	8(%rbx), %rdi
	call	__get_del@PLT
	cmpq	%r12, %rbp
	je	.L347
.L342:
	movq	%rax, (%r14)
	movq	%rbp, %r12
.L341:
	movq	40(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L339
	addq	(%r14), %r12
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	movq	%r12, 0(%r13)
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L347:
	.cfi_restore_state
	cmpq	(%r14), %rax
	jbe	.L342
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L346:
	addq	%rax, %r12
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%r12, 0(%r13)
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE495:
	.size	asl_loc_get_impth_del.isra.5, .-asl_loc_get_impth_del.isra.5
	.p2align 4,,15
	.type	asl_loc_get_path_del.isra.7, @function
asl_loc_get_path_del.isra.7:
.LFB497:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movslq	%esi, %rsi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	(%rdi,%rsi,8), %rbx
	testq	%rbx, %rbx
	je	.L358
	movq	__pdmindel@GOTPCREL(%rip), %r12
	movq	%rdx, 8(%rsp)
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$-1, (%r12)
	jmp	.L357
	.p2align 4,,10
	.p2align 3
.L373:
	movq	16(%rax), %rax
	movl	(%rcx), %esi
	testb	$1, (%rax)
	leal	-1(%rsi), %edx
	je	.L370
.L353:
	movq	(%rbx), %rax
	movl	%edx, (%rcx)
.L351:
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	16(%rax), %rcx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %r15
	cmpq	%rbp, %r15
	jb	.L354
	movq	(%rax), %r14
	movzwl	(%r14), %esi
	movq	40(%r14), %rdi
	shrw	$4, %si
	andl	$31, %esi
	call	__get_del@PLT
	cmpq	%rbp, %r15
	je	.L371
.L355:
	movq	%rax, (%r12)
	movq	%r15, %rbp
	movq	%rbx, %r13
.L354:
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	.L372
.L357:
	movq	(%rbx), %rax
	movq	(%rax), %rdx
	movq	56(%rdx), %rdi
	testq	%rdi, %rdi
	je	.L351
	call	__eval2_xpr@PLT
	movq	8(%rax), %rdx
	movq	__xspi@GOTPCREL(%rip), %rcx
	testb	$1, (%rdx)
	je	.L373
	movl	(%rcx), %eax
	leal	-1(%rax), %edx
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L372:
	movq	(%r12), %rax
	cmpq	$-1, %rax
	je	.L358
	addq	%rax, %rbp
	movq	8(%rsp), %rax
	movq	%rbp, (%rax)
.L348:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	.cfi_restore_state
	testb	$32, 2(%r14)
	movq	(%r12), %rcx
	je	.L356
	cmpq	%rcx, %rax
	je	.L354
.L356:
	cmpq	%rcx, %rax
	jbe	.L355
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L370:
	movl	%edx, (%rcx)
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L358:
	xorl	%r13d, %r13d
	jmp	.L348
	.cfi_endproc
.LFE497:
	.size	asl_loc_get_path_del.isra.7, .-asl_loc_get_path_del.isra.7
	.p2align 4,,15
	.type	asl_loc_get_path_del_scalar.isra.8, @function
asl_loc_get_path_del_scalar.isra.8:
.LFB498:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r13d, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebp, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	16(%rdi), %rax
	movq	__pdmindel@GOTPCREL(%rip), %r12
	movq	%rsi, 8(%rsp)
	movq	(%rax), %rbx
	movq	$-1, (%r12)
	testq	%rbx, %rbx
	jne	.L375
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L402:
	movq	16(%rax), %rax
	movl	(%rcx), %esi
	testb	$1, (%rax)
	leal	-1(%rsi), %edx
	je	.L399
.L379:
	movq	(%rbx), %rax
	movl	%edx, (%rcx)
.L377:
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	16(%rax), %rcx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %r15
	cmpq	%rbp, %r15
	jb	.L380
	movq	(%rax), %r14
	movzwl	(%r14), %esi
	movq	40(%r14), %rdi
	shrw	$4, %si
	andl	$31, %esi
	call	__get_del@PLT
	cmpq	%rbp, %r15
	je	.L400
.L381:
	movq	%rax, (%r12)
	movq	%r15, %rbp
	movq	%rbx, %r13
.L380:
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	.L401
.L375:
	movq	(%rbx), %rax
	movq	(%rax), %rdx
	movq	56(%rdx), %rdi
	testq	%rdi, %rdi
	je	.L377
	call	__eval2_xpr@PLT
	movq	8(%rax), %rdx
	movq	__xspi@GOTPCREL(%rip), %rcx
	testb	$1, (%rdx)
	je	.L402
	movl	(%rcx), %eax
	leal	-1(%rax), %edx
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L400:
	testb	$32, 2(%r14)
	movq	(%r12), %rcx
	je	.L382
	cmpq	%rcx, %rax
	je	.L380
.L382:
	cmpq	%rcx, %rax
	jbe	.L381
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L375
	.p2align 4,,10
	.p2align 3
.L401:
	movq	(%r12), %rax
	cmpq	$-1, %rax
	je	.L383
	addq	%rax, %rbp
	movq	8(%rsp), %rax
	movq	%rbp, (%rax)
.L374:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L399:
	.cfi_restore_state
	movl	%edx, (%rcx)
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L383:
	xorl	%r13d, %r13d
	jmp	.L374
	.cfi_endproc
.LFE498:
	.size	asl_loc_get_path_del_scalar.isra.8, .-asl_loc_get_path_del_scalar.isra.8
	.p2align 4,,15
	.type	asl_loc_ld_vtx_netbit, @function
asl_loc_ld_vtx_netbit:
.LFB402:
	.cfi_startproc
	testb	$4, 2(%rdx)
	je	.L411
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp
	movl	%ecx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	__xspi@GOTPCREL(%rip), %r14
	movq	__maxxnest@GOTPCREL(%rip), %rdx
	movl	(%r14), %eax
	addl	$1, %eax
	cmpl	(%rdx), %eax
	movl	%eax, (%r14)
	jge	.L412
.L406:
	movq	__xstk@GOTPCREL(%rip), %rdx
	movl	8(%r15), %ecx
	cltq
	movq	(%rdx), %rdx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	movq	(%rdx,%rax,8), %r13
	cmpl	4(%r13), %esi
	jg	.L413
.L407:
	movq	88(%r15), %rax
	movq	8(%r13), %rdi
	movslq	%esi, %rsi
	movl	%ecx, 0(%r13)
	movq	(%rax), %rdx
	leaq	(%rdi,%rsi,8), %rsi
	movq	%rsi, 16(%r13)
	call	__ld_perinst_val@PLT
	movq	8(%r13), %rax
	movl	%ebx, %edx
	andl	$63, %ebx
	sarl	$6, %edx
	movl	%ebx, %ecx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	shrq	%cl, %rax
	andl	$1, %eax
	movq	%rax, 0(%rbp)
	movq	16(%r13), %rax
	movq	(%rax,%rdx,8), %rax
	shrq	%cl, %rax
	andl	$1, %eax
	movq	%rax, (%r12)
	subl	$1, (%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L411:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movq	__idp@GOTPCREL(%rip), %rax
	movq	88(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movslq	(%rax), %rax
	movzbl	(%rdx,%rax), %eax
	movq	%rax, (%rdi)
	shrq	%rax
	andl	$1, %eax
	movq	%rax, (%rsi)
	andq	$1, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L413:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%r15), %ecx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	jmp	.L407
	.p2align 4,,10
	.p2align 3
.L412:
	call	__grow_xstk@PLT
	movl	(%r14), %eax
	jmp	.L406
	.cfi_endproc
.LFE402:
	.size	asl_loc_ld_vtx_netbit, .-asl_loc_ld_vtx_netbit
	.p2align 4,,15
	.type	asl_loc_eval_combine_bid_chan.isra.11, @function
asl_loc_eval_combine_bid_chan.isra.11:
.LFB501:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	__acum_b@GOTPCREL(%rip), %rbp
	movq	__idp@GOTPCREL(%rip), %r12
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	__acum_a@GOTPCREL(%rip), %rax
	movq	$1, 0(%rbp)
	movq	$0, (%rax)
	cmpq	$0, (%rsi)
	movq	(%r12), %rax
	movq	%rax, 24(%rsp)
	je	.L423
	leaq	48(%rsp), %rax
	movq	%rdi, %r13
	movq	%rsi, %r14
	movl	$1, %ebx
	movq	%rax, 8(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L437:
	cmpl	$-1, %ecx
	jne	.L418
	movq	32(%r15), %rdx
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, %rcx
	andl	$1, %edx
	shrq	%rcx
	movq	%rdx, 40(%rsp)
	andl	$1, %ecx
	movq	%rcx, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L419:
	movzbl	(%r15), %r8d
	movq	__acum_a@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	andl	$31, %r8d
	call	__eval_1w_nonstren@PLT
	testb	$1, 3(%r15)
	je	.L420
	movq	$0, 0(%rbp)
.L420:
	addq	$24, %r13
	cmpq	%rbx, (%r14)
	leaq	1(%rbx), %rax
	jbe	.L436
	movq	%rax, %rbx
.L421:
	movl	8(%r13), %ecx
	movq	0(%r13), %r15
	movl	$0, %edi
	movq	16(%r13), %rax
	cmpl	$-1, %ecx
	cmovne	%ecx, %edi
	testb	$32, 4(%r15)
	movq	8(%rax), %rsi
	movq	%rsi, (%r12)
	je	.L417
	movl	8(%r15), %edx
	movq	120(%r15), %rax
	imull	(%rsi), %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rdx
	testb	$1, (%rdx)
	jne	.L437
.L417:
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%r15, %rdx
	call	asl_loc_ld_vtx_netbit
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L418:
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%r15, %rdx
	call	__ld_bit@PLT
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L436:
	movq	__acum_a@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
.L415:
	movq	24(%rsp), %rbx
	movq	%rbx, (%r12)
	movq	56(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L438
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L423:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L415
.L438:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE501:
	.size	asl_loc_eval_combine_bid_chan.isra.11, .-asl_loc_eval_combine_bid_chan.isra.11
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"error in conversion of real %g to 64 bit time - set to %s"
	.align 8
.LC3:
	.string	"delay expression #(%s) evaluates to x/z changed to #0"
	.text
	.p2align 4,,15
	.type	asl_loc_delx_to_deltim, @function
asl_loc_delx_to_deltim:
.LFB438:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	__idp@GOTPCREL(%rip), %rax
	testb	$8, 2(%rdi)
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	jne	.L448
	movq	16(%rsi), %rax
	cmpq	$0, (%rax)
	jne	.L449
	cmpl	$64, (%rsi)
	movq	8(%rsi), %rcx
	movq	(%rcx), %rax
	jle	.L445
	movq	8(%rcx), %rcx
	salq	$32, %rcx
	orq	%rcx, %rax
.L445:
	testb	$2, 3(%rdx)
	jne	.L439
	movzbl	2(%rdx), %edx
	movq	__des_timeprec@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shrb	%dl
	andl	$15, %edx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	__itoticks_tab@GOTPCREL(%rip), %rcx
	imulq	(%rcx,%rdx,8), %rax
.L439:
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L450
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L449:
	.cfi_restore_state
	movq	__xs@GOTPCREL(%rip), %rax
	movq	%rdi, %rsi
	movq	(%rax), %rdi
	call	__msgexpr_tostr@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdx
	movl	$565, %edi
	xorl	%eax, %eax
	call	__sgfwarn@PLT
	xorl	%eax, %eax
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L448:
	testb	$2, 3(%rdx)
	movq	8(%rsi), %rax
	movsd	(%rax), %xmm1
	jne	.L441
	movq	__des_timeprec@GOTPCREL(%rip), %rax
	movzbl	2(%rdx), %edx
	movq	(%rax), %rax
	shrb	%dl
	andl	$15, %edx
	subl	%edx, %eax
	movq	__dbl_toticks_tab@GOTPCREL(%rip), %rdx
	cltq
	mulsd	(%rdx,%rax,8), %xmm1
.L441:
	leaq	16(%rsp), %rbx
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	movq	%rbx, %rdi
	call	__real_to_v64tim@PLT
	testl	%eax, %eax
	je	.L451
	movq	16(%rsp), %rax
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L451:
	movq	__xs@GOTPCREL(%rip), %rax
	movq	%rbx, %rsi
	movq	(%rax), %rdi
	call	__to_timstr@PLT
	movsd	8(%rsp), %xmm1
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdx
	movl	$563, %edi
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	call	__sgfwarn@PLT
	movq	16(%rsp), %rax
	jmp	.L439
.L450:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE438:
	.size	asl_loc_delx_to_deltim, .-asl_loc_delx_to_deltim
	.p2align 4,,15
	.type	asl_loc_rtl_dist_uniform.part.1.constprop.30, @function
asl_loc_rtl_dist_uniform.part.1.constprop.30:
.LFB530:
	.cfi_startproc
	movl	(%rdi), %eax
	testl	%eax, %eax
	jne	.L459
	movsd	.LC4(%rip), %xmm0
	movl	$-1844104698, (%rdi)
.L458:
	cvttsd2si	%xmm0, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L459:
	imull	$69069, %eax, %eax
	pxor	%xmm1, %xmm1
	movsd	.LC5(%rip), %xmm0
	movsd	.LC6(%rip), %xmm3
	addl	$1, %eax
	movsd	.LC7(%rip), %xmm2
	movl	%eax, %edx
	movl	%eax, (%rdi)
	shrl	$9, %edx
	orl	$1065353216, %edx
	movl	%edx, -4(%rsp)
	cvtss2sd	-4(%rsp), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm1
	subsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	mulsd	.LC9(%rip), %xmm0
	subsd	%xmm1, %xmm0
	ucomisd	.LC10(%rip), %xmm0
	jnb	.L458
	subsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE530:
	.size	asl_loc_rtl_dist_uniform.part.1.constprop.30, .-asl_loc_rtl_dist_uniform.part.1.constprop.30
	.p2align 4,,15
	.type	asl_loc_reschedule_1wev.part.6, @function
asl_loc_reschedule_1wev.part.6:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L461
	movq	$0, 72(%rbx)
.L461:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L467
	cmpq	8(%rsi), %rbp
	jne	.L464
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L468
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	movq	$1, 16(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L464:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	asl_loc_conflict_list
	movq	$1, 16(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L467:
	.cfi_restore_state
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	movq	$1, 16(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L468:
	.cfi_restore_state
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	movq	$1, 16(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE496:
	.size	asl_loc_reschedule_1wev.part.6, .-asl_loc_reschedule_1wev.part.6
	.p2align 4,,15
	.type	asl_loc_schedule_1wev, @function
asl_loc_schedule_1wev:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%edi, %rbp
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdx, %rdx
	movq	%rcx, 48(%rsi)
	jne	.L470
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L478
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rsi, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rsi, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rsi)
.L472:
	movq	%rbp, 8(%rbx)
	movb	%r8b, 2(%rbx)
	movq	$1, 16(%rbx)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L478:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rsi, (%rax)
	movq	%rsi, (%rdx)
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L470:
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rsi)
	cmpq	(%rax), %rsi
	je	.L473
	movq	$0, 72(%rsi)
.L473:
	movq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rcx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rdx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L479
	cmpq	8(%rsi), %rcx
	jne	.L475
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L480
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L475:
	movq	%rbx, %rdi
	movq	%r8, 8(%rsp)
	call	asl_loc_conflict_list
	movq	8(%rsp), %r8
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L479:
	movl	%eax, %esi
	movq	%rbx, %rdi
	movq	%r8, 8(%rsp)
	call	asl_loc_add_new_heap_time
	movq	8(%rsp), %r8
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L480:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L472
	.cfi_endproc
.LFE412:
	.size	asl_loc_schedule_1wev, .-asl_loc_schedule_1wev
	.section	.rodata.str1.8
	.align 8
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
.LFB381:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	__new_gateval@GOTPCREL(%rip), %rax
	cmpq	$0, 16(%rdx)
	movq	(%rax), %r12
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	jne	.L482
	cmpq	%r14, %r12
	je	.L516
	movzbl	2(%rdi), %ebx
	shrb	$7, %bl
	movzbl	%bl, %ebx
.L511:
	movq	56(%r13), %rax
	leaq	16(%rsp), %rdx
	movl	%r15d, %esi
	movq	%rdx, (%rsp)
	movq	16(%rax), %rdi
	call	asl_loc_get_path_del.isra.7
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L517
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx
	cmpq	(%rax), %rcx
	jbe	.L521
	cmpq	$0, 16(%rbp)
	je	.L522
	cmpq	%r14, %r12
	je	.L487
	cmpb	%r12b, 2(%rbp)
	je	.L516
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L506
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L523
.L506:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L520
	movq	16(%rsp), %rsi
	cmpq	48(%rbp), %rsi
	movl	%eax, (%rsp)
	movb	%r12b, 2(%rbp)
	je	.L516
	movq	%rbp, %rdi
	call	asl_loc_reschedule_1wev.part.6
	movl	(%rsp), %eax
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L482:
	movzbl	2(%rdi), %ebx
	shrb	$7, %bl
	cmpq	%r14, %r12
	movzbl	%bl, %ebx
	jne	.L511
	movq	$0, 16(%rsp)
.L487:
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	jne	.L524
.L499:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L501
.L520:
	movq	__showe_onevent@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L509
	cmpq	$1, %rbx
	sbbl	%eax, %eax
	andl	$40, %eax
	subl	$37, %eax
	movb	%al, 2(%rbp)
.L516:
	xorl	%eax, %eax
.L481:
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L525
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L509:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	linkout_tevp
.L494:
	testq	%rbx, %rbx
	movq	__new_gateval@GOTPCREL(%rip), %rax
	je	.L495
	movq	$219, (%rax)
	.p2align 4,,10
	.p2align 3
.L517:
	movl	$1, %eax
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L521:
	movq	__no_informs@GOTPCREL(%rip), %rax
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	.L526
.L489:
	cmpq	$0, 16(%rbp)
	je	.L517
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	je	.L492
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L492
	movl	$592, %edi
	movq	%r11, (%rsp)
	call	__em_suppr@PLT
	testl	%eax, %eax
	movq	(%rsp), %r11
	jne	.L492
	movq	__simtime@GOTPCREL(%rip), %rdx
	leaq	48(%rbp), %rcx
	leaq	.LC11(%rip), %r8
	movq	%rbx, %r9
	movq	%rbp, %rsi
	movq	%r11, %rdi
	call	__emit_path_pulsewarn@PLT
	.p2align 4,,10
	.p2align 3
.L492:
	movq	%rbp, %rdi
	call	linkout_tevp
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L494
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L524:
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	jne	.L499
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L499
	leaq	48(%rbp), %rcx
	leaq	.LC12(%rip), %r8
	movq	%rbx, %r9
	movq	%rbp, %rdx
	movl	%r15d, %esi
	movq	%r13, %rdi
	call	__emit_path_samewarn@PLT
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L522:
	movq	__pdmindel@GOTPCREL(%rip), %rax
	movq	%r12, %r8
	movq	%rbp, %rsi
	movl	%r15d, %edi
	movq	(%rax), %rdx
	call	asl_loc_schedule_1wev
	xorl	%eax, %eax
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L495:
	movq	$3, (%rax)
	movl	$1, %eax
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L526:
	movq	__pdmindel@GOTPCREL(%rip), %rdx
	movq	%r11, %rsi
	movq	%r13, %rdi
	movq	%r11, (%rsp)
	call	__emit_path_distinform@PLT
	movq	(%rsp), %r11
	jmp	.L489
	.p2align 4,,10
	.p2align 3
.L501:
	movq	%rbp, %rdi
	movl	%eax, (%rsp)
	call	linkout_tevp
	movl	(%rsp), %eax
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L523:
	movl	$592, %edi
	movq	%r11, 8(%rsp)
	call	__em_suppr@PLT
	testl	%eax, %eax
	movq	8(%rsp), %r11
	jne	.L506
	movq	(%rsp), %rcx
	leaq	48(%rbp), %rdx
	leaq	.LC13(%rip), %r8
	movq	%rbx, %r9
	movq	%rbp, %rsi
	movq	%r11, %rdi
	call	__emit_path_pulsewarn@PLT
	jmp	.L506
.L525:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE381:
	.size	asl_loc_schd_1bitpthdrvr, .-asl_loc_schd_1bitpthdrvr
	.p2align 4,,15
	.globl	__alnk_init_mdp
	.type	__alnk_init_mdp, @function
__alnk_init_mdp:
.LFB69:
	.cfi_startproc
	movq	__dsgn_mod_ndx@GOTPCREL(%rip), %rax
	movslq	%edi, %rdi
	movq	(%rax), %rax
	movq	(%rax,%rdi,8), %rdx
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	ret
	.cfi_endproc
.LFE69:
	.size	__alnk_init_mdp, .-__alnk_init_mdp
	.p2align 4,,15
	.globl	__alnk_fixup_allmods_comm_idp_areas
	.type	__alnk_fixup_allmods_comm_idp_areas, @function
__alnk_fixup_allmods_comm_idp_areas:
.LFB70:
	.cfi_startproc
	movq	__dsgn_num_mods@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L571
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movl	$0, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L544:
	movq	__dsgn_mod_ndx@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax,%r14), %r12
	movl	36(%r12), %eax
	movq	192(%r12), %rbx
	testl	%eax, %eax
	jle	.L530
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L541:
	movq	72(%rbx), %rax
	testq	%rax, %rax
	je	.L531
	.p2align 4,,10
	.p2align 3
.L533:
	movzbl	1(%rax), %edx
	andl	$3, %edx
	cmpb	$2, %dl
	jne	.L532
	movzbl	(%rax), %edx
	andl	$48, %edx
	cmpb	$32, %dl
	jne	.L532
	movq	24(%rax), %rdx
	movq	8(%rdx), %rcx
	movq	(%rdx), %rsi
	movq	408(%rcx), %rcx
	leaq	(%rcx,%rsi,8), %rcx
	movq	%rcx, 32(%rdx)
.L532:
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L533
.L531:
	movq	80(%rbx), %rax
	testq	%rax, %rax
	je	.L534
	.p2align 4,,10
	.p2align 3
.L536:
	movzbl	1(%rax), %edx
	andl	$3, %edx
	cmpb	$2, %dl
	jne	.L535
	movzbl	(%rax), %edx
	andl	$48, %edx
	cmpb	$32, %dl
	jne	.L535
	movq	24(%rax), %rdx
	movq	8(%rdx), %rcx
	movq	(%rdx), %rsi
	movq	408(%rcx), %rcx
	leaq	(%rcx,%rsi,8), %rcx
	movq	%rcx, 32(%rdx)
.L535:
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L536
.L534:
	movq	64(%rbx), %r15
	testq	%r15, %r15
	jne	.L540
	jmp	.L537
	.p2align 4,,10
	.p2align 3
.L538:
	movq	128(%r15), %r15
	testq	%r15, %r15
	je	.L537
.L540:
	cmpb	$0, 2(%r15)
	jns	.L538
	movq	32(%r15), %r13
	testq	%r13, %r13
	movq	%r13, %rdi
	je	.L574
.L539:
	movq	8(%r13), %rcx
	movq	0(%r13), %rsi
	movq	408(%rcx), %rcx
	leaq	(%rcx,%rsi,8), %rcx
	movq	24(%r13), %rsi
	movq	%rcx, 96(%r15)
	movq	16(%r13), %rcx
	movq	408(%rsi), %rdx
	movl	$32, %esi
	leaq	(%rdx,%rcx,8), %rdx
	movq	%rdx, 104(%r15)
	call	__my_free@PLT
	movq	$0, 32(%r15)
	movq	128(%r15), %r15
	testq	%r15, %r15
	jne	.L540
.L537:
	addl	$1, %ebp
	addq	$248, %rbx
	cmpl	36(%r12), %ebp
	jl	.L541
.L530:
	movl	12(%r12), %eax
	movq	408(%r12), %rdx
	testl	%eax, %eax
	jle	.L542
	movq	208(%r12), %rcx
	movq	416(%r12), %rbx
	leal	-1(%rax), %edi
	leaq	8(%rcx), %rax
	leaq	0(,%rbx,8), %rsi
	leaq	(%rax,%rdi,8), %rdi
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L575:
	addq	$8, %rax
.L543:
	movq	(%rcx), %rcx
	movq	%rdx, 8(%rcx)
	addq	%rsi, %rdx
	cmpq	%rax, %rdi
	movq	%rax, %rcx
	jne	.L575
.L542:
	movq	__dsgn_num_mods@GOTPCREL(%rip), %rbx
	addl	$1, 12(%rsp)
	addq	$8, %r14
	movl	12(%rsp), %eax
	movl	(%rbx), %edx
	cmpl	%eax, %edx
	jg	.L544
	testl	%edx, %edx
	jle	.L528
	movq	__dsgn_mod_ndx@GOTPCREL(%rip), %rax
	subl	$1, %edx
	movq	(%rax), %rax
	leaq	8(%rax), %rdi
	leaq	(%rdi,%rdx,8), %r8
	.p2align 4,,10
	.p2align 3
.L548:
	movq	(%rax), %rdx
	movl	12(%rdx), %eax
	testl	%eax, %eax
	jle	.L545
	movq	208(%rdx), %rdx
	leal	-1(%rax), %ecx
	leaq	8(%rdx), %rax
	leaq	(%rax,%rcx,8), %rsi
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L576:
	addq	$8, %rax
.L547:
	movq	(%rdx), %rcx
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L546
	movq	8(%rcx), %rcx
	movq	8(%rdx), %rdx
	movq	%rdx, 24(%rcx)
.L546:
	cmpq	%rsi, %rax
	movq	%rax, %rdx
	jne	.L576
.L545:
	cmpq	%rdi, %r8
	movq	%rdi, %rax
	je	.L528
	addq	$8, %rdi
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L574:
	leaq	.LC1(%rip), %rdi
	movl	$635, %esi
	call	__misc_terr@PLT
	movq	32(%r15), %rdi
	jmp	.L539
.L528:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L571:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	rep ret
	.cfi_endproc
.LFE70:
	.size	__alnk_fixup_allmods_comm_idp_areas, .-__alnk_fixup_allmods_comm_idp_areas
	.p2align 4,,15
	.globl	__alnk_init_tev_dat
	.type	__alnk_init_tev_dat, @function
__alnk_init_tev_dat:
.LFB72:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movq	(%rax), %r10
	movq	__tevdat_template@GOTPCREL(%rip), %rax
	movdqu	(%rax), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movdqu	48(%rax), %xmm0
	movups	%xmm0, 48(%rdi)
	movdqu	64(%rax), %xmm0
	movups	%xmm0, 64(%rdi)
	movdqu	80(%rax), %xmm0
	movups	%xmm0, 80(%rdi)
	movq	96(%rax), %r9
	movq	%rdx, 24(%rdi)
	movq	%r9, 96(%rdi)
	cmpl	$1, 12(%r10)
	movq	408(%r10), %r11
	movq	%r8, 64(%rdi)
	movq	%r11, 56(%rdi)
	jle	.L578
	movq	%rdi, (%r11,%rcx,8)
.L578:
	cmpl	$1, %esi
	jle	.L584
	subl	$2, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	addq	$1, %rsi
	leaq	(%rsi,%rsi,2), %r9
	leaq	(%rsi,%r9,4), %rsi
	movl	$1, %r9d
	leaq	(%rdi,%rsi,8), %rbp
	.p2align 4,,10
	.p2align 3
.L581:
	movdqu	(%rax), %xmm0
	addq	$104, %rdi
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movdqu	48(%rax), %xmm0
	movups	%xmm0, 48(%rdi)
	movdqu	64(%rax), %xmm0
	movups	%xmm0, 64(%rdi)
	movdqu	80(%rax), %xmm0
	movups	%xmm0, 80(%rdi)
	movq	96(%rax), %rsi
	movq	%r8, 64(%rdi)
	movq	%rsi, 96(%rdi)
	movq	416(%r10), %rsi
	movq	%rdx, 24(%rdi)
	imulq	%r9, %rsi
	cmpl	$1, 12(%r10)
	leaq	(%r11,%rsi,8), %rbx
	movq	%rbx, 56(%rdi)
	jle	.L580
	addq	%rcx, %rsi
	movq	%rdi, (%r11,%rsi,8)
.L580:
	addq	$1, %r9
	cmpq	%rdi, %rbp
	jne	.L581
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L584:
	.cfi_restore 3
	.cfi_restore 6
	rep ret
	.cfi_endproc
.LFE72:
	.size	__alnk_init_tev_dat, .-__alnk_init_tev_dat
	.p2align 4,,15
	.globl	__alnk_init_tev_dat_nodelay
	.type	__alnk_init_tev_dat_nodelay, @function
__alnk_init_tev_dat_nodelay:
.LFB73:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	movq	__tevdat_template@GOTPCREL(%rip), %rax
	movdqu	(%rax), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movdqu	48(%rax), %xmm0
	movups	%xmm0, 48(%rdi)
	movdqu	64(%rax), %xmm0
	movups	%xmm0, 64(%rdi)
	movdqu	80(%rax), %xmm0
	movups	%xmm0, 80(%rdi)
	movq	96(%rax), %r8
	movq	%rdx, 24(%rdi)
	movq	%r8, 96(%rdi)
	cmpl	$1, 12(%r9)
	movq	408(%r9), %r10
	movq	%r10, 56(%rdi)
	jle	.L588
	movq	%rdi, (%r10,%rcx,8)
.L588:
	cmpl	$1, %esi
	jle	.L594
	subl	$2, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	addq	$1, %rsi
	leaq	(%rsi,%rsi,2), %r8
	leaq	(%rsi,%r8,4), %rsi
	movl	$1, %r8d
	leaq	(%rdi,%rsi,8), %rbx
	.p2align 4,,10
	.p2align 3
.L591:
	movdqu	(%rax), %xmm0
	addq	$104, %rdi
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movdqu	48(%rax), %xmm0
	movups	%xmm0, 48(%rdi)
	movdqu	64(%rax), %xmm0
	movups	%xmm0, 64(%rdi)
	movdqu	80(%rax), %xmm0
	movups	%xmm0, 80(%rdi)
	movq	96(%rax), %rsi
	movq	%rdx, 24(%rdi)
	movq	%rsi, 96(%rdi)
	movq	416(%r9), %rsi
	imulq	%r8, %rsi
	cmpl	$1, 12(%r9)
	leaq	(%r10,%rsi,8), %r11
	movq	%r11, 56(%rdi)
	jle	.L590
	addq	%rcx, %rsi
	movq	%rdi, (%r10,%rsi,8)
.L590:
	addq	$1, %r8
	cmpq	%rdi, %rbx
	jne	.L591
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L594:
	.cfi_restore 3
	rep ret
	.cfi_endproc
.LFE73:
	.size	__alnk_init_tev_dat_nodelay, .-__alnk_init_tev_dat_nodelay
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el
	.type	__alnk_init_nchglst_el, @function
__alnk_init_nchglst_el:
.LFB74:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%edx, %rdx
	movq	(%rax), %r8
	movq	__nchglst_template@GOTPCREL(%rip), %rax
	movdqu	(%rax), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movq	48(%rax), %rax
	movq	%rsi, 8(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rdx, %rax
	movq	408(%r8), %r9
	salq	$5, %rax
	subq	%rdx, %rax
	movq	192(%r8), %rdx
	cmpq	$-1, %rcx
	movq	%r9, 40(%rdi)
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 32(%rdi)
	je	.L598
	movq	%rdi, (%r9,%rcx,8)
.L598:
	cmpl	$1, 12(%r8)
	jle	.L597
	leaq	56(%rdi), %rax
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L601:
	movdqu	(%rdi), %xmm0
	movups	%xmm0, (%rax)
	movdqu	16(%rdi), %xmm0
	movups	%xmm0, 16(%rax)
	movdqu	32(%rdi), %xmm0
	movups	%xmm0, 32(%rax)
	movq	48(%rdi), %rsi
	movq	%rsi, 48(%rax)
	movq	416(%r8), %rsi
	imulq	%rdx, %rsi
	cmpq	$-1, %rcx
	leaq	(%r9,%rsi,8), %r10
	movq	%r10, 40(%rax)
	je	.L600
	addq	%rcx, %rsi
	movq	%rax, (%r9,%rsi,8)
.L600:
	leal	1(%rdx), %esi
	addq	$56, %rax
	addq	$1, %rdx
	cmpl	%esi, 12(%r8)
	jg	.L601
.L597:
	rep ret
	.cfi_endproc
.LFE74:
	.size	__alnk_init_nchglst_el, .-__alnk_init_nchglst_el
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el_npp
	.type	__alnk_init_nchglst_el_npp, @function
__alnk_init_nchglst_el_npp:
.LFB75:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%edx, %rdx
	movq	(%rax), %r9
	movq	__nchglst_template@GOTPCREL(%rip), %rax
	movdqu	(%rax), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movq	48(%rax), %rax
	movq	%rsi, 8(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	movq	192(%r9), %rdx
	cmpq	$-1, %rcx
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 32(%rdi)
	movq	%r8, 168(%rax)
	movq	408(%r9), %r8
	movq	%r8, 40(%rdi)
	je	.L610
	movq	%rdi, (%r8,%rcx,8)
.L610:
	cmpl	$1, 12(%r9)
	jle	.L609
	leaq	56(%rdi), %rax
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L613:
	movdqu	(%rdi), %xmm0
	movups	%xmm0, (%rax)
	movdqu	16(%rdi), %xmm0
	movups	%xmm0, 16(%rax)
	movdqu	32(%rdi), %xmm0
	movups	%xmm0, 32(%rax)
	movq	48(%rdi), %rsi
	movq	%rsi, 48(%rax)
	movq	416(%r9), %rsi
	imulq	%rdx, %rsi
	cmpq	$-1, %rcx
	leaq	(%r8,%rsi,8), %r10
	movq	%r10, 40(%rax)
	je	.L612
	addq	%rcx, %rsi
	movq	%rax, (%r8,%rsi,8)
.L612:
	leal	1(%rdx), %esi
	addq	$56, %rax
	addq	$1, %rdx
	cmpl	%esi, 12(%r9)
	jg	.L613
.L609:
	rep ret
	.cfi_endproc
.LFE75:
	.size	__alnk_init_nchglst_el_npp, .-__alnk_init_nchglst_el_npp
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el_rng
	.type	__alnk_init_nchglst_el_rng, @function
__alnk_init_nchglst_el_rng:
.LFB76:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%edx, %rdx
	movq	(%rax), %r10
	movq	__nchglst_template@GOTPCREL(%rip), %rax
	movdqu	(%rax), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movq	48(%rax), %rax
	movl	%r8d, 24(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rdx, %rax
	movq	408(%r10), %r8
	salq	$5, %rax
	movq	%rsi, 8(%rdi)
	movl	%r9d, 28(%rdi)
	subq	%rdx, %rax
	movq	192(%r10), %rdx
	cmpq	$-1, %rcx
	movq	%r8, 40(%rdi)
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 32(%rdi)
	je	.L622
	movq	%rdi, (%r8,%rcx,8)
.L622:
	cmpl	$1, 12(%r10)
	jle	.L621
	leaq	56(%rdi), %rax
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L625:
	movdqu	(%rdi), %xmm0
	movups	%xmm0, (%rax)
	movdqu	16(%rdi), %xmm0
	movups	%xmm0, 16(%rax)
	movdqu	32(%rdi), %xmm0
	movups	%xmm0, 32(%rax)
	movq	48(%rdi), %rsi
	movq	%rsi, 48(%rax)
	movq	416(%r10), %rsi
	imulq	%rdx, %rsi
	cmpq	$-1, %rcx
	leaq	(%r8,%rsi,8), %r9
	movq	%r9, 40(%rax)
	je	.L624
	addq	%rcx, %rsi
	movq	%rax, (%r8,%rsi,8)
.L624:
	leal	1(%rdx), %esi
	addq	$56, %rax
	addq	$1, %rdx
	cmpl	%esi, 12(%r10)
	jg	.L625
.L621:
	rep ret
	.cfi_endproc
.LFE76:
	.size	__alnk_init_nchglst_el_rng, .-__alnk_init_nchglst_el_rng
	.p2align 4,,15
	.globl	__alnk_init_nchglst_el_rng_npp
	.type	__alnk_init_nchglst_el_rng_npp, @function
__alnk_init_nchglst_el_rng_npp:
.LFB77:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%edx, %rdx
	movq	(%rax), %r10
	movq	__nchglst_template@GOTPCREL(%rip), %rax
	movdqu	(%rax), %xmm0
	movups	%xmm0, (%rdi)
	movdqu	16(%rax), %xmm0
	movups	%xmm0, 16(%rdi)
	movdqu	32(%rax), %xmm0
	movups	%xmm0, 32(%rdi)
	movq	48(%rax), %rax
	movl	%r8d, 24(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rdx, %rax
	movq	408(%r10), %r8
	salq	$5, %rax
	movq	%rsi, 8(%rdi)
	movl	%r9d, 28(%rdi)
	subq	%rdx, %rax
	movq	192(%r10), %rdx
	cmpq	$-1, %rcx
	leaq	(%rdx,%rax,8), %rax
	movq	8(%rsp), %rdx
	movq	%rax, 32(%rdi)
	movq	%rdx, 168(%rax)
	movq	%r8, 40(%rdi)
	je	.L634
	movq	%rdi, (%r8,%rcx,8)
.L634:
	cmpl	$1, 12(%r10)
	jle	.L633
	leaq	56(%rdi), %rax
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L637:
	movdqu	(%rdi), %xmm0
	movups	%xmm0, (%rax)
	movdqu	16(%rdi), %xmm0
	movups	%xmm0, 16(%rax)
	movdqu	32(%rdi), %xmm0
	movups	%xmm0, 32(%rax)
	movq	48(%rdi), %rsi
	movq	%rsi, 48(%rax)
	movq	416(%r10), %rsi
	imulq	%rdx, %rsi
	cmpq	$-1, %rcx
	leaq	(%r8,%rsi,8), %r9
	movq	%r9, 40(%rax)
	je	.L636
	addq	%rcx, %rsi
	movq	%rax, (%r8,%rsi,8)
.L636:
	leal	1(%rdx), %esi
	addq	$56, %rax
	addq	$1, %rdx
	cmpl	%esi, 12(%r10)
	jg	.L637
.L633:
	rep ret
	.cfi_endproc
.LFE77:
	.size	__alnk_init_nchglst_el_rng_npp, .-__alnk_init_nchglst_el_rng_npp
	.p2align 4,,15
	.globl	__alnk_set_tev_gp_u
	.type	__alnk_set_tev_gp_u, @function
__alnk_set_tev_gp_u:
.LFB78:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L645
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	subl	$1, %edx
	leaq	(%rsi,%rsi,2), %rcx
	leaq	(%rdx,%rdx,2), %rsi
	movq	(%rax), %rax
	leaq	(%rdx,%rsi,4), %rdx
	salq	$5, %rcx
	leaq	112(%rdi,%rdx,8), %rdx
	addq	152(%rax), %rcx
	leaq	8(%rdi), %rax
	.p2align 4,,10
	.p2align 3
.L647:
	movq	%rcx, (%rax)
	addq	$104, %rax
	cmpq	%rdx, %rax
	jne	.L647
.L645:
	rep ret
	.cfi_endproc
.LFE78:
	.size	__alnk_set_tev_gp_u, .-__alnk_set_tev_gp_u
	.p2align 4,,15
	.globl	__alnk_set_tev_nxtptr
	.type	__alnk_set_tev_nxtptr, @function
__alnk_set_tev_nxtptr:
.LFB79:
	.cfi_startproc
	movq	__process_next_ev_enterp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rdi)
	ret
	.cfi_endproc
.LFE79:
	.size	__alnk_set_tev_nxtptr, .-__alnk_set_tev_nxtptr
	.p2align 4,,15
	.globl	__alnk_set_tev_nb_free_nextevptr
	.type	__alnk_set_tev_nb_free_nextevptr, @function
__alnk_set_tev_nb_free_nextevptr:
.LFB80:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L650
	subl	$1, %edx
	leaq	32(%rdi), %rax
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rdx,%rcx,4), %rdx
	leaq	136(%rdi,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L652:
	movq	%rsi, (%rax)
	addq	$104, %rax
	cmpq	%rdx, %rax
	jne	.L652
.L650:
	rep ret
	.cfi_endproc
.LFE80:
	.size	__alnk_set_tev_nb_free_nextevptr, .-__alnk_set_tev_nb_free_nextevptr
	.p2align 4,,15
	.globl	__alnk_tev_set_tu_nbrhs
	.type	__alnk_tev_set_tu_nbrhs, @function
__alnk_tev_set_tu_nbrhs:
.LFB81:
	.cfi_startproc
	leal	15(%rdx), %eax
	testl	%edx, %edx
	cmovs	%eax, %edx
	sall	$2, %edx
	sarl	$6, %edx
	testl	%ecx, %ecx
	jle	.L654
	subl	$1, %ecx
	addl	%edx, %edx
	leaq	8(%rdi), %rax
	leaq	(%rcx,%rcx,2), %r8
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rcx,%r8,4), %rcx
	leaq	112(%rdi,%rcx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L656:
	movq	%rsi, (%rax)
	addq	$104, %rax
	addq	%rdx, %rsi
	cmpq	%rcx, %rax
	jne	.L656
.L654:
	rep ret
	.cfi_endproc
.LFE81:
	.size	__alnk_tev_set_tu_nbrhs, .-__alnk_tev_set_tu_nbrhs
	.p2align 4,,15
	.globl	__alnk_tev_set_tu_nbrhs_2s
	.type	__alnk_tev_set_tu_nbrhs_2s, @function
__alnk_tev_set_tu_nbrhs_2s:
.LFB82:
	.cfi_startproc
	leal	7(%rdx), %eax
	testl	%edx, %edx
	cmovs	%eax, %edx
	sall	$3, %edx
	sarl	$6, %edx
	testl	%ecx, %ecx
	jle	.L658
	subl	$1, %ecx
	movslq	%edx, %rdx
	leaq	8(%rdi), %rax
	leaq	(%rcx,%rcx,2), %r8
	salq	$3, %rdx
	leaq	(%rcx,%r8,4), %rcx
	leaq	112(%rdi,%rcx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L660:
	movq	%rsi, (%rax)
	addq	$104, %rax
	addq	%rdx, %rsi
	cmpq	%rcx, %rax
	jne	.L660
.L658:
	rep ret
	.cfi_endproc
.LFE82:
	.size	__alnk_tev_set_tu_nbrhs_2s, .-__alnk_tev_set_tu_nbrhs_2s
	.p2align 4,,15
	.globl	__alnk_set_tev_del
	.type	__alnk_set_tev_del, @function
__alnk_set_tev_del:
.LFB83:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L662
	subl	$1, %edx
	leaq	64(%rdi), %rax
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rdx,%rcx,4), %rdx
	leaq	168(%rdi,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L664:
	movq	%rsi, (%rax)
	addq	$104, %rax
	cmpq	%rdx, %rax
	jne	.L664
.L662:
	rep ret
	.cfi_endproc
.LFE83:
	.size	__alnk_set_tev_del, .-__alnk_set_tev_del
	.p2align 4,,15
	.globl	__alnk_cp_is1v_32b_tev_dels
	.type	__alnk_cp_is1v_32b_tev_dels, @function
__alnk_cp_is1v_32b_tev_dels:
.LFB84:
	.cfi_startproc
	cmpl	$1, %edx
	jle	.L666
	subl	$2, %edx
	leaq	168(%rdi), %rax
	addq	$8, %rsi
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rdx,%rcx,4), %rdx
	leaq	272(%rdi,%rdx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L668:
	movq	(%rsi), %rdx
	addq	$104, %rax
	addq	$8, %rsi
	movq	%rdx, -104(%rax)
	cmpq	%rcx, %rax
	jne	.L668
.L666:
	rep ret
	.cfi_endproc
.LFE84:
	.size	__alnk_cp_is1v_32b_tev_dels, .-__alnk_cp_is1v_32b_tev_dels
	.p2align 4,,15
	.globl	__alnk_cp_is1v_64b_tev_dels
	.type	__alnk_cp_is1v_64b_tev_dels, @function
__alnk_cp_is1v_64b_tev_dels:
.LFB85:
	.cfi_startproc
	addl	%edx, %edx
	cmpl	$2, %edx
	jle	.L670
	subl	$3, %edx
	leaq	272(%rdi), %rcx
	addq	$16, %rsi
	shrl	%edx
	movl	%edx, %eax
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rax,%rdx,4), %rax
	salq	$4, %rax
	leaq	480(%rdi,%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L672:
	movq	8(%rsi), %rax
	addq	$208, %rcx
	addq	$16, %rsi
	salq	$32, %rax
	orq	-16(%rsi), %rax
	movq	%rax, -208(%rcx)
	cmpq	%rdx, %rcx
	jne	.L672
.L670:
	rep ret
	.cfi_endproc
.LFE85:
	.size	__alnk_cp_is1v_64b_tev_dels, .-__alnk_cp_is1v_64b_tev_dels
	.p2align 4,,15
	.globl	__alnk_set_trchan_vtx_nchgs
	.type	__alnk_set_trchan_vtx_nchgs, @function
__alnk_set_trchan_vtx_nchgs:
.LFB86:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	36(%rax), %edx
	movq	%rax, 40(%rsp)
	movq	192(%rax), %r15
	testl	%edx, %edx
	jle	.L674
	movl	$0, 60(%rsp)
	movq	%r15, %r14
	.p2align 4,,10
	.p2align 3
.L690:
	movq	88(%r14), %rax
	testq	%rax, %rax
	movq	%rax, 8(%rsp)
	je	.L676
	movq	8(%rax), %rax
	movq	__chantab@GOTPCREL(%rip), %rsi
	movq	(%rax), %rax
	movslq	(%rax), %rax
	leaq	(%rax,%rax,4), %rax
	salq	$3, %rax
	addq	(%rsi), %rax
	testb	$64, (%rax)
	jne	.L676
	movq	40(%rsp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jle	.L676
	movq	$0, 48(%rsp)
	movl	$0, 4(%rsp)
	.p2align 4,,10
	.p2align 3
.L689:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rdi
	movq	208(%rax), %rax
	movq	(%rax,%rdi), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	movl	8(%r14), %eax
	movl	%eax, %ebp
	subl	$1, %ebp
	js	.L677
	.p2align 4,,10
	.p2align 3
.L688:
	imull	4(%rsp), %eax
	movq	8(%rsp), %rcx
	movq	8(%rcx), %rdx
	addl	%ebp, %eax
	cltq
	movq	(%rdx,%rax,8), %r13
	testq	%r13, %r13
	je	.L678
	movslq	0(%r13), %rax
	testb	$4, 2(%r14)
	leaq	(%rax,%rax,4), %rdx
	movq	__chantab@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %r12
	je	.L679
	movl	%ebp, %edx
	movl	%ebp, %esi
	movq	%r14, %rdi
	call	__net_chg_nd_store@PLT
	testl	%eax, %eax
	jne	.L717
.L681:
	movq	24(%r12), %rbx
	testq	%rbx, %rbx
	je	.L678
	cmpq	$0, 32(%r12)
	je	.L678
	leaq	8(%r13), %rax
	movl	$1, %r15d
	movl	%ebp, 56(%rsp)
	movq	%r13, 32(%rsp)
	movq	%r15, %rbp
	movq	%rbx, %r15
	movq	%rax, 24(%rsp)
	jmp	.L687
	.p2align 4,,10
	.p2align 3
.L720:
	movl	8(%r15), %r13d
	movq	%rbx, %rdi
	movl	%r13d, %edx
	movl	%r13d, %esi
	call	__net_chg_nd_store@PLT
	testl	%eax, %eax
	jne	.L718
.L684:
	addq	$24, %r15
	cmpq	%rbp, 32(%r12)
	leaq	1(%rbp), %rax
	jbe	.L719
.L691:
	movq	%rax, %rbp
.L687:
	movq	(%r15), %rbx
	cmpq	%r14, %rbx
	je	.L684
	testb	$4, 2(%rbx)
	jne	.L720
	movl	$-1, %edx
	movq	%rbx, %rdi
	movl	%edx, %esi
	call	__net_chg_nd_store@PLT
	testl	%eax, %eax
	je	.L684
	movq	32(%rsp), %rax
	movq	16(%rsp), %r8
	movl	$-1, %esi
	movq	24(%rsp), %rcx
	movq	%rbx, %rdi
	addq	$24, %r15
	movl	(%rax), %edx
	call	set_trchan_1vtx_nchg_fld.isra.3
	cmpq	%rbp, 32(%r12)
	leaq	1(%rbp), %rax
	ja	.L691
	.p2align 4,,10
	.p2align 3
.L719:
	movl	56(%rsp), %ebp
.L678:
	subl	$1, %ebp
	cmpl	$-1, %ebp
	je	.L677
	movl	8(%r14), %eax
	jmp	.L688
	.p2align 4,,10
	.p2align 3
.L679:
	movl	$-1, %edx
	movq	%r14, %rdi
	movl	%edx, %esi
	call	__net_chg_nd_store@PLT
	testl	%eax, %eax
	je	.L681
	movq	16(%rsp), %r8
	movl	0(%r13), %edx
	leaq	8(%r13), %rcx
	movl	$-1, %esi
	movq	%r14, %rdi
	call	set_trchan_1vtx_nchg_fld.isra.3
	jmp	.L681
	.p2align 4,,10
	.p2align 3
.L718:
	movq	32(%rsp), %rax
	movq	16(%rsp), %r8
	movl	%r13d, %esi
	movq	24(%rsp), %rcx
	movq	%rbx, %rdi
	movl	(%rax), %edx
	call	set_trchan_1vtx_nchg_fld.isra.3
	jmp	.L684
	.p2align 4,,10
	.p2align 3
.L677:
	movq	40(%rsp), %rdi
	addl	$1, 4(%rsp)
	movl	4(%rsp), %eax
	addq	$8, 48(%rsp)
	cmpl	%eax, 12(%rdi)
	jg	.L689
.L676:
	movq	40(%rsp), %rsi
	addl	$1, 60(%rsp)
	addq	$248, %r14
	movl	60(%rsp), %eax
	cmpl	%eax, 36(%rsi)
	jg	.L690
.L674:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L717:
	.cfi_restore_state
	movq	16(%rsp), %r8
	movl	0(%r13), %edx
	leaq	8(%r13), %rcx
	movl	%ebp, %esi
	movq	%r14, %rdi
	call	set_trchan_1vtx_nchg_fld.isra.3
	jmp	.L681
	.cfi_endproc
.LFE86:
	.size	__alnk_set_trchan_vtx_nchgs, .-__alnk_set_trchan_vtx_nchgs
	.p2align 4,,15
	.globl	__alnk_set_udptab_adrs
	.type	__alnk_set_udptab_adrs, @function
__alnk_set_udptab_adrs:
.LFB88:
	.cfi_startproc
	movq	__dsgn_udp_ndx@GOTPCREL(%rip), %rax
	movslq	%edx, %rdx
	testq	%rsi, %rsi
	movq	(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	je	.L721
	movq	8(%rax), %rax
	movq	%rax, (%rsi)
.L721:
	rep ret
	.cfi_endproc
.LFE88:
	.size	__alnk_set_udptab_adrs, .-__alnk_set_udptab_adrs
	.p2align 4,,15
	.globl	__alnk_set_pth_del_adr
	.type	__alnk_set_pth_del_adr, @function
__alnk_set_pth_del_adr:
.LFB89:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rax
	movq	520(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	movq	40(%rax), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE89:
	.size	__alnk_set_pth_del_adr, .-__alnk_set_pth_del_adr
	.p2align 4,,15
	.globl	__alnk_set_tchk_tchg_adr
	.type	__alnk_set_tchk_tchg_adr, @function
__alnk_set_tchk_tchg_adr:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%esi, %rsi
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	528(%rax), %rax
	movq	(%rax,%rsi,8), %rbx
	movzbl	(%rbx), %eax
	andl	$-64, %eax
	cmpb	$-128, %al
	je	.L728
	leaq	.LC1(%rip), %rdi
	movl	$1275, %esi
	call	__misc_terr@PLT
.L728:
	movq	16(%rbx), %rax
	movq	%rax, 0(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE90:
	.size	__alnk_set_tchk_tchg_adr, .-__alnk_set_tchk_tchg_adr
	.p2align 4,,15
	.globl	__alnk_set_stmt_entptr
	.type	__alnk_set_stmt_entptr, @function
__alnk_set_stmt_entptr:
.LFB91:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rax
	movq	496(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rdi, 64(%rax)
	ret
	.cfi_endproc
.LFE91:
	.size	__alnk_set_stmt_entptr, .-__alnk_set_stmt_entptr
	.p2align 4,,15
	.globl	__alnk_set_npp_entptr
	.type	__alnk_set_npp_entptr, @function
__alnk_set_npp_entptr:
.LFB92:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rdx
	movq	%rsi, %rax
	salq	$5, %rax
	subq	%rsi, %rax
	movq	192(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rdi, 168(%rax)
	ret
	.cfi_endproc
.LFE92:
	.size	__alnk_set_npp_entptr, .-__alnk_set_npp_entptr
	.p2align 4,,15
	.globl	__alnk_set_dcevnt
	.type	__alnk_set_dcevnt, @function
__alnk_set_dcevnt:
.LFB93:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	movq	(%rax), %rcx
	movq	%rsi, %rax
	salq	$5, %rax
	subq	%rsi, %rax
	movq	192(%rcx), %rsi
	leaq	(%rsi,%rax,8), %rax
	movq	184(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE93:
	.size	__alnk_set_dcevnt, .-__alnk_set_dcevnt
	.p2align 4,,15
	.globl	__alnk_set_gref
	.type	__alnk_set_gref, @function
__alnk_set_gref:
.LFB94:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rdx
	movq	%rsi, %rax
	salq	$4, %rax
	addq	%rax, %rsi
	movq	512(%rdx), %rax
	leaq	(%rax,%rsi,8), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE94:
	.size	__alnk_set_gref, .-__alnk_set_gref
	.p2align 4,,15
	.globl	__alnk_set_gate
	.type	__alnk_set_gate, @function
__alnk_set_gate:
.LFB95:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rdx
	leaq	(%rsi,%rsi,2), %rax
	salq	$5, %rax
	addq	152(%rdx), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE95:
	.size	__alnk_set_gate, .-__alnk_set_gate
	.p2align 4,,15
	.globl	__alnk_set_conta
	.type	__alnk_set_conta, @function
__alnk_set_conta:
.LFB96:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,4), %rdx
	movq	(%rax), %rax
	leaq	(%rsi,%rdx,2), %rdx
	movq	160(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE96:
	.size	__alnk_set_conta, .-__alnk_set_conta
	.p2align 4,,15
	.globl	__alnk_set_net_addr
	.type	__alnk_set_net_addr, @function
__alnk_set_net_addr:
.LFB97:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rdx
	movq	%rsi, %rax
	salq	$5, %rax
	subq	%rsi, %rax
	movq	192(%rdx), %rdx
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE97:
	.size	__alnk_set_net_addr, .-__alnk_set_net_addr
	.p2align 4,,15
	.globl	__alnk_set_task_addr
	.type	__alnk_set_task_addr, @function
__alnk_set_task_addr:
.LFB98:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	testl	%esi, %esi
	movq	(%rax), %rax
	movq	384(%rax), %rdx
	jle	.L741
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L742:
	addl	$1, %eax
	movq	96(%rdx), %rdx
	cmpl	%eax, %esi
	jne	.L742
.L741:
	movq	%rdx, (%rdi)
	ret
	.cfi_endproc
.LFE98:
	.size	__alnk_set_task_addr, .-__alnk_set_task_addr
	.p2align 4,,15
	.globl	__alnk_set_npp_addr
	.type	__alnk_set_npp_addr, @function
__alnk_set_npp_addr:
.LFB99:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rax
	movq	528(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE99:
	.size	__alnk_set_npp_addr, .-__alnk_set_npp_addr
	.p2align 4,,15
	.globl	__alnk_set_xpr_addr
	.type	__alnk_set_xpr_addr, @function
__alnk_set_xpr_addr:
.LFB100:
	.cfi_startproc
	movq	__init_mdp@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rax
	movq	448(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE100:
	.size	__alnk_set_xpr_addr, .-__alnk_set_xpr_addr
	.p2align 4,,15
	.globl	__alnk_ialst_enters
	.type	__alnk_ialst_enters, @function
__alnk_ialst_enters:
.LFB101:
	.cfi_startproc
	movq	__dsgn_mod_ndx@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	movq	(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	movq	392(%rax), %rax
	testq	%rax, %rax
	je	.L746
	.p2align 4,,10
	.p2align 3
.L749:
	testb	$1, 1(%rax)
	jne	.L748
	movq	(%rdi), %rdx
	movq	%rdx, 32(%rax)
.L748:
	movq	40(%rax), %rax
	addq	$8, %rdi
	testq	%rax, %rax
	jne	.L749
.L746:
	rep ret
	.cfi_endproc
.LFE101:
	.size	__alnk_ialst_enters, .-__alnk_ialst_enters
	.p2align 4,,15
	.globl	__asl_get_uprel_idp
	.type	__asl_get_uprel_idp, @function
__asl_get_uprel_idp:
.LFB102:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	(%rax), %rdx
	movq	88(%rdi), %rax
	movq	(%rax,%rdx,8), %rax
	movq	8(%rax), %rax
	ret
	.cfi_endproc
.LFE102:
	.size	__asl_get_uprel_idp, .-__asl_get_uprel_idp
	.p2align 4,,15
	.globl	__asl_get_downrel_idp
	.type	__asl_get_downrel_idp, @function
__asl_get_downrel_idp:
.LFB103:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	__idp@GOTPCREL(%rip), %rax
	xorl	%edx, %edx
	movq	(%rax), %rax
	movq	16(%rax), %rsi
	call	__find_unrt_targitp@PLT
	movq	8(%rax), %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	__asl_get_downrel_idp, .-__asl_get_downrel_idp
	.p2align 4,,15
	.globl	__asl_sched_proc_delay
	.type	__asl_sched_proc_delay, @function
__asl_sched_proc_delay:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rsi)
	jne	.L768
	movq	$1, 16(%rsi)
.L759:
	movq	16(%rbp), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	movq	__cur_thd@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, 48(%rbx)
	movq	%rbx, 72(%rdx)
	movq	%rdx, 8(%rbx)
	jne	.L760
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L769
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbx, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbx)
.L757:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L769:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L760:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L763
	movq	$0, 72(%rbx)
.L763:
	movq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rcx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rdx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L770
	cmpq	8(%rsi), %rcx
	jne	.L765
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L771
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L768:
	.cfi_restore_state
	movq	%rsi, %rdi
	call	asl_loc_get_new_event
	movq	%rax, %rbx
	jmp	.L759
	.p2align 4,,10
	.p2align 3
.L765:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L770:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L757
	.p2align 4,,10
	.p2align 3
.L771:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L757
	.cfi_endproc
.LFE104:
	.size	__asl_sched_proc_delay, .-__asl_sched_proc_delay
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_const
	.type	__asl_sched_proc_delay_const, @function
__asl_sched_proc_delay_const:
.LFB107:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	cmpq	$0, 16(%rdi)
	movq	%rdi, %rbx
	jne	.L781
	movq	$1, 16(%rdi)
.L774:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	__cur_thd@GOTPCREL(%rip), %rax
	addq	64(%rbx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 48(%rbx)
	movq	%rbx, 72(%rax)
	movq	%rax, 8(%rbx)
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L775
	movq	$0, 72(%rbx)
.L775:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L782
	cmpq	8(%rsi), %rdx
	jne	.L778
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L783
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L778:
	.cfi_restore_state
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L781:
	.cfi_restore_state
	call	asl_loc_get_new_event
	movq	%rax, %rbx
	jmp	.L774
	.p2align 4,,10
	.p2align 3
.L782:
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L783:
	.cfi_restore_state
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	__asl_sched_proc_delay_const, .-__asl_sched_proc_delay_const
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_task_const
	.type	__asl_sched_proc_delay_task_const, @function
__asl_sched_proc_delay_task_const:
.LFB108:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	cmpq	$0, 16(%rdi)
	movq	%rdi, %rbx
	jne	.L793
	movq	$1, 16(%rdi)
.L786:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	__cur_thd@GOTPCREL(%rip), %rax
	addq	64(%rbx), %rdx
	movq	(%rax), %rax
	movq	%rdx, 48(%rbx)
	movq	%rbx, 72(%rax)
	movq	%rax, 8(%rbx)
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L787
	movq	$0, 72(%rbx)
.L787:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L794
	cmpq	8(%rsi), %rdx
	jne	.L790
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L795
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L790:
	.cfi_restore_state
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L793:
	.cfi_restore_state
	call	asl_loc_get_new_event
	movq	%rax, %rbx
	jmp	.L786
	.p2align 4,,10
	.p2align 3
.L794:
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L795:
	.cfi_restore_state
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	__asl_sched_proc_delay_task_const, .-__asl_sched_proc_delay_task_const
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_pnd0
	.type	__asl_sched_proc_delay_pnd0, @function
__asl_sched_proc_delay_pnd0:
.LFB109:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$0, 16(%rdi)
	jne	.L802
	movq	$1, 16(%rdi)
.L798:
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdi, 72(%rax)
	movq	%rax, 8(%rdi)
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L803
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rdi, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L802:
	.cfi_restore_state
	call	asl_loc_get_new_event
	movq	%rax, %rdi
	jmp	.L798
	.p2align 4,,10
	.p2align 3
.L803:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, (%rdx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	__asl_sched_proc_delay_pnd0, .-__asl_sched_proc_delay_pnd0
	.set	__asl_sched_proc_delay_pnd0.localalias.25,__asl_sched_proc_delay_pnd0
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_task_pnd0
	.type	__asl_sched_proc_delay_task_pnd0, @function
__asl_sched_proc_delay_task_pnd0:
.LFB519:
	.cfi_startproc
	jmp	__asl_sched_proc_delay_pnd0.localalias.25
	.cfi_endproc
.LFE519:
	.size	__asl_sched_proc_delay_task_pnd0, .-__asl_sched_proc_delay_task_pnd0
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_nt
	.type	__asl_sched_proc_delay_nt, @function
__asl_sched_proc_delay_nt:
.LFB111:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	16(%rdi), %rax
	movq	%rsi, %rbx
	movq	$1, 16(%rsi)
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, 48(%rbx)
	jne	.L806
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L814
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbx, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L814:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, (%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L806:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rcx, %rdx
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L809
	movq	$0, 72(%rbx)
.L809:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L815
	cmpq	8(%rsi), %rdx
	jne	.L811
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L816
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L811:
	.cfi_restore_state
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L815:
	.cfi_restore_state
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L816:
	.cfi_restore_state
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	__asl_sched_proc_delay_nt, .-__asl_sched_proc_delay_nt
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_const_nt
	.type	__asl_sched_proc_delay_const_nt, @function
__asl_sched_proc_delay_const_nt:
.LFB112:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	$1, 16(%rdi)
	movq	$0, 80(%rdi)
	movq	(%rax), %rdx
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	addq	64(%rdi), %rdx
	cmpq	(%rax), %rdi
	movq	%rdx, 48(%rdi)
	je	.L818
	movq	$0, 72(%rdi)
.L818:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L827
	cmpq	8(%rsi), %rdx
	jne	.L821
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rdi)
	testq	%rax, %rax
	je	.L828
	movq	%rdi, 72(%rax)
	movq	%rax, 80(%rdi)
	movq	%rdi, 24(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L821:
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L827:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %esi
	movq	%rdi, %rbx
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L828:
	.cfi_restore 3
	movq	%rdi, 24(%rsi)
	movq	%rdi, 16(%rsi)
	ret
	.cfi_endproc
.LFE112:
	.size	__asl_sched_proc_delay_const_nt, .-__asl_sched_proc_delay_const_nt
	.set	__asl_sched_proc_delay_const_nt.localalias.26,__asl_sched_proc_delay_const_nt
	.p2align 4,,15
	.globl	__asl_sched_proc_delay_pnd0_nt
	.type	__asl_sched_proc_delay_pnd0_nt, @function
__asl_sched_proc_delay_pnd0_nt:
.LFB113:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$0, 16(%rdi)
	jne	.L835
	movq	$1, 16(%rdi)
.L831:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 48(%rdi)
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L836
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rdi, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L835:
	.cfi_restore_state
	call	asl_loc_get_new_event
	movq	%rax, %rdi
	jmp	.L831
	.p2align 4,,10
	.p2align 3
.L836:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, (%rdx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	__asl_sched_proc_delay_pnd0_nt, .-__asl_sched_proc_delay_pnd0_nt
	.p2align 4,,15
	.globl	__asl_arm_ectrl
	.type	__asl_arm_ectrl, @function
__asl_arm_ectrl:
.LFB114:
	.cfi_startproc
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdi, 72(%rax)
	movq	%rax, 8(%rdi)
	movq	%rsi, 88(%rax)
	ret
	.cfi_endproc
.LFE114:
	.size	__asl_arm_ectrl, .-__asl_arm_ectrl
	.p2align 4,,15
	.globl	__asl_setsav_assoc_tsk
	.type	__asl_setsav_assoc_tsk, @function
__asl_setsav_assoc_tsk:
.LFB115:
	.cfi_startproc
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movq	16(%rdi), %rcx
	movq	(%rax), %rdx
	movq	80(%rdx), %rax
	movq	%rcx, 80(%rdx)
	ret
	.cfi_endproc
.LFE115:
	.size	__asl_setsav_assoc_tsk, .-__asl_setsav_assoc_tsk
	.p2align 4,,15
	.globl	__asl_repl_curth_itp
	.type	__asl_repl_curth_itp, @function
__asl_repl_curth_itp:
.LFB116:
	.cfi_startproc
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rdx, 104(%rax)
	ret
	.cfi_endproc
.LFE116:
	.size	__asl_repl_curth_itp, .-__asl_repl_curth_itp
	.p2align 4,,15
	.globl	__asl_repl_itstk_top
	.type	__asl_repl_itstk_top, @function
__asl_repl_itstk_top:
.LFB117:
	.cfi_startproc
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rax
	ret
	.cfi_endproc
.LFE117:
	.size	__asl_repl_itstk_top, .-__asl_repl_itstk_top
	.p2align 4,,15
	.globl	__asl_bld_nb_nodelay_tev
	.type	__asl_bld_nb_nodelay_tev, @function
__asl_bld_nb_nodelay_tev:
.LFB118:
	.cfi_startproc
	cmpq	$0, 16(%rdi)
	jne	.L841
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	$1, 16(%rdi)
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, 72(%rdx)
.L841:
	rep ret
	.cfi_endproc
.LFE118:
	.size	__asl_bld_nb_nodelay_tev, .-__asl_bld_nb_nodelay_tev
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl
	.type	__asl_sched_nbrhs_scalar_dctrl, @function
__asl_sched_nbrhs_scalar_dctrl:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%rdi)
	jne	.L854
	movq	$1, 16(%rdi)
.L845:
	movq	16(%rsi), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	movb	%bpl, 3(%rbx)
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, 48(%rbx)
	jne	.L846
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, 72(%rdx)
.L843:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L846:
	.cfi_restore_state
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	cmpq	8(%rax), %rcx
	je	.L855
	movq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rcx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rdx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L856
	cmpq	8(%rsi), %rcx
	jne	.L851
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L857
	movq	%rbx, 72(%rax)
	jmp	.L843
	.p2align 4,,10
	.p2align 3
.L854:
	movq	%rsi, 8(%rsp)
	call	asl_loc_get_new_event_nb
	movq	8(%rsp), %rsi
	movq	%rax, %rbx
	jmp	.L845
	.p2align 4,,10
	.p2align 3
.L851:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L855:
	.cfi_restore_state
	movq	40(%rax), %rdx
	movq	%rbx, 40(%rax)
	testq	%rdx, %rdx
	je	.L858
	movq	%rbx, 72(%rdx)
	jmp	.L843
	.p2align 4,,10
	.p2align 3
.L858:
	movq	%rbx, 32(%rax)
	jmp	.L843
	.p2align 4,,10
	.p2align 3
.L856:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L843
	.p2align 4,,10
	.p2align 3
.L857:
	movq	%rbx, 32(%rsi)
	jmp	.L843
	.cfi_endproc
.LFE119:
	.size	__asl_sched_nbrhs_scalar_dctrl, .-__asl_sched_nbrhs_scalar_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl_const
	.type	__asl_sched_nbrhs_scalar_dctrl_const, @function
__asl_sched_nbrhs_scalar_dctrl_const:
.LFB120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%rdi)
	jne	.L869
	movq	$1, 16(%rdi)
.L861:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	(%rax), %rax
	movb	%sil, 3(%rbx)
	movq	0(%rbp), %rdx
	addq	64(%rbx), %rax
	cmpq	8(%rdx), %rax
	movq	%rax, 48(%rbx)
	je	.L870
	movq	%rax, %rdx
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rdx
	xorq	%rax, %rdx
	imull	$-1640531535, %edx, %edx
	andl	$4095, %edx
	movslq	%edx, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L871
	cmpq	8(%rsi), %rax
	jne	.L866
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L872
.L867:
	movq	%rbx, 72(%rax)
.L859:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L866:
	.cfi_restore_state
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L870:
	.cfi_restore_state
	movq	40(%rdx), %rax
	movq	%rbx, 40(%rdx)
	testq	%rax, %rax
	jne	.L867
	movq	%rbx, 32(%rdx)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L869:
	.cfi_restore_state
	movq	%rsi, 8(%rsp)
	call	asl_loc_get_new_event_nb
	movq	8(%rsp), %rsi
	movq	%rax, %rbx
	jmp	.L861
	.p2align 4,,10
	.p2align 3
.L871:
	movq	%rbx, %rdi
	movl	%edx, %esi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L872:
	.cfi_restore_state
	movq	%rbx, 32(%rsi)
	jmp	.L859
	.cfi_endproc
.LFE120:
	.size	__asl_sched_nbrhs_scalar_dctrl_const, .-__asl_sched_nbrhs_scalar_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl_const_t
	.type	__asl_sched_nbrhs_scalar_dctrl_const_t, @function
__asl_sched_nbrhs_scalar_dctrl_const_t:
.LFB121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%rdi)
	jne	.L881
	movq	$1, 16(%rdi)
.L875:
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movb	%sil, 3(%rbx)
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L882
	movq	40(%rax), %rdx
	movq	%rbx, 72(%rdx)
	movq	%rbx, 40(%rax)
.L873:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L881:
	.cfi_restore_state
	movq	%rsi, 8(%rsp)
	call	asl_loc_get_new_event_nb
	movq	8(%rsp), %rsi
	movq	%rax, %rbx
	jmp	.L875
	.p2align 4,,10
	.p2align 3
.L882:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	movq	(%rax), %rdx
	addq	64(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rdx, 48(%rbx)
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L883
	cmpq	8(%rsi), %rdx
	je	.L884
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L884:
	.cfi_restore_state
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	movq	%rbx, 32(%rsi)
	jmp	.L873
	.p2align 4,,10
	.p2align 3
.L883:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L873
	.cfi_endproc
.LFE121:
	.size	__asl_sched_nbrhs_scalar_dctrl_const_t, .-__asl_sched_nbrhs_scalar_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_scalar_dctrl_const_last
	.type	__asl_sched_nbrhs_scalar_dctrl_const_last, @function
__asl_sched_nbrhs_scalar_dctrl_const_last:
.LFB122:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rdi)
	jne	.L889
	movq	$1, 16(%rdi)
.L887:
	movq	__last_nb_hp@GOTPCREL(%rip), %rax
	movb	%sil, 3(%rdi)
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	%rdi, 72(%rdx)
	movq	%rdi, 40(%rax)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L889:
	.cfi_restore_state
	movq	%rsi, 8(%rsp)
	call	asl_loc_get_new_event_nb
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	jmp	.L887
	.cfi_endproc
.LFE122:
	.size	__asl_sched_nbrhs_scalar_dctrl_const_last, .-__asl_sched_nbrhs_scalar_dctrl_const_last
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_nomem_dctrl_const
	.type	__asl_sched_nbrhs_nomem_dctrl_const, @function
__asl_sched_nbrhs_nomem_dctrl_const:
.LFB123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rdi)
	jne	.L900
	movq	$1, 16(%rdi)
.L892:
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	0(%rbp), %rdx
	movq	(%rax), %rax
	addq	64(%rbx), %rax
	cmpq	8(%rdx), %rax
	movq	%rax, 48(%rbx)
	je	.L901
	movq	%rax, %rdx
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rdx
	xorq	%rax, %rdx
	imull	$-1640531535, %edx, %edx
	andl	$4095, %edx
	movslq	%edx, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L902
	cmpq	8(%rsi), %rax
	jne	.L897
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L903
.L898:
	movq	%rbx, 72(%rax)
.L890:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L897:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L901:
	.cfi_restore_state
	movq	40(%rdx), %rax
	movq	%rbx, 40(%rdx)
	testq	%rax, %rax
	jne	.L898
	movq	%rbx, 32(%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L900:
	.cfi_restore_state
	call	asl_loc_get_new_event_nb
	movq	%rax, %rbx
	jmp	.L892
	.p2align 4,,10
	.p2align 3
.L902:
	movq	%rbx, %rdi
	movl	%edx, %esi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L903:
	.cfi_restore_state
	movq	%rbx, 32(%rsi)
	jmp	.L890
	.cfi_endproc
.LFE123:
	.size	__asl_sched_nbrhs_nomem_dctrl_const, .-__asl_sched_nbrhs_nomem_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_nomem_dctrl_const_t
	.type	__asl_sched_nbrhs_nomem_dctrl_const_t, @function
__asl_sched_nbrhs_nomem_dctrl_const_t:
.LFB124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rdi)
	jne	.L912
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	$1, 16(%rdi)
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L913
.L907:
	movq	40(%rax), %rdx
	movq	%rbx, 72(%rdx)
	movq	%rbx, 40(%rax)
.L904:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L912:
	.cfi_restore_state
	call	asl_loc_get_new_event_nb
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	%rax, %rbx
	movq	0(%rbp), %rax
	testq	%rax, %rax
	jne	.L907
.L913:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	movq	(%rax), %rdx
	addq	64(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rdx, 48(%rbx)
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L914
	cmpq	8(%rsi), %rdx
	je	.L915
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L915:
	.cfi_restore_state
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	movq	%rbx, 32(%rsi)
	jmp	.L904
	.p2align 4,,10
	.p2align 3
.L914:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L904
	.cfi_endproc
.LFE124:
	.size	__asl_sched_nbrhs_nomem_dctrl_const_t, .-__asl_sched_nbrhs_nomem_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_nomem_dctrl_const_last
	.type	__asl_sched_nbrhs_nomem_dctrl_const_last, @function
__asl_sched_nbrhs_nomem_dctrl_const_last:
.LFB125:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$0, 16(%rdi)
	jne	.L920
	movq	$1, 16(%rdi)
.L918:
	movq	__last_nb_hp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	%rdi, 72(%rdx)
	movq	%rdi, 40(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L920:
	.cfi_restore_state
	call	asl_loc_get_new_event_nb
	movq	%rax, %rdi
	jmp	.L918
	.cfi_endproc
.LFE125:
	.size	__asl_sched_nbrhs_nomem_dctrl_const_last, .-__asl_sched_nbrhs_nomem_dctrl_const_last
	.p2align 4,,15
	.globl	__asl_schd_nb_vardel_rhsconst_dctrl
	.type	__asl_schd_nb_vardel_rhsconst_dctrl, @function
__asl_schd_nb_vardel_rhsconst_dctrl:
.LFB126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rsi)
	jne	.L932
	movq	$1, 16(%rsi)
.L923:
	movq	16(%rbp), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, %rdx
	movq	%rcx, 48(%rbx)
	jne	.L924
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, 72(%rdx)
.L921:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L924:
	.cfi_restore_state
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	cmpq	8(%rax), %rcx
	je	.L933
	movq	%rcx, %rax
	shrq	$32, %rax
	xorq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L934
	cmpq	8(%rsi), %rdx
	jne	.L929
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L935
	movq	%rbx, 72(%rax)
	jmp	.L921
	.p2align 4,,10
	.p2align 3
.L932:
	movq	%rsi, %rdi
	call	asl_loc_get_new_event_nb
	movq	%rax, %rbx
	jmp	.L923
	.p2align 4,,10
	.p2align 3
.L929:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_nb_conflict_list
	.p2align 4,,10
	.p2align 3
.L933:
	.cfi_restore_state
	movq	40(%rax), %rdx
	movq	%rbx, 40(%rax)
	testq	%rdx, %rdx
	je	.L936
	movq	%rbx, 72(%rdx)
	jmp	.L921
	.p2align 4,,10
	.p2align 3
.L936:
	movq	%rbx, 32(%rax)
	jmp	.L921
	.p2align 4,,10
	.p2align 3
.L934:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L921
	.p2align 4,,10
	.p2align 3
.L935:
	movq	%rbx, 32(%rsi)
	jmp	.L921
	.cfi_endproc
.LFE126:
	.size	__asl_schd_nb_vardel_rhsconst_dctrl, .-__asl_schd_nb_vardel_rhsconst_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl
	.type	__asl_sched_nbrhs_dctrl, @function
__asl_sched_nbrhs_dctrl:
.LFB127:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rsi)
	jne	.L948
	movq	$1, 16(%rsi)
.L939:
	movq	16(%rbp), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, %rdx
	movq	%rcx, 48(%rbx)
	jne	.L940
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, 72(%rdx)
.L941:
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L940:
	.cfi_restore_state
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	cmpq	8(%rax), %rcx
	je	.L949
	movq	%rcx, %rax
	shrq	$32, %rax
	xorq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L950
	cmpq	8(%rsi), %rdx
	jne	.L945
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L951
	movq	%rbx, 72(%rax)
	jmp	.L941
	.p2align 4,,10
	.p2align 3
.L948:
	movq	%rbx, %rdi
	movl	%edx, %esi
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rbx
	jmp	.L939
	.p2align 4,,10
	.p2align 3
.L945:
	movq	%rbx, %rdi
	call	asl_loc_nb_conflict_list
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L949:
	.cfi_restore_state
	movq	40(%rax), %rdx
	movq	%rbx, 40(%rax)
	testq	%rdx, %rdx
	je	.L952
	movq	%rbx, 72(%rdx)
	jmp	.L941
	.p2align 4,,10
	.p2align 3
.L952:
	movq	%rbx, 32(%rax)
	jmp	.L941
	.p2align 4,,10
	.p2align 3
.L950:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L941
	.p2align 4,,10
	.p2align 3
.L951:
	movq	%rbx, 32(%rsi)
	jmp	.L941
	.cfi_endproc
.LFE127:
	.size	__asl_sched_nbrhs_dctrl, .-__asl_sched_nbrhs_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl_const
	.type	__asl_sched_nbrhs_dctrl_const, @function
__asl_sched_nbrhs_dctrl_const:
.LFB128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rdi)
	jne	.L963
	movq	$1, 16(%rdi)
.L955:
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	0(%rbp), %rdx
	movq	(%rax), %rax
	addq	64(%rbx), %rax
	cmpq	8(%rdx), %rax
	movq	%rax, 48(%rbx)
	je	.L964
	movq	%rax, %rdx
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rdx
	xorq	%rax, %rdx
	imull	$-1640531535, %edx, %edx
	andl	$4095, %edx
	movslq	%edx, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L965
	cmpq	8(%rsi), %rax
	jne	.L960
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L966
.L961:
	movq	%rbx, 72(%rax)
.L958:
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L960:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	asl_loc_nb_conflict_list
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L964:
	.cfi_restore_state
	movq	40(%rdx), %rax
	movq	%rbx, 40(%rdx)
	testq	%rax, %rax
	jne	.L961
	movq	%rbx, 32(%rdx)
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L963:
	.cfi_restore_state
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rbx
	jmp	.L955
	.p2align 4,,10
	.p2align 3
.L965:
	movq	%rbx, %rdi
	movl	%edx, %esi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L966:
	.cfi_restore_state
	movq	%rbx, 32(%rsi)
	jmp	.L958
	.cfi_endproc
.LFE128:
	.size	__asl_sched_nbrhs_dctrl_const, .-__asl_sched_nbrhs_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl_const_t
	.type	__asl_sched_nbrhs_dctrl_const_t, @function
__asl_sched_nbrhs_dctrl_const_t:
.LFB129:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	cmpq	$0, 16(%rdi)
	movq	%rdi, %rbx
	jne	.L975
	movq	$1, 16(%rdi)
.L969:
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	8(%rbx), %r12
	movq	0(%rbp), %rax
	testq	%rax, %rax
	je	.L976
	movq	40(%rax), %rdx
	movq	%rbx, 72(%rdx)
	movq	%rbx, 40(%rax)
.L967:
	movq	%r12, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L975:
	.cfi_restore_state
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rbx
	jmp	.L969
	.p2align 4,,10
	.p2align 3
.L976:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	movq	(%rax), %rdx
	addq	64(%rbx), %rdx
	movq	%rdx, %rax
	movq	%rdx, 48(%rbx)
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L977
	cmpq	8(%rsi), %rdx
	je	.L978
	movq	%rbx, %rdi
	call	asl_loc_nb_conflict_list
	jmp	.L967
	.p2align 4,,10
	.p2align 3
.L978:
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	movq	%rbx, 32(%rsi)
	jmp	.L967
	.p2align 4,,10
	.p2align 3
.L977:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L967
	.cfi_endproc
.LFE129:
	.size	__asl_sched_nbrhs_dctrl_const_t, .-__asl_sched_nbrhs_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_dctrl_const_last
	.type	__asl_sched_nbrhs_dctrl_const_last, @function
__asl_sched_nbrhs_dctrl_const_last:
.LFB130:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$0, 16(%rdi)
	jne	.L983
	movq	$1, 16(%rdi)
.L981:
	movq	__last_nb_hp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	%rdi, 72(%rdx)
	movq	%rdi, 40(%rax)
	movq	8(%rdi), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L983:
	.cfi_restore_state
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rdi
	jmp	.L981
	.cfi_endproc
.LFE130:
	.size	__asl_sched_nbrhs_dctrl_const_last, .-__asl_sched_nbrhs_dctrl_const_last
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl
	.type	__asl_sched_nbrhs_varndx_dctrl, @function
__asl_sched_nbrhs_varndx_dctrl:
.LFB131:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	cmpq	$0, 16(%rcx)
	movslq	%esi, %rbp
	movq	%rcx, %rbx
	jne	.L995
	movq	$1, 16(%rcx)
.L986:
	movq	16(%r12), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	%rbp, 88(%rbx)
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, %rdx
	movq	%rcx, 48(%rbx)
	jne	.L987
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, 72(%rdx)
.L988:
	movq	8(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L987:
	.cfi_restore_state
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	cmpq	8(%rax), %rcx
	je	.L996
	movq	%rcx, %rax
	shrq	$32, %rax
	xorq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L997
	cmpq	8(%rsi), %rdx
	jne	.L992
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L998
	movq	%rbx, 72(%rax)
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L995:
	movl	%edx, %esi
	movq	%rcx, %rdi
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rbx
	jmp	.L986
	.p2align 4,,10
	.p2align 3
.L992:
	movq	%rbx, %rdi
	call	asl_loc_nb_conflict_list
	movq	8(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L996:
	.cfi_restore_state
	movq	40(%rax), %rdx
	movq	%rbx, 40(%rax)
	testq	%rdx, %rdx
	je	.L999
	movq	%rbx, 72(%rdx)
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L999:
	movq	%rbx, 32(%rax)
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L997:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L998:
	movq	%rbx, 32(%rsi)
	jmp	.L988
	.cfi_endproc
.LFE131:
	.size	__asl_sched_nbrhs_varndx_dctrl, .-__asl_sched_nbrhs_varndx_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const
	.type	__asl_sched_nbrhs_varndx_dctrl_const, @function
__asl_sched_nbrhs_varndx_dctrl_const:
.LFB132:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movslq	%edi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rdx)
	jne	.L1010
	movq	$1, 16(%rdx)
.L1002:
	movq	%rbx, 88(%rdx)
	movq	__last_nb_hp@GOTPCREL(%rip), %rbx
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rbx), %rcx
	movq	(%rax), %rax
	addq	64(%rdx), %rax
	cmpq	8(%rcx), %rax
	movq	%rax, 48(%rdx)
	je	.L1011
	movq	%rax, %rcx
	movq	__time_hash@GOTPCREL(%rip), %rsi
	shrq	$32, %rcx
	xorq	%rax, %rcx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movslq	%ecx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	testq	%rsi, %rsi
	je	.L1012
	cmpq	8(%rsi), %rax
	jne	.L1007
	movq	40(%rsi), %rax
	movq	%rsi, (%rbx)
	movq	%rdx, 40(%rsi)
	testq	%rax, %rax
	je	.L1013
.L1008:
	movq	%rdx, 72(%rax)
.L1005:
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1007:
	.cfi_restore_state
	movq	%rdx, %rdi
	movq	%rdx, 8(%rsp)
	call	asl_loc_nb_conflict_list
	movq	8(%rsp), %rdx
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1011:
	.cfi_restore_state
	movq	40(%rcx), %rax
	movq	%rdx, 40(%rcx)
	testq	%rax, %rax
	jne	.L1008
	movq	%rdx, 32(%rcx)
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1010:
	.cfi_restore_state
	movq	%rdx, %rdi
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rdx
	jmp	.L1002
	.p2align 4,,10
	.p2align 3
.L1012:
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%rdx, 8(%rsp)
	call	asl_loc_add_new_heap_time
	movq	8(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	%rdx, 40(%rax)
	movq	%rdx, 32(%rax)
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1013:
	.cfi_restore_state
	movq	%rdx, 32(%rsi)
	jmp	.L1005
	.cfi_endproc
.LFE132:
	.size	__asl_sched_nbrhs_varndx_dctrl_const, .-__asl_sched_nbrhs_varndx_dctrl_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_t
	.type	__asl_sched_nbrhs_varndx_dctrl_const_t, @function
__asl_sched_nbrhs_varndx_dctrl_const_t:
.LFB133:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%edi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%rdx)
	jne	.L1022
	movq	$1, 16(%rdx)
.L1016:
	movq	%rbx, 88(%rdx)
	movq	__last_nb_hp@GOTPCREL(%rip), %rbx
	movq	8(%rdx), %rbp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L1023
	movq	40(%rax), %rcx
	movq	%rdx, 72(%rcx)
	movq	%rdx, 40(%rax)
.L1014:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1022:
	.cfi_restore_state
	movq	%rdx, %rdi
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rdx
	jmp	.L1016
	.p2align 4,,10
	.p2align 3
.L1023:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__time_hash@GOTPCREL(%rip), %rsi
	movq	(%rax), %rcx
	addq	64(%rdx), %rcx
	movq	%rcx, %rax
	movq	%rcx, 48(%rdx)
	shrq	$32, %rax
	xorq	%rcx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rdi
	movq	(%rsi,%rdi,8), %rsi
	testq	%rsi, %rsi
	je	.L1024
	cmpq	8(%rsi), %rcx
	je	.L1025
	movq	%rdx, %rdi
	call	asl_loc_nb_conflict_list
	jmp	.L1014
	.p2align 4,,10
	.p2align 3
.L1025:
	movq	%rsi, (%rbx)
	movq	%rdx, 40(%rsi)
	movq	%rdx, 32(%rsi)
	jmp	.L1014
	.p2align 4,,10
	.p2align 3
.L1024:
	movq	%rdx, %rdi
	movl	%eax, %esi
	movq	%rdx, 8(%rsp)
	call	asl_loc_add_new_heap_time
	movq	8(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	%rdx, 40(%rax)
	movq	%rdx, 32(%rax)
	jmp	.L1014
	.cfi_endproc
.LFE133:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_t, .-__asl_sched_nbrhs_varndx_dctrl_const_t
	.p2align 4,,15
	.globl	__asl_sched_nb_pnd0_lhs_varndx
	.type	__asl_sched_nb_pnd0_lhs_varndx, @function
__asl_sched_nb_pnd0_lhs_varndx:
.LFB134:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	cmpq	$0, 16(%rdx)
	movslq	%edi, %rbx
	jne	.L1030
	movq	$1, 16(%rdx)
.L1028:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	%rbx, 88(%rdx)
	movq	(%rax), %rax
	movq	%rax, 48(%rdx)
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rdx, (%rax)
	movq	8(%rdx), %rax
	movq	%rdx, 72(%rcx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1030:
	.cfi_restore_state
	movq	%rdx, %rdi
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rdx
	jmp	.L1028
	.cfi_endproc
.LFE134:
	.size	__asl_sched_nb_pnd0_lhs_varndx, .-__asl_sched_nb_pnd0_lhs_varndx
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_sel_dctrl
	.type	__asl_sched_nbrhs_varndx_sel_dctrl, @function
__asl_sched_nbrhs_varndx_sel_dctrl:
.LFB135:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movslq	%esi, %r12
	movq	%rcx, %rbx
	movslq	%r8d, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%rcx)
	jne	.L1042
	movq	$1, 16(%rcx)
.L1033:
	movq	16(%r13), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	%r12, 88(%rbx)
	movq	%rbp, 96(%rbx)
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, %rdx
	movq	%rcx, 48(%rbx)
	jne	.L1034
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, 72(%rdx)
.L1035:
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1034:
	.cfi_restore_state
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	cmpq	8(%rax), %rcx
	je	.L1043
	movq	%rcx, %rax
	shrq	$32, %rax
	xorq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L1044
	cmpq	8(%rsi), %rdx
	jne	.L1039
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L1045
	movq	%rbx, 72(%rax)
	jmp	.L1035
	.p2align 4,,10
	.p2align 3
.L1042:
	movl	%edx, %esi
	movq	%rcx, %rdi
	call	asl_loc_get_new_nbmem_event
	movq	%rax, %rbx
	jmp	.L1033
	.p2align 4,,10
	.p2align 3
.L1039:
	movq	%rbx, %rdi
	call	asl_loc_nb_conflict_list
	movq	8(%rbx), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1043:
	.cfi_restore_state
	movq	40(%rax), %rdx
	movq	%rbx, 40(%rax)
	testq	%rdx, %rdx
	je	.L1046
	movq	%rbx, 72(%rdx)
	jmp	.L1035
	.p2align 4,,10
	.p2align 3
.L1046:
	movq	%rbx, 32(%rax)
	jmp	.L1035
	.p2align 4,,10
	.p2align 3
.L1044:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L1035
	.p2align 4,,10
	.p2align 3
.L1045:
	movq	%rbx, 32(%rsi)
	jmp	.L1035
	.cfi_endproc
.LFE135:
	.size	__asl_sched_nbrhs_varndx_sel_dctrl, .-__asl_sched_nbrhs_varndx_sel_dctrl
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_sel_const
	.type	__asl_sched_nbrhs_varndx_dctrl_sel_const, @function
__asl_sched_nbrhs_varndx_dctrl_sel_const:
.LFB136:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movslq	%edi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rdx)
	jne	.L1057
	movq	$1, 16(%rdx)
.L1049:
	movq	%rbx, 88(%rdx)
	movq	__last_nb_hp@GOTPCREL(%rip), %rbx
	movslq	%ecx, %rcx
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	%rcx, 96(%rdx)
	movq	(%rbx), %rcx
	movq	(%rax), %rax
	addq	64(%rdx), %rax
	cmpq	8(%rcx), %rax
	movq	%rax, 48(%rdx)
	je	.L1058
	movq	%rax, %rcx
	movq	__time_hash@GOTPCREL(%rip), %rsi
	shrq	$32, %rcx
	xorq	%rax, %rcx
	imull	$-1640531535, %ecx, %ecx
	andl	$4095, %ecx
	movslq	%ecx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	testq	%rsi, %rsi
	je	.L1059
	cmpq	8(%rsi), %rax
	jne	.L1054
	movq	40(%rsi), %rax
	movq	%rsi, (%rbx)
	movq	%rdx, 40(%rsi)
	testq	%rax, %rax
	je	.L1060
.L1055:
	movq	%rdx, 72(%rax)
.L1052:
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1054:
	.cfi_restore_state
	movq	%rdx, %rdi
	movq	%rdx, 8(%rsp)
	call	asl_loc_nb_conflict_list
	movq	8(%rsp), %rdx
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1058:
	.cfi_restore_state
	movq	40(%rcx), %rax
	movq	%rdx, 40(%rcx)
	testq	%rax, %rax
	jne	.L1055
	movq	%rdx, 32(%rcx)
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1057:
	.cfi_restore_state
	movq	%rdx, %rdi
	movl	%ecx, 8(%rsp)
	call	asl_loc_get_new_nbmem_event
	movl	8(%rsp), %ecx
	movq	%rax, %rdx
	jmp	.L1049
	.p2align 4,,10
	.p2align 3
.L1059:
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%rdx, 8(%rsp)
	call	asl_loc_add_new_heap_time
	movq	8(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	%rdx, 40(%rax)
	movq	%rdx, 32(%rax)
	movq	8(%rdx), %rax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1060:
	.cfi_restore_state
	movq	%rdx, 32(%rsi)
	jmp	.L1052
	.cfi_endproc
.LFE136:
	.size	__asl_sched_nbrhs_varndx_dctrl_sel_const, .-__asl_sched_nbrhs_varndx_dctrl_sel_const
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_sel_t
	.type	__asl_sched_nbrhs_varndx_dctrl_const_sel_t, @function
__asl_sched_nbrhs_varndx_dctrl_const_sel_t:
.LFB137:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%edi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%rdx)
	jne	.L1069
	movq	$1, 16(%rdx)
.L1063:
	movq	%rbx, 88(%rdx)
	movq	__last_nb_hp@GOTPCREL(%rip), %rbx
	movslq	%ecx, %rcx
	movq	%rcx, 96(%rdx)
	movq	8(%rdx), %rbp
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L1070
	movq	40(%rax), %rcx
	movq	%rdx, 72(%rcx)
	movq	%rdx, 40(%rax)
.L1061:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1069:
	.cfi_restore_state
	movq	%rdx, %rdi
	movl	%ecx, 8(%rsp)
	call	asl_loc_get_new_nbmem_event
	movl	8(%rsp), %ecx
	movq	%rax, %rdx
	jmp	.L1063
	.p2align 4,,10
	.p2align 3
.L1070:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__time_hash@GOTPCREL(%rip), %rsi
	movq	(%rax), %rcx
	addq	64(%rdx), %rcx
	movq	%rcx, %rax
	movq	%rcx, 48(%rdx)
	shrq	$32, %rax
	xorq	%rcx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rdi
	movq	(%rsi,%rdi,8), %rsi
	testq	%rsi, %rsi
	je	.L1071
	cmpq	8(%rsi), %rcx
	je	.L1072
	movq	%rdx, %rdi
	call	asl_loc_nb_conflict_list
	jmp	.L1061
	.p2align 4,,10
	.p2align 3
.L1072:
	movq	%rsi, (%rbx)
	movq	%rdx, 40(%rsi)
	movq	%rdx, 32(%rsi)
	jmp	.L1061
	.p2align 4,,10
	.p2align 3
.L1071:
	movq	%rdx, %rdi
	movl	%eax, %esi
	movq	%rdx, 8(%rsp)
	call	asl_loc_add_new_heap_time
	movq	8(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	%rdx, 40(%rax)
	movq	%rdx, 32(%rax)
	jmp	.L1061
	.cfi_endproc
.LFE137:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_sel_t, .-__asl_sched_nbrhs_varndx_dctrl_const_sel_t
	.p2align 4,,15
	.globl	__asl_sched_nb_pnd0_lhs_varndx_sel
	.type	__asl_sched_nb_pnd0_lhs_varndx_sel, @function
__asl_sched_nb_pnd0_lhs_varndx_sel:
.LFB138:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movslq	%edi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 16(%rdx)
	jne	.L1077
	movq	$1, 16(%rdx)
.L1075:
	movq	__simtime@GOTPCREL(%rip), %rax
	movslq	%ecx, %rcx
	movq	%rbx, 88(%rdx)
	movq	%rcx, 96(%rdx)
	movq	(%rax), %rax
	movq	%rax, 48(%rdx)
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rdx, (%rax)
	movq	8(%rdx), %rax
	movq	%rdx, 72(%rcx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1077:
	.cfi_restore_state
	movq	%rdx, %rdi
	movl	%ecx, 12(%rsp)
	call	asl_loc_get_new_nbmem_event
	movl	12(%rsp), %ecx
	movq	%rax, %rdx
	jmp	.L1075
	.cfi_endproc
.LFE138:
	.size	__asl_sched_nb_pnd0_lhs_varndx_sel, .-__asl_sched_nb_pnd0_lhs_varndx_sel
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_concat
	.type	__asl_sched_nbrhs_varndx_dctrl_concat, @function
__asl_sched_nbrhs_varndx_dctrl_concat:
.LFB139:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp
	movl	%edx, %r13d
	movl	%ecx, %r12d
	movq	%r8, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpq	$0, 16(%r8)
	jne	.L1089
	movq	$1, 16(%r8)
.L1080:
	movq	16(%rbp), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rdi
	shrl	$13, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	%rax, %rcx
	movq	__simtime@GOTPCREL(%rip), %rax
	movl	$56, %edi
	movq	%rcx, %rdx
	movq	%rcx, 8(%rsp)
	addq	(%rax), %rdx
	movq	%rdx, 48(%rbx)
	call	__my_malloc@PLT
	movslq	%r12d, %rdi
	movq	%rax, 8(%rbx)
	movq	%rax, %rbp
	call	__my_malloc@PLT
	movq	8(%rsp), %rcx
	movq	%rax, %rdx
	movq	%rax, 0(%rbp)
	movl	%r12d, 8(%rbp)
	movq	%r14, 24(%rbp)
	movq	%r15, 48(%rbp)
	movl	%r13d, 12(%rbp)
	testq	%rcx, %rcx
	jne	.L1081
	movq	__nb_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rbx, (%rax)
	movq	%rbx, 72(%rcx)
.L1078:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rdx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1081:
	.cfi_restore_state
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	48(%rbx), %rcx
	movq	0(%rbp), %rax
	cmpq	8(%rax), %rcx
	je	.L1090
	movq	%rcx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rsi
	shrq	$32, %rax
	xorq	%rcx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rdi
	movq	(%rsi,%rdi,8), %rsi
	testq	%rsi, %rsi
	je	.L1091
	cmpq	8(%rsi), %rcx
	jne	.L1086
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L1092
	movq	%rbx, 72(%rax)
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1089:
	movq	%r8, %rdi
	call	asl_loc_get_new_event
	movq	%rax, %rbx
	jmp	.L1080
	.p2align 4,,10
	.p2align 3
.L1086:
	movq	%rbx, %rdi
	movq	%rdx, 8(%rsp)
	call	asl_loc_nb_conflict_list
	movq	8(%rsp), %rdx
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1090:
	movq	40(%rax), %rcx
	movq	%rbx, 40(%rax)
	testq	%rcx, %rcx
	je	.L1093
	movq	%rbx, 72(%rcx)
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1093:
	movq	%rbx, 32(%rax)
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1091:
	movl	%eax, %esi
	movq	%rbx, %rdi
	movq	%rdx, 8(%rsp)
	call	asl_loc_add_new_heap_time
	movq	8(%rsp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1092:
	movq	%rbx, 32(%rsi)
	jmp	.L1078
	.cfi_endproc
.LFE139:
	.size	__asl_sched_nbrhs_varndx_dctrl_concat, .-__asl_sched_nbrhs_varndx_dctrl_concat
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_concat
	.type	__asl_sched_nbrhs_varndx_dctrl_const_concat, @function
__asl_sched_nbrhs_varndx_dctrl_const_concat:
.LFB140:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %r12d
	movq	%rcx, %rbx
	movq	%r8, %r13
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpq	$0, 16(%rcx)
	jne	.L1104
	movq	$1, 16(%rcx)
.L1096:
	movq	__simtime@GOTPCREL(%rip), %rax
	movl	$56, %edi
	movq	(%rax), %rax
	addq	64(%rbx), %rax
	movq	%rax, 48(%rbx)
	call	__my_malloc@PLT
	movslq	%r12d, %rdi
	movq	%rax, %rbp
	movq	%rax, 8(%rbx)
	call	__my_malloc@PLT
	movl	%r12d, 8(%rbp)
	movq	%rax, 0(%rbp)
	movq	%rax, %rcx
	movq	%r14, 24(%rbp)
	movl	%r15d, 12(%rbp)
	movq	%r13, 48(%rbp)
	movq	__last_nb_hp@GOTPCREL(%rip), %rbp
	movq	48(%rbx), %rdx
	movq	0(%rbp), %rax
	cmpq	8(%rax), %rdx
	je	.L1105
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rsi
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rdi
	movq	(%rsi,%rdi,8), %rsi
	testq	%rsi, %rsi
	je	.L1106
	cmpq	8(%rsi), %rdx
	jne	.L1101
	movq	40(%rsi), %rax
	movq	%rsi, 0(%rbp)
	movq	%rbx, 40(%rsi)
	testq	%rax, %rax
	je	.L1107
	movq	%rbx, 72(%rax)
.L1094:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rcx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1101:
	.cfi_restore_state
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	call	asl_loc_nb_conflict_list
	movq	8(%rsp), %rcx
	jmp	.L1094
	.p2align 4,,10
	.p2align 3
.L1105:
	movq	40(%rax), %rdx
	movq	%rbx, 40(%rax)
	testq	%rdx, %rdx
	je	.L1108
	movq	%rbx, 72(%rdx)
	jmp	.L1094
	.p2align 4,,10
	.p2align 3
.L1104:
	movq	%rcx, %rdi
	call	asl_loc_get_new_event
	movq	%rax, %rbx
	jmp	.L1096
	.p2align 4,,10
	.p2align 3
.L1108:
	movq	%rbx, 32(%rax)
	jmp	.L1094
	.p2align 4,,10
	.p2align 3
.L1106:
	movl	%eax, %esi
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	call	asl_loc_add_new_heap_time
	movq	8(%rsp), %rcx
	movq	%rax, 0(%rbp)
	movq	%rbx, 40(%rax)
	movq	%rbx, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L1094
	.p2align 4,,10
	.p2align 3
.L1107:
	movq	%rbx, 32(%rsi)
	jmp	.L1094
	.cfi_endproc
.LFE140:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_concat, .-__asl_sched_nbrhs_varndx_dctrl_const_concat
	.p2align 4,,15
	.globl	__asl_sched_nbrhs_varndx_dctrl_const_concat_t
	.type	__asl_sched_nbrhs_varndx_dctrl_const_concat_t, @function
__asl_sched_nbrhs_varndx_dctrl_const_concat_t:
.LFB141:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbp
	movq	%r8, %r14
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpq	$0, 16(%rcx)
	jne	.L1117
	movq	$1, 16(%rcx)
.L1111:
	movl	$56, %edi
	movl	%esi, 12(%rsp)
	call	__my_malloc@PLT
	movslq	%r13d, %rdi
	movq	%rax, 8(%rbp)
	movq	%rax, %rbx
	call	__my_malloc@PLT
	movl	12(%rsp), %esi
	movq	%rax, (%rbx)
	movq	%rax, %r12
	movl	%r13d, 8(%rbx)
	movq	%r15, 24(%rbx)
	movq	%r14, 48(%rbx)
	movl	%esi, 12(%rbx)
	movq	__last_nb_hp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L1118
	movq	40(%rax), %rdx
	movq	%rbp, 72(%rdx)
	movq	%rbp, 40(%rax)
.L1109:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1117:
	.cfi_restore_state
	movq	%rcx, %rdi
	movl	%esi, 12(%rsp)
	call	asl_loc_get_new_event
	movl	12(%rsp), %esi
	movq	%rax, %rbp
	jmp	.L1111
	.p2align 4,,10
	.p2align 3
.L1118:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	movq	(%rax), %rdx
	addq	64(%rbp), %rdx
	movq	%rdx, %rax
	movq	%rdx, 48(%rbp)
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L1119
	cmpq	8(%rsi), %rdx
	je	.L1120
	movq	%rbp, %rdi
	call	asl_loc_nb_conflict_list
	jmp	.L1109
	.p2align 4,,10
	.p2align 3
.L1120:
	movq	%rsi, (%rbx)
	movq	%rbp, 40(%rsi)
	movq	%rbp, 32(%rsi)
	jmp	.L1109
	.p2align 4,,10
	.p2align 3
.L1119:
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rax, (%rbx)
	movq	%rbp, 40(%rax)
	movq	%rbp, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	jmp	.L1109
	.cfi_endproc
.LFE141:
	.size	__asl_sched_nbrhs_varndx_dctrl_const_concat_t, .-__asl_sched_nbrhs_varndx_dctrl_const_concat_t
	.p2align 4,,15
	.globl	__asl_sched_nb_pnd0_lhs_varndx_concat
	.type	__asl_sched_nb_pnd0_lhs_varndx_concat, @function
__asl_sched_nb_pnd0_lhs_varndx_concat:
.LFB142:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %r13d
	movl	%edx, %r12d
	movq	%rcx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	cmpq	$0, 16(%rcx)
	jne	.L1125
	movq	$1, 16(%rcx)
.L1123:
	movq	__simtime@GOTPCREL(%rip), %rax
	movl	$56, %edi
	movq	(%rax), %rax
	movq	%rax, 48(%rbx)
	call	__my_malloc@PLT
	movslq	%r12d, %rdi
	movq	%rax, 8(%rbx)
	movq	%rax, %rbp
	call	__my_malloc@PLT
	movq	__nb_te_endp@GOTPCREL(%rip), %rdx
	movq	%rax, 0(%rbp)
	movl	%r12d, 8(%rbp)
	movq	%r14, 24(%rbp)
	movq	%r15, 48(%rbp)
	movl	%r13d, 12(%rbp)
	movq	(%rdx), %rcx
	movq	%rbx, (%rdx)
	movq	%rbx, 72(%rcx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1125:
	.cfi_restore_state
	movq	%rcx, %rdi
	call	asl_loc_get_new_event
	movq	%rax, %rbx
	jmp	.L1123
	.cfi_endproc
.LFE142:
	.size	__asl_sched_nb_pnd0_lhs_varndx_concat, .-__asl_sched_nb_pnd0_lhs_varndx_concat
	.p2align 4,,15
	.globl	__asl_arm_nb_ectrl
	.type	__asl_arm_nb_ectrl, @function
__asl_arm_nb_ectrl:
.LFB143:
	.cfi_startproc
	cmpq	$0, 16(%rsi)
	jne	.L1131
	movq	16(%rdi), %rax
	orb	$2, (%rsi)
	movq	$1, 16(%rsi)
	movq	24(%rax), %rdx
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	jne	.L1130
	movq	%rsi, (%rdx)
.L1131:
	movq	8(%rsi), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1132:
	movq	%rdx, %rax
.L1130:
	movq	72(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L1132
	movq	%rsi, 72(%rax)
	movq	%rax, 80(%rsi)
	movq	$0, 72(%rsi)
	movq	8(%rsi), %rax
	ret
	.cfi_endproc
.LFE143:
	.size	__asl_arm_nb_ectrl, .-__asl_arm_nb_ectrl
	.p2align 4,,15
	.globl	__asl_arm_nb_varndx_ectrl
	.type	__asl_arm_nb_varndx_ectrl, @function
__asl_arm_nb_varndx_ectrl:
.LFB144:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	cmpq	$0, 16(%rsi)
	movslq	%edx, %rdx
	movq	%rdx, 88(%rsi)
	movq	(%rax), %rax
	movq	%rax, 48(%rsi)
	jne	.L1138
	movq	16(%rdi), %rax
	movq	$1, 16(%rsi)
	movq	24(%rax), %rdx
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	jne	.L1137
	movq	%rsi, (%rdx)
.L1138:
	movq	8(%rsi), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1139:
	movq	%rdx, %rax
.L1137:
	movq	72(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L1139
	movq	%rsi, 72(%rax)
	movq	%rax, 80(%rsi)
	movq	$0, 72(%rsi)
	movq	8(%rsi), %rax
	ret
	.cfi_endproc
.LFE144:
	.size	__asl_arm_nb_varndx_ectrl, .-__asl_arm_nb_varndx_ectrl
	.p2align 4,,15
	.globl	__asl_loc_get_new_thread_event
	.type	__asl_loc_get_new_thread_event, @function
__asl_loc_get_new_thread_event:
.LFB149:
	.cfi_startproc
	jmp	asl_loc_get_new_thread_event
	.cfi_endproc
.LFE149:
	.size	__asl_loc_get_new_thread_event, .-__asl_loc_get_new_thread_event
	.p2align 4,,15
	.globl	__asl_loc_get_new_event
	.type	__asl_loc_get_new_event, @function
__asl_loc_get_new_event:
.LFB150:
	.cfi_startproc
	jmp	asl_loc_get_new_event
	.cfi_endproc
.LFE150:
	.size	__asl_loc_get_new_event, .-__asl_loc_get_new_event
	.p2align 4,,15
	.globl	__asl_sched_namblk_thd
	.type	__asl_sched_namblk_thd, @function
__asl_sched_namblk_thd:
.LFB151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__cur_thd@GOTPCREL(%rip), %rbx
	movq	16(%rdi), %rdi
	movq	(%rbx), %rdx
	movl	(%rdx), %eax
	movl	12(%rdx), %ebp
	andl	$-1073741761, %eax
	orl	$64, %eax
	movl	%eax, (%rdx)
	movq	56(%rcx), %rax
	movq	%rax, 24(%rdx)
	call	__setup_tsk_thread@PLT
	movq	(%rbx), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 32(%rax)
	movq	%rax, 56(%rdx)
	movq	__idp@GOTPCREL(%rip), %rdx
	movl	%ebp, 12(%rax)
	movq	(%rdx), %rdx
	movq	%rdx, 104(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE151:
	.size	__asl_sched_namblk_thd, .-__asl_sched_namblk_thd
	.p2align 4,,15
	.globl	__asl_exec_stsk
	.type	__asl_exec_stsk, @function
__asl_exec_stsk:
.LFB154:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	__slin_cnt@GOTPCREL(%rip), %rbp
	movl	8(%rdi), %edx
	movq	__sfnam_ind@GOTPCREL(%rip), %rbx
	movq	16(%rdi), %rax
	movl	0(%rbp), %r13d
	movl	%edx, 0(%rbp)
	movzwl	4(%rdi), %edx
	movl	(%rbx), %r12d
	movq	16(%rax), %rsi
	movl	%edx, (%rbx)
	leaq	16(%rdi), %rdx
	call	__exec_stsk@PLT
	movl	%r13d, 0(%rbp)
	movl	%r12d, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE154:
	.size	__asl_exec_stsk, .-__asl_exec_stsk
	.p2align 4,,15
	.globl	__asl_new_auto_idp_area
	.type	__asl_new_auto_idp_area, @function
__asl_new_auto_idp_area:
.LFB155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rax
	movq	416(%rax), %rbx
	salq	$3, %rbx
	movq	%rbx, %rdi
	call	__my_malloc@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE155:
	.size	__asl_new_auto_idp_area, .-__asl_new_auto_idp_area
	.p2align 4,,15
	.globl	__asl_cp_auto_idp_area_func
	.type	__asl_cp_auto_idp_area_func, @function
__asl_cp_auto_idp_area_func:
.LFB156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rsi), %rbp
	movq	432(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	call	memcpy@PLT
	movq	416(%rbp), %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__my_free@PLT
	.cfi_endproc
.LFE156:
	.size	__asl_cp_auto_idp_area_func, .-__asl_cp_auto_idp_area_func
	.section	.rodata.str1.1
.LC14:
	.string	"\n"
	.text
	.p2align 4,,15
	.globl	__asl_exec_display
	.type	__asl_exec_display, @function
__asl_exec_display:
.LFB157:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	24(%rdi), %rdi
	movl	$3, %esi
	call	__do_disp@PLT
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cvsim_msg@PLT
	.cfi_endproc
.LFE157:
	.size	__asl_exec_display, .-__asl_exec_display
	.p2align 4,,15
	.globl	__asl_reg_qcaf_inhibit
	.type	__asl_reg_qcaf_inhibit, @function
__asl_reg_qcaf_inhibit:
.LFB158:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	120(%rdi), %rcx
	movq	(%rax), %rax
	movq	(%rax), %rdx
	xorl	%eax, %eax
	addl	%edx, %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,4), %rsi
	testb	$1, (%rcx,%rsi,8)
	jne	.L1152
	leaq	5(%rdx,%rdx,4), %rax
	movzbl	(%rcx,%rax,8), %eax
	notl	%eax
	andl	$1, %eax
.L1152:
	rep ret
	.cfi_endproc
.LFE158:
	.size	__asl_reg_qcaf_inhibit, .-__asl_reg_qcaf_inhibit
	.p2align 4,,15
	.globl	__asl_scalar_wire_inhibit
	.type	__asl_scalar_wire_inhibit, @function
__asl_scalar_wire_inhibit:
.LFB159:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	120(%rdi), %rdx
	movq	(%rax), %rax
	movslq	(%rax), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,8), %rax
	movzbl	(%rax), %eax
	notl	%eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE159:
	.size	__asl_scalar_wire_inhibit, .-__asl_scalar_wire_inhibit
	.p2align 4,,15
	.globl	__asl_bsel_wirfrc_inhibit
	.type	__asl_bsel_wirfrc_inhibit, @function
__asl_bsel_wirfrc_inhibit:
.LFB160:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	8(%rdi), %eax
	imull	(%rdx), %eax
	movq	120(%rdi), %rdx
	addl	%eax, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,4), %rax
	leaq	(%rdx,%rax,8), %rax
	movzbl	(%rax), %eax
	notl	%eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE160:
	.size	__asl_bsel_wirfrc_inhibit, .-__asl_bsel_wirfrc_inhibit
	.p2align 4,,15
	.globl	__asl_stren_correct_frc
	.type	__asl_stren_correct_frc, @function
__asl_stren_correct_frc:
.LFB161:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movl	8(%rsi), %edx
	movq	32(%rsi), %rcx
	movq	(%rax), %r9
	leaq	0(,%rcx,8), %r8
	movl	(%r9), %eax
	imull	%edx, %eax
	testl	%edx, %edx
	jle	.L1161
	cltq
	movl	$1, %edx
	addq	%r8, %r9
	leaq	(%rax,%rax,4), %rcx
	xorl	%eax, %eax
	salq	$3, %rcx
	jmp	.L1160
	.p2align 4,,10
	.p2align 3
.L1165:
	movzbl	-1(%r9,%rdx), %r8d
	movb	%r8b, -1(%rdi,%rdx)
.L1159:
	movl	%edx, %r8d
	addq	$40, %rcx
	addq	$1, %rdx
	cmpl	%r8d, 8(%rsi)
	jle	.L1164
.L1160:
	movq	120(%rsi), %r8
	testb	$1, (%r8,%rcx)
	jne	.L1165
	movl	$1, %eax
	jmp	.L1159
	.p2align 4,,10
	.p2align 3
.L1164:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1161:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE161:
	.size	__asl_stren_correct_frc, .-__asl_stren_correct_frc
	.p2align 4,,15
	.globl	__asl_correct_frc
	.type	__asl_correct_frc, @function
__asl_correct_frc:
.LFB162:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	__xspi@GOTPCREL(%rip), %r14
	movq	__maxxnest@GOTPCREL(%rip), %r13
	movl	(%r14), %eax
	addl	$1, %eax
	cmpl	0(%r13), %eax
	movl	%eax, (%r14)
	jge	.L1180
.L1167:
	movq	__xstk@GOTPCREL(%rip), %r12
	cltq
	movq	(%r12), %rdx
	movq	(%rdx,%rax,8), %r15
	movl	8(%rbp), %eax
	leal	63(%rax), %esi
	sarl	$6, %esi
	cmpl	4(%r15), %esi
	jg	.L1181
.L1168:
	movq	8(%r15), %rdi
	movslq	%esi, %rsi
	movl	%eax, (%r15)
	leaq	(%rdi,%rsi,8), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 16(%r15)
	call	__bld_forcedbits_mask@PLT
	movl	8(%rbp), %eax
	movq	16(%r15), %rdi
	xorl	%esi, %esi
	leal	63(%rax), %edx
	sarl	$6, %edx
	sall	$3, %edx
	movslq	%edx, %rdx
	call	memset@PLT
	movl	8(%rbp), %esi
	movq	8(%r15), %rdi
	call	__vval_is1@PLT
	testl	%eax, %eax
	jne	.L1182
	movl	8(%rbp), %esi
	movq	8(%r15), %rdi
	cmpl	$64, %esi
	jg	.L1171
	cmpq	$0, (%rdi)
	sete	%dl
.L1172:
	testb	%dl, %dl
	movl	(%r14), %eax
	jne	.L1183
	addl	$1, %eax
	cmpl	0(%r13), %eax
	movl	%eax, (%r14)
	jge	.L1184
.L1174:
	movq	(%r12), %rdx
	cltq
	movq	(%rdx,%rax,8), %r12
	movl	8(%rbp), %eax
	leal	63(%rax), %esi
	sarl	$6, %esi
	cmpl	4(%r12), %esi
	jg	.L1185
.L1175:
	movq	8(%r12), %rdx
	movslq	%esi, %rsi
	movl	%eax, (%r12)
	movq	%r12, %rdi
	leaq	(%rdx,%rsi,8), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 16(%r12)
	call	__ld_wire_val_xstk@PLT
	movl	8(%rbp), %r8d
	addl	$63, %r8d
	sarl	$6, %r8d
	movslq	%r8d, %rsi
	salq	$3, %rsi
	testl	%r8d, %r8d
	jle	.L1176
	subl	$1, %r8d
	movq	8(%r15), %rax
	movq	8(%r12), %rcx
	movq	16(%r12), %rdx
	leaq	8(%rbx,%r8,8), %r9
	movq	%rbx, %rdi
	.p2align 4,,10
	.p2align 3
.L1177:
	movq	(%rax), %r8
	addq	$8, %rax
	notq	%r8
	andq	%r8, (%rdi)
	movq	-8(%rax), %r8
	notq	%r8
	andq	%r8, (%rdi,%rsi)
	movq	-8(%rax), %r8
	andq	%r8, (%rcx)
	addq	$8, %rcx
	movq	-8(%rax), %r8
	andq	%r8, (%rdx)
	addq	$8, %rdx
	movq	-8(%rcx), %r8
	orq	%r8, (%rdi)
	movq	-8(%rdx), %r8
	orq	%r8, (%rdi,%rsi)
	addq	$8, %rdi
	cmpq	%rdi, %r9
	jne	.L1177
.L1176:
	movl	$1, %eax
	subl	$2, (%r14)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1182:
	.cfi_restore_state
	subl	$1, (%r14)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1181:
	.cfi_restore_state
	movq	%r15, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%rbp), %eax
	leal	63(%rax), %esi
	sarl	$6, %esi
	jmp	.L1168
	.p2align 4,,10
	.p2align 3
.L1180:
	call	__grow_xstk@PLT
	movl	(%r14), %eax
	jmp	.L1167
	.p2align 4,,10
	.p2align 3
.L1183:
	subl	$1, %eax
	movl	%eax, (%r14)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1171:
	.cfi_restore_state
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	setne	%dl
	jmp	.L1172
	.p2align 4,,10
	.p2align 3
.L1185:
	movq	%r12, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%rbp), %eax
	leal	63(%rax), %esi
	sarl	$6, %esi
	jmp	.L1175
	.p2align 4,,10
	.p2align 3
.L1184:
	call	__grow_xstk@PLT
	movl	(%r14), %eax
	jmp	.L1174
	.cfi_endproc
.LFE162:
	.size	__asl_correct_frc, .-__asl_correct_frc
	.p2align 4,,15
	.globl	__asl_psel_correct_frc
	.type	__asl_psel_correct_frc, @function
__asl_psel_correct_frc:
.LFB163:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subl	%ecx, %ebx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	8(%rsi), %eax
	movq	__xspi@GOTPCREL(%rip), %r14
	movq	__maxxnest@GOTPCREL(%rip), %rdi
	movq	%rsi, 8(%rsp)
	leal	1(%rbx), %r12d
	movl	%edx, 40(%rsp)
	movl	%ecx, 20(%rsp)
	movl	%eax, 44(%rsp)
	movl	(%r14), %eax
	addl	$1, %eax
	cmpl	(%rdi), %eax
	movl	%eax, (%r14)
	jge	.L1202
.L1187:
	movq	__xstk@GOTPCREL(%rip), %r15
	movslq	%eax, %rdx
	addl	$64, %ebx
	sarl	$6, %ebx
	movq	(%r15), %rcx
	movq	(%rcx,%rdx,8), %rbp
	cmpl	4(%rbp), %ebx
	jg	.L1203
.L1188:
	movslq	%ebx, %rdx
	movq	__maxxnest@GOTPCREL(%rip), %rdi
	addl	$1, %eax
	leaq	0(,%rdx,8), %rcx
	movq	8(%rbp), %rdx
	movl	%r12d, 0(%rbp)
	movl	%eax, (%r14)
	movq	%rcx, 32(%rsp)
	addq	%rcx, %rdx
	cmpl	(%rdi), %eax
	movq	%rdx, 16(%rbp)
	jge	.L1204
.L1189:
	movq	(%r15), %rdx
	movq	8(%rsp), %rdi
	cltq
	movq	(%rdx,%rax,8), %rax
	movl	8(%rdi), %edx
	leal	63(%rdx), %esi
	sarl	$6, %esi
	cmpl	4(%rax), %esi
	jg	.L1205
.L1190:
	movq	8(%rax), %rdi
	movslq	%esi, %rsi
	movl	%edx, (%rax)
	movq	%rax, 24(%rsp)
	leaq	(%rdi,%rsi,8), %rcx
	movq	8(%rsp), %rsi
	movq	%rcx, 16(%rax)
	call	__bld_forcedbits_mask@PLT
	movq	24(%rsp), %rax
	movq	8(%rbp), %rdi
	movl	%r12d, %ecx
	movl	20(%rsp), %edx
	movq	8(%rax), %rsi
	call	__rhspsel@PLT
	movq	8(%rbp), %rdi
	movl	%r12d, %esi
	subl	$1, (%r14)
	call	__vval_is1@PLT
	testl	%eax, %eax
	jne	.L1206
	cmpl	$64, %r12d
	movq	8(%rbp), %rdi
	jg	.L1193
	cmpq	$0, (%rdi)
	sete	%dl
.L1194:
	testb	%dl, %dl
	movl	(%r14), %eax
	jne	.L1207
	movq	__maxxnest@GOTPCREL(%rip), %rcx
	addl	$1, %eax
	movl	%eax, (%r14)
	cmpl	(%rcx), %eax
	jge	.L1208
.L1196:
	movq	(%r15), %rdx
	cltq
	movq	(%rdx,%rax,8), %r15
	cmpl	4(%r15), %ebx
	jg	.L1209
.L1197:
	movq	8(%r15), %rdi
	movq	32(%rsp), %rsi
	movl	20(%rsp), %r8d
	movl	40(%rsp), %ecx
	movq	8(%rsp), %rdx
	movl	%r12d, (%r15)
	addq	%rdi, %rsi
	movq	%rsi, 16(%r15)
	call	__ld_psel@PLT
	testl	%ebx, %ebx
	jle	.L1198
	movl	44(%rsp), %r11d
	leal	-1(%rbx), %eax
	movq	8(%rbp), %rcx
	movq	8(%r15), %r8
	movq	16(%r15), %rdi
	leaq	8(,%rax,8), %rbx
	xorl	%eax, %eax
	addl	$63, %r11d
	sarl	$6, %r11d
	addl	%r11d, %r11d
	movslq	%r11d, %r11
	salq	$3, %r11
	.p2align 4,,10
	.p2align 3
.L1199:
	movq	(%rcx,%rax), %rdx
	notq	%rdx
	andq	%rdx, 0(%r13,%rax)
	leaq	(%r11,%rax), %rdx
	movq	(%rcx,%rax), %rsi
	addq	%r13, %rdx
	notq	%rsi
	andq	%rsi, (%rdx)
	movq	(%rcx,%rax), %rsi
	andq	%rsi, (%r8,%rax)
	movq	(%rcx,%rax), %rsi
	andq	%rsi, (%rdi,%rax)
	movq	(%r8,%rax), %rsi
	orq	%rsi, 0(%r13,%rax)
	movq	(%rdi,%rax), %rsi
	addq	$8, %rax
	orq	%rsi, (%rdx)
	cmpq	%rax, %rbx
	jne	.L1199
.L1198:
	movl	$1, %eax
	subl	$2, (%r14)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1206:
	.cfi_restore_state
	subl	$1, (%r14)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1205:
	.cfi_restore_state
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	call	__chg_xstk_width@PLT
	movq	8(%rsp), %rax
	movl	8(%rax), %edx
	movq	24(%rsp), %rax
	leal	63(%rdx), %esi
	sarl	$6, %esi
	jmp	.L1190
	.p2align 4,,10
	.p2align 3
.L1202:
	call	__grow_xstk@PLT
	movl	(%r14), %eax
	jmp	.L1187
	.p2align 4,,10
	.p2align 3
.L1204:
	call	__grow_xstk@PLT
	movl	(%r14), %eax
	jmp	.L1189
	.p2align 4,,10
	.p2align 3
.L1203:
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	__chg_xstk_width@PLT
	movl	(%r14), %eax
	jmp	.L1188
	.p2align 4,,10
	.p2align 3
.L1207:
	subl	$1, %eax
	movl	%eax, (%r14)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1193:
	.cfi_restore_state
	movl	%r12d, %esi
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	setne	%dl
	jmp	.L1194
	.p2align 4,,10
	.p2align 3
.L1209:
	movl	%ebx, %esi
	movq	%r15, %rdi
	call	__chg_xstk_width@PLT
	jmp	.L1197
	.p2align 4,,10
	.p2align 3
.L1208:
	call	__grow_xstk@PLT
	movl	(%r14), %eax
	jmp	.L1196
	.cfi_endproc
.LFE163:
	.size	__asl_psel_correct_frc, .-__asl_psel_correct_frc
	.p2align 4,,15
	.globl	__asl_stren_psel_correct_frc
	.type	__asl_stren_psel_correct_frc, @function
__asl_stren_psel_correct_frc:
.LFB164:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %r10
	movq	32(%rsi), %rax
	leaq	0(,%rax,8), %r11
	movl	8(%rsi), %eax
	imull	(%r10), %eax
	subl	%ecx, %edx
	js	.L1214
	movslq	%ecx, %rcx
	cltq
	movl	%edx, %edx
	addq	%rcx, %rax
	addq	%rcx, %r11
	leaq	1(%rdx), %r9
	leaq	(%rax,%rax,4), %r8
	xorl	%edx, %edx
	xorl	%eax, %eax
	addq	%r11, %r10
	addq	%rcx, %rdi
	salq	$3, %r8
	jmp	.L1213
	.p2align 4,,10
	.p2align 3
.L1218:
	movzbl	(%r10,%rdx), %ecx
	addq	$40, %r8
	movb	%cl, (%rdi,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r9
	je	.L1217
.L1213:
	movq	120(%rsi), %rcx
	testb	$1, (%rcx,%r8)
	jne	.L1218
	addq	$1, %rdx
	addq	$40, %r8
	movl	$1, %eax
	cmpq	%rdx, %r9
	jne	.L1213
.L1217:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1214:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE164:
	.size	__asl_stren_psel_correct_frc, .-__asl_stren_psel_correct_frc
	.p2align 4,,15
	.globl	__asl_assign_qcaf_regform_concat
	.type	__asl_assign_qcaf_regform_concat, @function
__asl_assign_qcaf_regform_concat:
.LFB194:
	.cfi_startproc
	xorl	%esi, %esi
	jmp	__exec_qc_assign@PLT
	.cfi_endproc
.LFE194:
	.size	__asl_assign_qcaf_regform_concat, .-__asl_assign_qcaf_regform_concat
	.p2align 4,,15
	.globl	__asl_assign_qcaf_concat
	.type	__asl_assign_qcaf_concat, @function
__asl_assign_qcaf_concat:
.LFB195:
	.cfi_startproc
	jmp	__exec_qc_wireforce@PLT
	.cfi_endproc
.LFE195:
	.size	__asl_assign_qcaf_concat, .-__asl_assign_qcaf_concat
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign
	.type	__asl_exec_qc_deassign, @function
__asl_exec_qc_deassign:
.LFB201:
	.cfi_startproc
	movq	24(%rdi), %rdi
	jmp	asl_loc_do_qc_deassign
	.cfi_endproc
.LFE201:
	.size	__asl_exec_qc_deassign, .-__asl_exec_qc_deassign
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign_concat
	.type	__asl_exec_qc_deassign_concat, @function
__asl_exec_qc_deassign_concat:
.LFB203:
	.cfi_startproc
	jmp	asl_loc_do_qc_deassign
	.cfi_endproc
.LFE203:
	.size	__asl_exec_qc_deassign_concat, .-__asl_exec_qc_deassign_concat
	.p2align 4,,15
	.globl	__asl_jmp_eq_stmask
	.type	__asl_jmp_eq_stmask, @function
__asl_jmp_eq_stmask:
.LFB206:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L1227
	movzbl	(%rdi), %eax
	xorb	(%rsi), %al
	testb	$3, %al
	jne	.L1229
	leal	-1(%rdx), %ecx
	movl	$1, %eax
	addq	$1, %rcx
	jmp	.L1225
	.p2align 4,,10
	.p2align 3
.L1226:
	movzbl	(%rdi,%rax), %edx
	xorb	(%rsi,%rax), %dl
	addq	$1, %rax
	andl	$3, %edx
	jne	.L1229
.L1225:
	cmpq	%rcx, %rax
	jne	.L1226
.L1227:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1229:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE206:
	.size	__asl_jmp_eq_stmask, .-__asl_jmp_eq_stmask
	.p2align 4,,15
	.globl	__asl_trigger_ectrl
	.type	__asl_trigger_ectrl, @function
__asl_trigger_ectrl:
.LFB207:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__cur_te_endp@GOTPCREL(%rip), %rcx
	movq	$1, 16(%rdi)
	movq	(%rax), %rax
	movq	(%rcx), %rdx
	movq	%rax, 48(%rdi)
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	testq	%rdx, %rdx
	movq	(%rax), %rax
	je	.L1240
	cmpq	%rax, %rdx
	je	.L1237
.L1239:
	movq	72(%rax), %rdx
	movq	%rdx, 72(%rdi)
	movq	72(%rax), %rdx
	movq	%rdi, 80(%rdx)
.L1238:
	movq	%rdi, 72(%rax)
	movq	%rax, 80(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L1237:
	movq	__free_event_tevp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rcx)
	movq	(%rdx), %rdx
	movq	%rdx, 72(%rdi)
	movq	%rdi, 72(%rax)
	movq	%rax, 80(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L1240:
	testq	%rax, %rax
	je	.L1241
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	cmpq	%rax, (%rdx)
	jne	.L1239
	movq	%rdi, (%rdx)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 72(%rdi)
	jmp	.L1238
	.p2align 4,,10
	.p2align 3
.L1241:
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L1242
	movq	%rdx, 72(%rdi)
	movq	%rdi, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L1242:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE207:
	.size	__asl_trigger_ectrl, .-__asl_trigger_ectrl
	.p2align 4,,15
	.globl	__asl_sched_fork
	.type	__asl_sched_fork, @function
__asl_sched_fork:
.LFB152:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	16(%rdi), %rax
	movq	%rsi, 24(%rsp)
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	je	.L1244
	movq	%rdi, %r8
	movl	$8, %r13d
	xorl	%r14d, %r14d
	movq	__sfnam_ind@GOTPCREL(%rip), %r12
	movq	__slin_cnt@GOTPCREL(%rip), %r15
	jmp	.L1249
	.p2align 4,,10
	.p2align 3
.L1246:
	movq	%r14, 48(%rbx)
	movq	%rbx, 40(%r14)
.L1247:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%r9, 32(%rbx)
	movq	%rbx, %r14
	movq	(%rax), %rax
	orb	$8, (%rbx)
	movq	%rax, 104(%rbx)
	movq	16(%r8), %rax
	movq	(%rax,%r13), %rbp
	addq	$8, %r13
	testq	%rbp, %rbp
	je	.L1248
.L1249:
	movzbl	0(%rbp), %eax
	andl	$63, %eax
	cmpb	$13, %al
	jne	.L1245
	movq	16(%rbp), %rbp
.L1245:
	movzwl	4(%rbp), %eax
	movl	(%r12), %r10d
	movl	(%r15), %r9d
	movq	%r8, 16(%rsp)
	movl	%r10d, 12(%rsp)
	movl	%eax, (%r12)
	movl	8(%rbp), %eax
	movl	%r9d, 8(%rsp)
	movl	%eax, (%r15)
	call	__alloc_thrd@PLT
	movq	%rax, %rbx
	movslq	(%r12), %rax
	movq	%rbp, 24(%rbx)
	movq	%rax, 16(%rbx)
	movl	(%r15), %eax
	movl	%eax, 4(%rbx)
	call	asl_loc_get_new_thread_event
	movq	%rax, 72(%rbx)
	movq	%rax, %rdi
	movq	%rbx, 8(%rax)
	call	__asl_trigger_ectrl@PLT
	movl	8(%rsp), %r9d
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movl	12(%rsp), %r10d
	movl	%r9d, (%r15)
	movq	(%rax), %r9
	movl	%r10d, (%r12)
	movl	(%r9), %eax
	movl	%eax, %edi
	andl	$-1073741761, %eax
	shrl	$6, %edi
	addl	$1, %edi
	andl	$16777215, %edi
	sall	$6, %edi
	orl	%edi, %eax
	testq	%r14, %r14
	movl	%eax, (%r9)
	movq	16(%rsp), %r8
	jne	.L1246
	movq	%rbx, 56(%r9)
	jmp	.L1247
	.p2align 4,,10
	.p2align 3
.L1244:
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
.L1248:
	movq	24(%rsp), %rax
	movq	%rax, 24(%r9)
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE152:
	.size	__asl_sched_fork, .-__asl_sched_fork
	.p2align 4,,15
	.globl	__asl_trigger_ectrl_xprop
	.type	__asl_trigger_ectrl_xprop, @function
__asl_trigger_ectrl_xprop:
.LFB208:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	__cur_te_endp@GOTPCREL(%rip), %rcx
	movq	%rsi, 24(%rdi)
	movq	$1, 16(%rdi)
	movq	(%rax), %rax
	movq	(%rcx), %rdx
	movq	%rax, 48(%rdi)
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	testq	%rdx, %rdx
	movq	(%rax), %rax
	je	.L1264
	cmpq	%rax, %rdx
	je	.L1261
.L1263:
	movq	72(%rax), %rdx
	movq	%rdx, 72(%rdi)
	movq	72(%rax), %rdx
	movq	%rdi, 80(%rdx)
.L1262:
	movq	%rdi, 72(%rax)
	movq	%rax, 80(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L1261:
	movq	__free_event_tevp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rcx)
	movq	(%rdx), %rdx
	movq	%rdx, 72(%rdi)
	movq	%rdi, 72(%rax)
	movq	%rax, 80(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L1264:
	testq	%rax, %rax
	je	.L1265
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	cmpq	%rax, (%rdx)
	jne	.L1263
	movq	%rdi, (%rdx)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 72(%rdi)
	jmp	.L1262
	.p2align 4,,10
	.p2align 3
.L1265:
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L1266
	movq	%rdx, 72(%rdi)
	movq	%rdi, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L1266:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE208:
	.size	__asl_trigger_ectrl_xprop, .-__asl_trigger_ectrl_xprop
	.p2align 4,,15
	.globl	__asl_compiled_ev_to_front
	.type	__asl_compiled_ev_to_front, @function
__asl_compiled_ev_to_front:
.LFB209:
	.cfi_startproc
	jmp	__asl_trigger_ectrl@PLT
	.cfi_endproc
.LFE209:
	.size	__asl_compiled_ev_to_front, .-__asl_compiled_ev_to_front
	.p2align 4,,15
	.globl	__asl_nb_trigger_ectrl
	.type	__asl_nb_trigger_ectrl, @function
__asl_nb_trigger_ectrl:
.LFB210:
	.cfi_startproc
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L1271
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rdi, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L1271:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE210:
	.size	__asl_nb_trigger_ectrl, .-__asl_nb_trigger_ectrl
	.p2align 4,,15
	.globl	__asl_fmonit_trigger
	.type	__asl_fmonit_trigger, @function
__asl_fmonit_trigger:
.LFB211:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	88(%rdi), %rbx
	cmpq	$0, 24(%rbx)
	je	.L1279
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1279:
	.cfi_restore_state
	movq	__fmse_freelst@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L1280
	movq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.L1275:
	movq	__fmonse_hdr@GOTPCREL(%rip), %rdx
	movq	$0, 8(%rax)
	movq	%rbx, (%rax)
	cmpq	$0, (%rdx)
	je	.L1281
	movq	__fmonse_end@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	movq	%rax, 8(%rcx)
.L1277:
	movq	%rax, (%rdx)
	movq	%rax, 24(%rbx)
	movq	__slotend_action@GOTPCREL(%rip), %rax
	orq	$8, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1281:
	.cfi_restore_state
	movq	%rax, (%rdx)
	movq	__fmonse_end@GOTPCREL(%rip), %rdx
	jmp	.L1277
	.p2align 4,,10
	.p2align 3
.L1280:
	movl	$16, %edi
	call	__my_malloc@PLT
	jmp	.L1275
	.cfi_endproc
.LFE211:
	.size	__asl_fmonit_trigger, .-__asl_fmonit_trigger
	.p2align 4,,15
	.globl	__asl_movabw_fr_svec
	.type	__asl_movabw_fr_svec, @function
__asl_movabw_fr_svec:
.LFB212:
	.cfi_startproc
	leal	63(%rdx), %eax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	sarl	$6, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	cltq
	salq	$3, %rax
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testl	%edx, %edx
	leaq	(%rdi,%rax), %r13
	movq	$0, -8(%rdi,%rax)
	movq	$0, -8(%r13,%rax)
	jle	.L1282
	leal	-1(%rdx), %eax
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)
	movq	%rsi, %r15
	leaq	1(%rsi,%rax), %r14
	.p2align 4,,10
	.p2align 3
.L1284:
	movzbl	(%r15), %ebx
	movl	%r15d, %ebp
	movq	8(%rsp), %rdi
	subl	%r12d, %ebp
	addq	$1, %r15
	movl	%ebp, %esi
	movq	%rbx, %rdx
	andl	$1, %edx
	call	__lhsbsel@PLT
	movq	%rbx, %rdx
	movl	%ebp, %esi
	movq	%r13, %rdi
	shrq	%rdx
	andl	$1, %edx
	call	__lhsbsel@PLT
	cmpq	%r14, %r15
	jne	.L1284
.L1282:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE212:
	.size	__asl_movabw_fr_svec, .-__asl_movabw_fr_svec
	.set	__asl_movabw_fr_svec.localalias.27,__asl_movabw_fr_svec
	.p2align 4,,15
	.globl	__asl_movabw_onew_fr_svec
	.type	__asl_movabw_onew_fr_svec, @function
__asl_movabw_onew_fr_svec:
.LFB213:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L1290
	leal	-1(%rsi), %r9d
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	addq	$1, %r9
	.p2align 4,,10
	.p2align 3
.L1289:
	movzbl	(%rdi,%rcx), %edx
	movq	%rdx, %rsi
	shrq	%rdx
	andl	$1, %esi
	andl	$1, %edx
	salq	%cl, %rsi
	salq	%cl, %rdx
	addq	$1, %rcx
	orq	%rsi, %rax
	orq	%rdx, %r8
	cmpq	%rcx, %r9
	jne	.L1289
.L1288:
#APP
# 4999 "v_aslib.c" 1
	movq %r8, %rcx
# 0 "" 2
#NO_APP
	ret
	.p2align 4,,10
	.p2align 3
.L1290:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L1288
	.cfi_endproc
.LFE213:
	.size	__asl_movabw_onew_fr_svec, .-__asl_movabw_onew_fr_svec
	.p2align 4,,15
	.globl	__asl_4state_to_2state_wide
	.type	__asl_4state_to_2state_wide, @function
__asl_4state_to_2state_wide:
.LFB214:
	.cfi_startproc
	movslq	%edx, %rax
	testl	%edx, %edx
	leaq	0(,%rax,8), %rcx
	jle	.L1292
	leal	-1(%rdx), %eax
	addq	%rsi, %rcx
	leaq	8(,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1294:
	movq	(%rcx,%rax), %rdx
	notq	%rdx
	andq	(%rsi,%rax), %rdx
	movq	%rdx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.L1294
.L1292:
	rep ret
	.cfi_endproc
.LFE214:
	.size	__asl_4state_to_2state_wide, .-__asl_4state_to_2state_wide
	.p2align 4,,15
	.globl	__asl_movsb_fr_wstad
	.type	__asl_movsb_fr_wstad, @function
__asl_movsb_fr_wstad:
.LFB215:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L1296
	leal	-1(%rdx), %r8d
	leaq	0(,%rcx,4), %r9
	xorl	%ecx, %ecx
	addq	$1, %r8
	jmp	.L1300
	.p2align 4,,10
	.p2align 3
.L1298:
	movq	__stren_map_tab@GOTPCREL(%rip), %rdx
	orq	%r9, %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rdi,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	je	.L1296
.L1300:
	movq	(%rsi), %rax
	shrq	%cl, %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movq	8(%rsi), %rax
	shrq	%cl, %rax
	addq	%rax, %rax
	andl	$2, %eax
	orq	%rdx, %rax
	cmpq	$2, %rax
	jne	.L1298
	movb	$2, (%rdi,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.L1300
.L1296:
	rep ret
	.cfi_endproc
.LFE215:
	.size	__asl_movsb_fr_wstad, .-__asl_movsb_fr_wstad
	.p2align 4,,15
	.globl	__asl_movsb_fr_widestad
	.type	__asl_movsb_fr_widestad, @function
__asl_movsb_fr_widestad:
.LFB216:
	.cfi_startproc
	leal	63(%rdx), %eax
	sarl	$6, %eax
	cltq
	salq	$3, %rax
	testl	%edx, %edx
	jle	.L1309
	leal	-1(%rdx), %r10d
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%r8d, %r8d
	leaq	0(,%rcx,4), %rbx
	leaq	(%rsi,%rax), %r11
	addq	$1, %r10
	jmp	.L1306
	.p2align 4,,10
	.p2align 3
.L1304:
	movq	__stren_map_tab@GOTPCREL(%rip), %rdx
	orq	%rbx, %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rdi,%r8)
	addq	$1, %r8
	cmpq	%r8, %r10
	je	.L1312
.L1306:
	movl	%r8d, %edx
	movl	%r8d, %ecx
	sarl	$6, %edx
	andl	$63, %ecx
	movslq	%edx, %rdx
	movq	(%rsi,%rdx,8), %rax
	movq	(%r11,%rdx,8), %rdx
	shrq	%cl, %rax
	shrq	%cl, %rdx
	andl	$1, %eax
	movq	%rax, %r9
	leaq	(%rdx,%rdx), %rax
	andl	$2, %eax
	orq	%r9, %rax
	cmpq	$2, %rax
	jne	.L1304
	movb	$2, (%rdi,%r8)
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L1306
.L1312:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1309:
	.cfi_restore 3
	rep ret
	.cfi_endproc
.LFE216:
	.size	__asl_movsb_fr_widestad, .-__asl_movsb_fr_widestad
	.p2align 4,,15
	.globl	__asl_movsb_fr_scalstad
	.type	__asl_movsb_fr_scalstad, @function
__asl_movsb_fr_scalstad:
.LFB217:
	.cfi_startproc
	andl	$3, %edi
	cmpq	$2, %rdi
	je	.L1315
	movq	__stren_map_tab@GOTPCREL(%rip), %rax
	salq	$2, %rsi
	orq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1315:
	movl	$2, %eax
	ret
	.cfi_endproc
.LFE217:
	.size	__asl_movsb_fr_scalstad, .-__asl_movsb_fr_scalstad
	.p2align 4,,15
	.globl	__asl_rhs_conta_stren
	.type	__asl_rhs_conta_stren, @function
__asl_rhs_conta_stren:
.LFB218:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L1316
	leal	-1(%rdx), %eax
	sall	$2, %esi
	leaq	1(%rdi,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L1319:
	movzbl	(%rdi), %eax
	andl	$3, %eax
	cmpb	$2, %al
	je	.L1318
	movzbl	%al, %eax
	movq	__stren_map_tab@GOTPCREL(%rip), %rdx
	orl	%esi, %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rdi)
.L1318:
	addq	$1, %rdi
	cmpq	%rcx, %rdi
	jne	.L1319
.L1316:
	rep ret
	.cfi_endproc
.LFE218:
	.size	__asl_rhs_conta_stren, .-__asl_rhs_conta_stren
	.p2align 4,,15
	.globl	__asl_movr_fr_w
	.type	__asl_movr_fr_w, @function
__asl_movr_fr_w:
.LFB219:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpl	$64, %esi
	movq	(%rdi), %rax
	jg	.L1331
	testq	%rax, %rax
	js	.L1327
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L1324:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1332
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1327:
	.cfi_restore_state
	movq	%rax, %rdx
	pxor	%xmm0, %xmm0
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L1324
	.p2align 4,,10
	.p2align 3
.L1331:
	movq	8(%rdi), %rdx
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdi
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, 8(%rsp)
	call	__v64_to_real@PLT
	movsd	16(%rsp), %xmm0
	jmp	.L1324
.L1332:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE219:
	.size	__asl_movr_fr_w, .-__asl_movr_fr_w
	.p2align 4,,15
	.globl	__asl_movr_fr_sgnw
	.type	__asl_movr_fr_sgnw, @function
__asl_movr_fr_sgnw:
.LFB220:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpl	$64, %esi
	movq	(%rdi), %rax
	jg	.L1345
	je	.L1336
	leal	-1(%rsi), %edx
	btq	%rdx, %rax
	jnc	.L1336
	movq	__masktab@GOTPCREL(%rip), %rdx
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	notq	%rdx
	orq	%rdx, %rax
.L1336:
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
.L1333:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1346
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1345:
	.cfi_restore_state
	movq	8(%rdi), %rdx
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdi
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, 8(%rsp)
	call	__v64_to_real@PLT
	movsd	16(%rsp), %xmm0
	jmp	.L1333
.L1346:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE220:
	.size	__asl_movr_fr_sgnw, .-__asl_movr_fr_sgnw
	.p2align 4,,15
	.globl	__asl_movw_fr_r
	.type	__asl_movw_fr_r, @function
__asl_movw_fr_r:
.LFB221:
	.cfi_startproc
	ucomisd	.LC10(%rip), %xmm0
	jb	.L1352
	addsd	.LC15(%rip), %xmm0
	movq	$0, 8(%rdi)
	cvttsd2si	%xmm0, %eax
	cltq
	movq	%rax, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L1352:
	subsd	.LC15(%rip), %xmm0
	movq	$0, 8(%rdi)
	cvttsd2si	%xmm0, %eax
	cltq
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE221:
	.size	__asl_movw_fr_r, .-__asl_movw_fr_r
	.p2align 4,,15
	.globl	__asl_movw_fr_r_2state
	.type	__asl_movw_fr_r_2state, @function
__asl_movw_fr_r_2state:
.LFB222:
	.cfi_startproc
	ucomisd	.LC10(%rip), %xmm0
	jb	.L1358
	addsd	.LC15(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	ret
	.p2align 4,,10
	.p2align 3
.L1358:
	subsd	.LC15(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	ret
	.cfi_endproc
.LFE222:
	.size	__asl_movw_fr_r_2state, .-__asl_movw_fr_r_2state
	.p2align 4,,15
	.globl	__asl_exec_sysfunc
	.type	__asl_exec_sysfunc, @function
__asl_exec_sysfunc:
.LFB223:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	__exec_sysfunc@PLT
	movq	__xspi@GOTPCREL(%rip), %rcx
	movq	__xstk@GOTPCREL(%rip), %rax
	movslq	(%rcx), %rsi
	movq	(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rsi, %rdx
	subl	$1, %edx
	movl	%edx, (%rcx)
	movq	8(%rax), %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE223:
	.size	__asl_exec_sysfunc, .-__asl_exec_sysfunc
	.p2align 4,,15
	.globl	__asl_exec_sysfunc_stmtloc
	.type	__asl_exec_sysfunc_stmtloc, @function
__asl_exec_sysfunc_stmtloc:
.LFB224:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movzwl	4(%rsi), %eax
	movq	__sfnam_ind@GOTPCREL(%rip), %rbp
	movq	__slin_cnt@GOTPCREL(%rip), %rbx
	movl	0(%rbp), %r13d
	movl	%eax, 0(%rbp)
	movl	8(%rsi), %eax
	movl	(%rbx), %r12d
	movl	%eax, (%rbx)
	call	__exec_sysfunc@PLT
	movq	__xspi@GOTPCREL(%rip), %rcx
	movq	__xstk@GOTPCREL(%rip), %rax
	movl	%r13d, 0(%rbp)
	movl	%r12d, (%rbx)
	movslq	(%rcx), %rsi
	movq	(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	movq	%rsi, %rdx
	subl	$1, %edx
	movl	%edx, (%rcx)
	movq	8(%rax), %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE224:
	.size	__asl_exec_sysfunc_stmtloc, .-__asl_exec_sysfunc_stmtloc
	.p2align 4,,15
	.globl	__asl_pop_xstk
	.type	__asl_pop_xstk, @function
__asl_pop_xstk:
.LFB225:
	.cfi_startproc
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	%edi, (%rax)
	ret
	.cfi_endproc
.LFE225:
	.size	__asl_pop_xstk, .-__asl_pop_xstk
	.p2align 4,,15
	.globl	__asl_widcas_eval
	.type	__asl_widcas_eval, @function
__asl_widcas_eval:
.LFB226:
	.cfi_startproc
	movslq	%edx, %r8
	salq	$3, %r8
	testl	%edx, %edx
	jle	.L1368
	leaq	(%rdi,%r8), %r10
	addq	%rsi, %r8
	movq	(%rdi), %rcx
	xorq	(%rsi), %rcx
	movq	(%r10), %rax
	xorq	(%r8), %rax
	orq	%rax, %rcx
	jne	.L1370
	leal	-1(%rdx), %eax
	leaq	8(,%rax,8), %r9
	movl	$8, %eax
	jmp	.L1366
	.p2align 4,,10
	.p2align 3
.L1367:
	movq	(%rdi,%rax), %rcx
	movq	(%r10,%rax), %rdx
	xorq	(%rsi,%rax), %rcx
	xorq	(%r8,%rax), %rdx
	addq	$8, %rax
	orq	%rdx, %rcx
	jne	.L1370
.L1366:
	cmpq	%rax, %r9
	jne	.L1367
.L1368:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1370:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE226:
	.size	__asl_widcas_eval, .-__asl_widcas_eval
	.p2align 4,,15
	.globl	__asl_widcasx_eval
	.type	__asl_widcasx_eval, @function
__asl_widcasx_eval:
.LFB227:
	.cfi_startproc
	movslq	%edx, %r9
	salq	$3, %r9
	testl	%edx, %edx
	jle	.L1375
	leaq	(%rdi,%r9), %r11
	addq	%rsi, %r9
	movq	(%rdi), %rcx
	movq	(%r9), %r8
	xorq	(%rsi), %rcx
	movq	(%r11), %rax
	movq	%rax, %r10
	orq	%r8, %rax
	xorq	%r8, %r10
	notq	%rax
	orq	%r10, %rcx
	testq	%rax, %rcx
	jne	.L1376
	leal	-1(%rdx), %eax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	8(,%rax,8), %rbx
	movl	$8, %eax
	jmp	.L1373
	.p2align 4,,10
	.p2align 3
.L1374:
	movq	(%r11,%rax), %rdx
	movq	(%r9,%rax), %r8
	movq	(%rdi,%rax), %rcx
	xorq	(%rsi,%rax), %rcx
	addq	$8, %rax
	movq	%rdx, %r10
	orq	%r8, %rdx
	xorq	%r8, %r10
	notq	%rdx
	orq	%r10, %rcx
	testq	%rdx, %rcx
	jne	.L1377
.L1373:
	cmpq	%rax, %rbx
	jne	.L1374
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1377:
	.cfi_restore_state
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1375:
	.cfi_restore 3
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1376:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE227:
	.size	__asl_widcasx_eval, .-__asl_widcasx_eval
	.p2align 4,,15
	.globl	__asl_widcasz_eval
	.type	__asl_widcasz_eval, @function
__asl_widcasz_eval:
.LFB228:
	.cfi_startproc
	movslq	%edx, %rax
	salq	$3, %rax
	testl	%edx, %edx
	jle	.L1385
	subl	$1, %edx
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	(%rdi,%rax), %r11
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	(%rsi,%rax), %r10
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	8(,%rdx,8), %rbx
	xorl	%edx, %edx
	jmp	.L1384
	.p2align 4,,10
	.p2align 3
.L1393:
	addq	$8, %rdx
	cmpq	%rdx, %rbx
	je	.L1392
.L1384:
	movq	(%r11,%rdx), %r8
	movq	(%r10,%rdx), %rbp
	movq	(%rdi,%rdx), %rax
	movq	(%rsi,%rdx), %r12
	movq	%r8, %rcx
	movq	%rbp, %r9
	xorq	%rbp, %r8
	notq	%rcx
	notq	%r9
	orq	%rax, %rcx
	orq	%r12, %r9
	xorq	%r12, %rax
	andq	%r9, %rcx
	orq	%r8, %rax
	testq	%rax, %rcx
	je	.L1393
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1392:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1385:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE228:
	.size	__asl_widcasz_eval, .-__asl_widcasz_eval
	.p2align 4,,15
	.globl	__asl_wide_bitxor
	.type	__asl_wide_bitxor, @function
__asl_wide_bitxor:
.LFB229:
	.cfi_startproc
	testl	%ecx, %ecx
	jle	.L1394
	leal	-1(%rcx), %eax
	leaq	8(,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1396:
	movq	(%rsi,%rax), %rcx
	xorq	(%rdx,%rax), %rcx
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.L1396
.L1394:
	rep ret
	.cfi_endproc
.LFE229:
	.size	__asl_wide_bitxor, .-__asl_wide_bitxor
	.p2align 4,,15
	.globl	__asl_wide_notl
	.type	__asl_wide_notl, @function
__asl_wide_notl:
.LFB230:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L1398
	leal	-1(%rdx), %eax
	leaq	8(,%rax,8), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1400:
	movq	(%rsi,%rax), %rdx
	notq	%rdx
	movq	%rdx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L1400
.L1398:
	rep ret
	.cfi_endproc
.LFE230:
	.size	__asl_wide_notl, .-__asl_wide_notl
	.p2align 4,,15
	.globl	__asl_wide_bitand
	.type	__asl_wide_bitand, @function
__asl_wide_bitand:
.LFB231:
	.cfi_startproc
	testl	%ecx, %ecx
	jle	.L1402
	leal	-1(%rcx), %eax
	leaq	8(,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1404:
	movq	(%rsi,%rax), %rcx
	andq	(%rdx,%rax), %rcx
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.L1404
.L1402:
	rep ret
	.cfi_endproc
.LFE231:
	.size	__asl_wide_bitand, .-__asl_wide_bitand
	.p2align 4,,15
	.globl	__asl_wide_redxor
	.type	__asl_wide_redxor, @function
__asl_wide_redxor:
.LFB232:
	.cfi_startproc
	testl	%esi, %esi
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	jle	.L1409
	leal	-1(%rsi), %eax
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	leaq	8(%rdi,%rax,8), %r12
	.p2align 4,,10
	.p2align 3
.L1408:
	movq	(%rbx), %rdi
	addq	$8, %rbx
	call	__wrd_redxor@PLT
	xorq	%rax, %rbp
	cmpq	%r12, %rbx
	jne	.L1408
	movq	%rbp, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1409:
	.cfi_restore_state
	xorl	%ebp, %ebp
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE232:
	.size	__asl_wide_redxor, .-__asl_wide_redxor
	.p2align 4,,15
	.globl	__asl_wid_bin_bitor_x
	.type	__asl_wid_bin_bitor_x, @function
__asl_wid_bin_bitor_x:
.LFB233:
	.cfi_startproc
	leal	63(%rcx), %eax
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sarl	$6, %eax
	movslq	%eax, %r11
	salq	$3, %r11
	testl	%eax, %eax
	leaq	(%rdi,%r11), %rbp
	jle	.L1413
	subl	$1, %eax
	leaq	(%rsi,%r11), %rbx
	leaq	(%rdx,%r11), %r10
	leaq	8(,%rax,8), %r12
	xorl	%eax, %eax
	jmp	.L1416
	.p2align 4,,10
	.p2align 3
.L1419:
	movq	$0, 0(%rbp,%rax)
	movq	(%rsi,%rax), %r8
	orq	(%rdx,%rax), %r8
	movq	%r8, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r12
	je	.L1413
.L1416:
	movq	(%rbx,%rax), %r8
	orq	(%r10,%rax), %r8
	je	.L1419
	movq	(%rsi,%rax), %r9
	orq	(%rdx,%rax), %r9
	orq	%r9, %r8
	movq	%r8, (%rdi,%rax)
	movq	(%rbx,%rax), %r8
	orq	(%r10,%rax), %r8
	movq	%r8, 0(%rbp,%rax)
	addq	$8, %rax
	cmpq	%rax, %r12
	jne	.L1416
.L1413:
	movq	__masktab@GOTPCREL(%rip), %rax
	subq	$8, %r11
	andl	$63, %ecx
	movq	(%rax,%rcx,8), %rax
	andq	%rax, (%rdi,%r11)
	andq	%rax, 0(%rbp,%r11)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE233:
	.size	__asl_wid_bin_bitor_x, .-__asl_wid_bin_bitor_x
	.p2align 4,,15
	.globl	__asl_wid_un_redor_x
	.type	__asl_wid_un_redor_x, @function
__asl_wid_un_redor_x:
.LFB234:
	.cfi_startproc
	leal	63(%rsi), %eax
	sarl	$6, %eax
	cmpl	$64, %esi
	cltq
	leaq	(%rdi,%rax,8), %rax
	jg	.L1421
	cmpq	$0, (%rax)
	jne	.L1432
	xorl	%eax, %eax
	cmpq	$0, (%rdi)
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
.L1432:
	movl	$3, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1421:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	movq	%rax, %rdi
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	je	.L1433
	movl	%ebx, %esi
	movq	%rbp, %rdi
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	sete	%al
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movzbl	%al, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1433:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$3, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE234:
	.size	__asl_wid_un_redor_x, .-__asl_wid_un_redor_x
	.p2align 4,,15
	.globl	__asl_has_xedge_wide
	.type	__asl_has_xedge_wide, @function
__asl_has_xedge_wide:
.LFB235:
	.cfi_startproc
	movslq	%edx, %rcx
	salq	$3, %rcx
	testl	%edx, %edx
	jle	.L1439
	leal	-1(%rdx), %eax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	(%rsi,%rcx), %r11
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	(%rdi,%rcx), %rbx
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rbp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1438:
	movq	(%rdi,%rdx), %r9
	movq	(%rsi,%rdx), %r8
	movq	(%rbx,%rdx), %rcx
	movq	(%r11,%rdx), %r10
	andq	%r9, %rcx
	andq	%r8, %r10
	orq	%r10, %rcx
	je	.L1436
	orq	%rcx, %r9
	orq	%r8, %rcx
	movl	$1, %eax
	cmpq	%rcx, %r9
	jne	.L1434
.L1436:
	addq	$8, %rdx
	cmpq	%rdx, %rbp
	jne	.L1438
	xorl	$1, %eax
.L1434:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L1439:
	.cfi_restore 3
	.cfi_restore 6
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE235:
	.size	__asl_has_xedge_wide, .-__asl_has_xedge_wide
	.p2align 4,,15
	.globl	__asl_has_xedge_wide_st
	.type	__asl_has_xedge_wide_st, @function
__asl_has_xedge_wide_st:
.LFB236:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L1453
	leal	-1(%rdx), %r10d
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$1, %r11d
	addq	$1, %r10
	.p2align 4,,10
	.p2align 3
.L1452:
	movzbl	(%rdi,%rdx), %r8d
	movzbl	(%rsi,%rdx), %ecx
	movl	%r8d, %r9d
	andl	$1, %r8d
	shrb	%r9b
	andl	%r9d, %r8d
	movl	%ecx, %r9d
	andl	$1, %ecx
	shrb	%r9b
	andl	%r9d, %ecx
	orb	%cl, %r8b
	cmovne	%r11d, %eax
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.L1452
	xorl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1453:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE236:
	.size	__asl_has_xedge_wide_st, .-__asl_has_xedge_wide_st
	.p2align 4,,15
	.globl	__asl_xprop_check_case_net_set
	.type	__asl_xprop_check_case_net_set, @function
__asl_xprop_check_case_net_set:
.LFB237:
	.cfi_startproc
	cmpl	$1, %esi
	jle	.L1470
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	24(%rdi), %rbp
	movl	4(%rbp), %esi
	testl	%esi, %esi
	jle	.L1456
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movq	$-1, %r14
	.p2align 4,,10
	.p2align 3
.L1463:
	movq	64(%rbp), %rax
	movl	(%rax,%rbx), %ecx
	testl	%ecx, %ecx
	je	.L1458
	movq	72(%rbp), %rax
	addq	%rbx, %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L1473
.L1458:
	addl	$1, %r12d
	addq	$4, %rbx
	cmpl	%r12d, 4(%rbp)
	jg	.L1463
.L1456:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1473:
	.cfi_restore_state
	movq	80(%rbp), %rdx
	movl	$255, %esi
	movq	(%rdx,%rbx,2), %rcx
	movl	$1, (%rax)
	movl	8(%rcx), %eax
	movq	%rcx, 8(%rsp)
	leal	63(%rax), %r15d
	movq	40(%rbp), %rax
	sarl	$6, %r15d
	leal	0(,%r15,8), %edx
	movq	(%rax,%rbx,2), %rdi
	movslq	%r15d, %r15
	movslq	%edx, %r13
	movq	%r13, %rdx
	call	memset@PLT
	movq	8(%rsp), %rcx
	movq	32(%rbp), %rax
	movl	8(%rcx), %edi
	movq	(%rax,%rbx,2), %rsi
	leal	63(%rdi), %eax
	sarl	$6, %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jle	.L1459
	leal	-1(%rcx), %r9d
	leaq	8(%rsi), %r8
	movq	%rsi, %rax
	leaq	(%r8,%r9,8), %rdx
	.p2align 4,,10
	.p2align 3
.L1460:
	movq	%r14, (%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L1460
	movslq	%ecx, %rax
	movq	__masktab@GOTPCREL(%rip), %rcx
	movl	%edi, %edx
	andl	$63, %edx
	movq	(%rcx,%rdx,8), %rdi
	leaq	(%r9,%r15), %rcx
	andq	%rdi, -8(%rsi,%rax,8)
	leaq	(%rsi,%r13), %rdx
	leaq	(%r8,%rcx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L1462:
	movq	%r14, (%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.L1462
.L1464:
	addq	%r15, %rax
	andq	%rdi, -8(%rsi,%rax,8)
	jmp	.L1458
	.p2align 4,,10
	.p2align 3
.L1470:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	rep ret
	.p2align 4,,10
	.p2align 3
.L1459:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	__masktab@GOTPCREL(%rip), %rcx
	movl	%edi, %edx
	cltq
	andl	$63, %edx
	movq	(%rcx,%rdx,8), %rdi
	andq	%rdi, -8(%rsi,%rax,8)
	jmp	.L1464
	.cfi_endproc
.LFE237:
	.size	__asl_xprop_check_case_net_set, .-__asl_xprop_check_case_net_set
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_wide
	.type	__asl_stmt_assign_to_accum_wide, @function
__asl_stmt_assign_to_accum_wide:
.LFB238:
	.cfi_startproc
	movq	%rdx, %rax
	movq	16(%rdi), %rdi
	movq	%rcx, %rdx
	movq	24(%rsi), %rcx
	movq	%rax, %rsi
	jmp	__assign_lhsx_to_accum@PLT
	.cfi_endproc
.LFE238:
	.size	__asl_stmt_assign_to_accum_wide, .-__asl_stmt_assign_to_accum_wide
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_1w
	.type	__asl_stmt_assign_to_accum_1w, @function
__asl_stmt_assign_to_accum_1w:
.LFB239:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rdi
	movq	%rcx, (%rsp)
	movq	24(%rsi), %rcx
	leaq	8(%rsp), %rsi
	movq	%rdx, 8(%rsp)
	movq	%rsp, %rdx
	call	__assign_lhsx_to_accum@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE239:
	.size	__asl_stmt_assign_to_accum_1w, .-__asl_stmt_assign_to_accum_1w
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_1w_if_id
	.type	__asl_stmt_assign_to_accum_1w_if_id, @function
__asl_stmt_assign_to_accum_1w_if_id:
.LFB240:
	.cfi_startproc
	movq	24(%rsi), %rsi
	jmp	asl_loc_stmt_assign_to_accum_1w_id
	.cfi_endproc
.LFE240:
	.size	__asl_stmt_assign_to_accum_1w_if_id, .-__asl_stmt_assign_to_accum_1w_if_id
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_wide_if_id
	.type	__asl_stmt_assign_to_accum_wide_if_id, @function
__asl_stmt_assign_to_accum_wide_if_id:
.LFB241:
	.cfi_startproc
	movq	24(%rsi), %rsi
	jmp	asl_loc_stmt_assign_to_accum_wide_id
	.cfi_endproc
.LFE241:
	.size	__asl_stmt_assign_to_accum_wide_if_id, .-__asl_stmt_assign_to_accum_wide_if_id
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_wide_case_id
	.type	__asl_stmt_assign_to_accum_wide_case_id, @function
__asl_stmt_assign_to_accum_wide_case_id:
.LFB242:
	.cfi_startproc
	movq	24(%rsi), %rsi
	jmp	asl_loc_stmt_assign_to_accum_wide_id
	.cfi_endproc
.LFE242:
	.size	__asl_stmt_assign_to_accum_wide_case_id, .-__asl_stmt_assign_to_accum_wide_case_id
	.p2align 4,,15
	.globl	__asl_stmt_assign_to_accum_1w_case_id
	.type	__asl_stmt_assign_to_accum_1w_case_id, @function
__asl_stmt_assign_to_accum_1w_case_id:
.LFB243:
	.cfi_startproc
	movq	24(%rsi), %rsi
	jmp	asl_loc_stmt_assign_to_accum_1w_id
	.cfi_endproc
.LFE243:
	.size	__asl_stmt_assign_to_accum_1w_case_id, .-__asl_stmt_assign_to_accum_1w_case_id
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_block_case
	.type	__asl_set_xprop_accum_block_case, @function
__asl_set_xprop_accum_block_case:
.LFB247:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	24(%rdi), %rbp
	movl	4(%rbp), %ecx
	orb	$32, 8(%rbp)
	movl	$0, 0(%rbp)
	testl	%ecx, %ecx
	jle	.L1481
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.L1484
	.p2align 4,,10
	.p2align 3
.L1483:
	addl	$1, %r12d
	addq	$4, %rbx
	cmpl	%r12d, 4(%rbp)
	jle	.L1481
.L1484:
	movq	80(%rbp), %rax
	movq	96(%rbp), %rdx
	movq	(%rax,%rbx,2), %rax
	movl	240(%rax), %ecx
	movl	%ecx, (%rdx,%rbx)
	movq	64(%rbp), %rdx
	movl	%r12d, 240(%rax)
	movl	$0, (%rdx,%rbx)
	movq	72(%rbp), %rdx
	movl	$0, (%rdx,%rbx)
	movq	16(%rbp), %rdx
	movl	(%rdx,%rbx), %edx
	testl	%edx, %edx
	jne	.L1483
	movl	8(%rax), %r13d
	movq	40(%rbp), %rax
	xorl	%esi, %esi
	addl	$1, %r12d
	addl	$63, %r13d
	movq	(%rax,%rbx,2), %rdi
	sarl	$6, %r13d
	sall	$3, %r13d
	movslq	%r13d, %r13
	movq	%r13, %rdx
	call	memset@PLT
	movq	48(%rbp), %rax
	xorl	%esi, %esi
	movq	%r13, %rdx
	movq	(%rax,%rbx,2), %rdi
	call	memset@PLT
	movq	56(%rbp), %rax
	xorl	%esi, %esi
	movq	%r13, %rdx
	movq	(%rax,%rbx,2), %rdi
	addq	$4, %rbx
	call	memset@PLT
	cmpl	%r12d, 4(%rbp)
	jg	.L1484
.L1481:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE247:
	.size	__asl_set_xprop_accum_block_case, .-__asl_set_xprop_accum_block_case
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_block_if
	.type	__asl_set_xprop_accum_block_if, @function
__asl_set_xprop_accum_block_if:
.LFB248:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	24(%rdi), %rbp
	movl	4(%rbp), %ecx
	orb	$32, 8(%rbp)
	movl	$0, 0(%rbp)
	testl	%ecx, %ecx
	jle	.L1487
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.L1490
	.p2align 4,,10
	.p2align 3
.L1489:
	addl	$1, %r12d
	addq	$4, %rbx
	cmpl	%r12d, 4(%rbp)
	jle	.L1487
.L1490:
	movq	80(%rbp), %rax
	movq	96(%rbp), %rdx
	movq	(%rax,%rbx,2), %rax
	movl	240(%rax), %ecx
	movl	%ecx, (%rdx,%rbx)
	movq	64(%rbp), %rdx
	movl	%r12d, 240(%rax)
	movl	$0, (%rdx,%rbx)
	movq	72(%rbp), %rdx
	movl	$0, (%rdx,%rbx)
	movq	16(%rbp), %rdx
	movl	(%rdx,%rbx), %edx
	testl	%edx, %edx
	jne	.L1489
	movl	8(%rax), %r13d
	movq	40(%rbp), %rax
	xorl	%esi, %esi
	addl	$1, %r12d
	addl	$63, %r13d
	movq	(%rax,%rbx,2), %rdi
	sarl	$6, %r13d
	sall	$3, %r13d
	movslq	%r13d, %r13
	movq	%r13, %rdx
	call	memset@PLT
	movq	48(%rbp), %rax
	xorl	%esi, %esi
	movq	%r13, %rdx
	movq	(%rax,%rbx,2), %rdi
	call	memset@PLT
	movq	56(%rbp), %rax
	xorl	%esi, %esi
	movq	%r13, %rdx
	movq	(%rax,%rbx,2), %rdi
	addq	$4, %rbx
	call	memset@PLT
	cmpl	%r12d, 4(%rbp)
	jg	.L1490
.L1487:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE248:
	.size	__asl_set_xprop_accum_block_if, .-__asl_set_xprop_accum_block_if
	.p2align 4,,15
	.globl	__asl_set_restore_xprop_accum_block
	.type	__asl_set_restore_xprop_accum_block, @function
__asl_set_restore_xprop_accum_block:
.LFB249:
	.cfi_startproc
	movq	24(%rdi), %rdi
	jmp	asl_loc_set_restore_xprop_accum_block
	.cfi_endproc
.LFE249:
	.size	__asl_set_restore_xprop_accum_block, .-__asl_set_restore_xprop_accum_block
	.p2align 4,,15
	.globl	__asl_set_restore_xprop_accum_toself
	.type	__asl_set_restore_xprop_accum_toself, @function
__asl_set_restore_xprop_accum_toself:
.LFB250:
	.cfi_startproc
	movq	24(%rdi), %rdi
	xorl	%esi, %esi
	jmp	asl_loc_set_restore_xprop_accum_block_selfv
	.cfi_endproc
.LFE250:
	.size	__asl_set_restore_xprop_accum_toself, .-__asl_set_restore_xprop_accum_toself
	.p2align 4,,15
	.globl	__asl_set_restore_xprop_accum_block_nodefault
	.type	__asl_set_restore_xprop_accum_block_nodefault, @function
__asl_set_restore_xprop_accum_block_nodefault:
.LFB251:
	.cfi_startproc
	xorl	%r8d, %r8d
	movq	24(%rdi), %rdi
	cmpl	$1, %esi
	movl	$1, %eax
	movl	%edx, %ecx
	setg	%r8b
	sall	%cl, %eax
	cmpl	%esi, %eax
	movl	%r8d, (%rdi)
	movl	%r8d, %esi
	jg	.L1497
	jmp	asl_loc_set_restore_xprop_accum_block
	.p2align 4,,10
	.p2align 3
.L1497:
	jmp	asl_loc_set_restore_xprop_accum_block_selfv
	.cfi_endproc
.LFE251:
	.size	__asl_set_restore_xprop_accum_block_nodefault, .-__asl_set_restore_xprop_accum_block_nodefault
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_init
	.type	__asl_set_xprop_accum_init, @function
__asl_set_xprop_accum_init:
.LFB255:
	.cfi_startproc
	movzbl	6(%rdi), %ecx
	movq	232(%rdi), %rax
	testb	$4, %cl
	je	.L1501
	orq	8(%rax), %rdx
	movq	(%rax), %rcx
	xorq	%rsi, %rcx
	orq	%rcx, %rdx
	orq	%rdx, %rsi
	movq	%rdx, 8(%rax)
	movq	%rsi, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L1501:
	orl	$4, %ecx
	movb	%cl, 6(%rdi)
	movq	%rsi, (%rax)
	movq	%rdx, 8(%rax)
	ret
	.cfi_endproc
.LFE255:
	.size	__asl_set_xprop_accum_init, .-__asl_set_xprop_accum_init
	.p2align 4,,15
	.globl	__asl_set_xprop_accum_init_wide
	.type	__asl_set_xprop_accum_init_wide, @function
__asl_set_xprop_accum_init_wide:
.LFB256:
	.cfi_startproc
	movl	8(%rdi), %r10d
	movzbl	6(%rdi), %eax
	movq	232(%rdi), %r8
	leal	63(%r10), %edx
	sarl	$6, %edx
	testb	$4, %al
	je	.L1509
	movslq	%edx, %rax
	testl	%edx, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	0(,%rax,8), %r9
	leaq	(%r8,%r9), %rdi
	jle	.L1504
	leal	-1(%rdx), %eax
	leaq	(%rsi,%r9), %r11
	leaq	8(,%rax,8), %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1505:
	movq	(%r11,%rax), %rdx
	movq	(%r8,%rax), %rcx
	orq	(%rdi,%rax), %rdx
	xorq	(%rsi,%rax), %rcx
	orq	%rcx, %rdx
	movq	%rdx, (%rdi,%rax)
	orq	(%rsi,%rax), %rdx
	movq	%rdx, (%r8,%rax)
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.L1505
.L1504:
	movq	__masktab@GOTPCREL(%rip), %rdx
	leaq	-8(%r9), %rax
	andl	$63, %r10d
	movq	(%rdx,%r10,8), %rdx
	andq	%rdx, (%r8,%rax)
	andq	%rdx, (%rdi,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1509:
	.cfi_restore 3
	orl	$4, %eax
	sall	$4, %edx
	movb	%al, 6(%rdi)
	movslq	%edx, %rdx
	movq	%r8, %rdi
	jmp	memcpy@PLT
	.cfi_endproc
.LFE256:
	.size	__asl_set_xprop_accum_init_wide, .-__asl_set_xprop_accum_init_wide
	.p2align 4,,15
	.globl	__asl_xprop_accum_to_self
	.type	__asl_xprop_accum_to_self, @function
__asl_xprop_accum_to_self:
.LFB257:
	.cfi_startproc
	testb	$4, 6(%rdi)
	je	.L1510
	movq	232(%rdi), %rax
	movq	8(%rax), %rcx
	orq	%rdx, %rcx
	movq	(%rax), %rdx
	xorq	%rsi, %rdx
	orq	%rcx, %rdx
	orq	%rdx, %rsi
	movq	%rdx, 8(%rax)
	movq	%rsi, (%rax)
.L1510:
	rep ret
	.cfi_endproc
.LFE257:
	.size	__asl_xprop_accum_to_self, .-__asl_xprop_accum_to_self
	.p2align 4,,15
	.globl	__asl_xprop_accum_to_self_wide
	.type	__asl_xprop_accum_to_self_wide, @function
__asl_xprop_accum_to_self_wide:
.LFB258:
	.cfi_startproc
	testb	$4, 6(%rdi)
	je	.L1524
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	8(%rdi), %ebx
	movq	232(%rdi), %rdi
	leal	63(%rbx), %edx
	sarl	$6, %edx
	movslq	%edx, %rax
	testl	%edx, %edx
	leaq	0(,%rax,8), %r9
	leaq	(%rdi,%r9), %r8
	jle	.L1517
	leal	-1(%rdx), %eax
	leaq	(%rsi,%r9), %r10
	leaq	8(,%rax,8), %r11
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1518:
	movq	(%r10,%rax), %rdx
	movq	(%rdi,%rax), %rcx
	orq	(%r8,%rax), %rdx
	xorq	(%rsi,%rax), %rcx
	orq	%rcx, %rdx
	movq	%rdx, (%r8,%rax)
	orq	(%rsi,%rax), %rdx
	movq	%rdx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r11
	jne	.L1518
.L1517:
	movq	__masktab@GOTPCREL(%rip), %rdx
	leaq	-8(%r9), %rax
	andl	$63, %ebx
	movq	(%rdx,%rbx,8), %rdx
	andq	%rdx, (%rdi,%rax)
	andq	%rdx, (%r8,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1524:
	.cfi_restore 3
	rep ret
	.cfi_endproc
.LFE258:
	.size	__asl_xprop_accum_to_self_wide, .-__asl_xprop_accum_to_self_wide
	.p2align 4,,15
	.globl	__asl_xprop_xedge_net
	.type	__asl_xprop_xedge_net, @function
__asl_xprop_xedge_net:
.LFB259:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	24(%rdi), %rcx
	movq	(%rax), %rax
	movq	112(%rcx), %rsi
	movslq	(%rax), %rdx
	leaq	(%rsi,%rdx,8), %rdi
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L1529
	movq	120(%rcx), %rcx
	movq	32(%rsi), %rsi
	movq	$0, (%rdi)
	movzbl	(%rcx,%rdx), %edx
	leaq	(%rax,%rsi,8), %rax
	movq	(%rax), %rsi
	movq	%rdx, (%rax)
#APP
# 6473 "v_aslib.c" 1
	movq %rsi, %rcx
# 0 "" 2
#NO_APP
	ret
	.p2align 4,,10
	.p2align 3
.L1529:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE259:
	.size	__asl_xprop_xedge_net, .-__asl_xprop_xedge_net
	.p2align 4,,15
	.globl	__asl_xprop_set_xedge_net
	.type	__asl_xprop_set_xedge_net, @function
__asl_xprop_set_xedge_net:
.LFB260:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	24(%rdi), %rcx
	movq	(%rax), %rax
	movq	112(%rcx), %rdi
	movq	120(%rcx), %rcx
	movslq	(%rax), %rax
	movq	%rsi, (%rdi,%rax,8)
	movb	%dl, (%rcx,%rax)
	ret
	.cfi_endproc
.LFE260:
	.size	__asl_xprop_set_xedge_net, .-__asl_xprop_set_xedge_net
	.p2align 4,,15
	.globl	__asl_get_xprop_accum
	.type	__asl_get_xprop_accum, @function
__asl_get_xprop_accum:
.LFB261:
	.cfi_startproc
	movzbl	6(%rdi), %eax
	testb	$4, %al
	je	.L1533
	andl	$-5, %eax
	movb	%al, 6(%rdi)
	movq	232(%rdi), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1533:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE261:
	.size	__asl_get_xprop_accum, .-__asl_get_xprop_accum
	.p2align 4,,15
	.globl	__asl_per_bit_xprop_accum
	.type	__asl_per_bit_xprop_accum, @function
__asl_per_bit_xprop_accum:
.LFB262:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%esi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	24(%rdi), %r13
	movq	80(%r13), %rax
	movq	(%rax,%rbx,8), %r15
	movzbl	6(%r15), %eax
	testb	$4, %al
	jne	.L1547
.L1535:
	xorl	%eax, %eax
.L1534:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1547:
	.cfi_restore_state
	andl	$-5, %eax
	movq	%rdx, %r12
	movq	232(%r15), %r14
	movb	%al, 6(%r15)
	movl	8(%r15), %eax
	movq	%r12, %rdi
	leal	63(%rax), %ebp
	sarl	$6, %ebp
	movslq	%ebp, %rbp
	salq	$3, %rbp
	leaq	(%rdx,%rbp), %rax
	movq	%r15, %rdx
	movq	%rax, %rsi
	movq	%rax, 16(%rsp)
	call	__ld_wire_val_wrds@PLT
	movq	40(%r13), %rax
	movq	(%rax,%rbx,8), %r13
	movl	8(%r15), %eax
	testl	%eax, %eax
	jle	.L1535
	leaq	(%r14,%rbp), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movq	%rdi, 24(%rsp)
	jmp	.L1537
	.p2align 4,,10
	.p2align 3
.L1536:
	addl	$1, %ebx
	cmpl	%ebx, 8(%r15)
	jle	.L1534
.L1537:
	movl	%ebx, %esi
	movl	%ebx, %ecx
	sarl	$6, %esi
	andl	$63, %ecx
	movslq	%esi, %rsi
	movq	0(%r13,%rsi,8), %rdx
	leaq	0(,%rsi,8), %rbp
	btq	%rcx, %rdx
	jnc	.L1536
	movq	(%r14,%rsi,8), %rdx
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%ecx, 12(%rsp)
	shrq	%cl, %rdx
	andl	$1, %edx
	call	__lhsbsel@PLT
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ebx, %esi
	movq	16(%rsp), %rdi
	movq	(%rax,%rbp), %rdx
	shrq	%cl, %rdx
	andl	$1, %edx
	call	__lhsbsel@PLT
	movl	$1, %eax
	jmp	.L1536
	.cfi_endproc
.LFE262:
	.size	__asl_per_bit_xprop_accum, .-__asl_per_bit_xprop_accum
	.p2align 4,,15
	.globl	__asl_trace_xprop_write
	.type	__asl_trace_xprop_write, @function
__asl_trace_xprop_write:
.LFB263:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, 8(%rsp)
	leaq	8(%rsp), %rsi
	movq	%rdx, (%rsp)
	movq	%rsp, %rdx
	call	__trace_xprop_stmt_write@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE263:
	.size	__asl_trace_xprop_write, .-__asl_trace_xprop_write
	.p2align 4,,15
	.globl	__asl_trace_xprop_write_wide
	.type	__asl_trace_xprop_write_wide, @function
__asl_trace_xprop_write_wide:
.LFB264:
	.cfi_startproc
	jmp	__trace_xprop_stmt_write@PLT
	.cfi_endproc
.LFE264:
	.size	__asl_trace_xprop_write_wide, .-__asl_trace_xprop_write_wide
	.globl	__popcountdi2
	.p2align 4,,15
	.globl	__asl_popcount_wide
	.type	__asl_popcount_wide, @function
__asl_popcount_wide:
.LFB265:
	.cfi_startproc
	testl	%esi, %esi
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	jle	.L1554
	leal	-1(%rsi), %eax
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	leaq	8(%rdi,%rax,8), %r12
	.p2align 4,,10
	.p2align 3
.L1553:
	movq	(%rbx), %rdi
	addq	$8, %rbx
	call	__popcountdi2@PLT
	addl	%eax, %ebp
	cmpq	%r12, %rbx
	jne	.L1553
	movl	%ebp, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1554:
	.cfi_restore_state
	xorl	%ebp, %ebp
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE265:
	.size	__asl_popcount_wide, .-__asl_popcount_wide
	.p2align 4,,15
	.globl	__asl_wid_bin_bitxnor
	.type	__asl_wid_bin_bitxnor, @function
__asl_wid_bin_bitxnor:
.LFB266:
	.cfi_startproc
	leal	63(%rcx), %eax
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sarl	$6, %eax
	movslq	%eax, %r11
	salq	$3, %r11
	testl	%eax, %eax
	leaq	(%rdi,%r11), %rbx
	jle	.L1558
	subl	$1, %eax
	leaq	(%rsi,%r11), %rbp
	leaq	(%rdx,%r11), %r10
	leaq	8(,%rax,8), %r12
	xorl	%eax, %eax
	jmp	.L1561
	.p2align 4,,10
	.p2align 3
.L1564:
	movq	$0, (%rbx,%rax)
	movq	(%rsi,%rax), %r8
	xorq	(%rdx,%rax), %r8
	notq	%r8
	movq	%r8, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r12
	je	.L1558
.L1561:
	movq	0(%rbp,%rax), %r8
	orq	(%r10,%rax), %r8
	je	.L1564
	movq	%r8, (%rbx,%rax)
	movq	(%rsi,%rax), %r9
	xorq	(%rdx,%rax), %r9
	notq	%r9
	orq	%r9, %r8
	movq	%r8, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r12
	jne	.L1561
.L1558:
	movq	__masktab@GOTPCREL(%rip), %rax
	andl	$63, %ecx
	movq	(%rax,%rcx,8), %rax
	andq	%rax, -8(%rdi,%r11)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE266:
	.size	__asl_wid_bin_bitxnor, .-__asl_wid_bin_bitxnor
	.p2align 4,,15
	.globl	__asl_wid_bin_bitxnor_2state
	.type	__asl_wid_bin_bitxnor_2state, @function
__asl_wid_bin_bitxnor_2state:
.LFB267:
	.cfi_startproc
	leal	63(%rcx), %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	jle	.L1566
	leal	-1(%r9), %eax
	leaq	8(,%rax,8), %r10
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1567:
	movq	(%rsi,%rax), %r8
	xorq	(%rdx,%rax), %r8
	notq	%r8
	movq	%r8, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.L1567
.L1566:
	movq	__masktab@GOTPCREL(%rip), %rax
	movslq	%r9d, %r9
	andl	$63, %ecx
	movq	(%rax,%rcx,8), %rax
	andq	%rax, -8(%rdi,%r9,8)
	ret
	.cfi_endproc
.LFE267:
	.size	__asl_wid_bin_bitxnor_2state, .-__asl_wid_bin_bitxnor_2state
	.p2align 4,,15
	.globl	__asl_wid_bin_bitor
	.type	__asl_wid_bin_bitor, @function
__asl_wid_bin_bitor:
.LFB268:
	.cfi_startproc
	leal	63(%rcx), %eax
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	sarl	$6, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movslq	%eax, %r10
	salq	$3, %r10
	testl	%eax, %eax
	leaq	(%rdi,%r10), %r11
	jle	.L1570
	subl	$1, %eax
	leaq	(%rsi,%r10), %rbp
	leaq	(%rdx,%r10), %rbx
	leaq	8(,%rax,8), %r12
	xorl	%eax, %eax
	jmp	.L1573
	.p2align 4,,10
	.p2align 3
.L1576:
	movq	$0, (%r11,%rax)
	movq	(%rsi,%rax), %r8
	orq	(%rdx,%rax), %r8
	movq	%r8, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r12
	je	.L1570
.L1573:
	movq	0(%rbp,%rax), %r9
	movq	(%rbx,%rax), %r13
	movq	%r9, %r14
	orq	%r13, %r14
	je	.L1576
	movq	(%rdx,%rax), %r8
	movq	(%rsi,%rax), %r14
	andq	%r9, %r8
	orq	%r9, %r14
	xorq	%r13, %r9
	orq	%r13, %r8
	andq	%r14, %r8
	xorq	%r9, %r8
	movq	%r8, (%r11,%rax)
	movq	(%rdx,%rax), %r9
	orq	(%rsi,%rax), %r9
	orq	%r9, %r8
	movq	%r8, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r12
	jne	.L1573
.L1570:
	movq	__masktab@GOTPCREL(%rip), %rax
	subq	$8, %r10
	andl	$63, %ecx
	movq	(%rax,%rcx,8), %rax
	andq	%rax, (%rdi,%r10)
	andq	%rax, (%r11,%r10)
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE268:
	.size	__asl_wid_bin_bitor, .-__asl_wid_bin_bitor
	.p2align 4,,15
	.globl	__asl_wid_un_redor
	.type	__asl_wid_un_redor, @function
__asl_wid_un_redor:
.LFB269:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leal	63(%rsi), %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	sarl	$6, %r12d
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movslq	%r12d, %rax
	cmpl	$64, %esi
	leaq	(%rdi,%rax,8), %rbp
	jg	.L1578
	cmpq	$0, 0(%rbp)
	je	.L1590
.L1580:
	testl	%r12d, %r12d
	jle	.L1587
	movq	0(%rbp), %rax
	notq	%rax
	testq	%rax, (%rbx)
	jne	.L1588
	leal	-1(%r12), %eax
	movl	$8, %edx
	leaq	8(,%rax,8), %rcx
	jmp	.L1585
	.p2align 4,,10
	.p2align 3
.L1584:
	movq	0(%rbp,%rdx), %rax
	notq	%rax
	andq	(%rbx,%rdx), %rax
	addq	$8, %rdx
	testq	%rax, %rax
	jne	.L1588
.L1585:
	cmpq	%rcx, %rdx
	jne	.L1584
.L1587:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	$3, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1590:
	.cfi_restore_state
	cmpq	$0, (%rdi)
	setne	%al
.L1582:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movzbl	%al, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1578:
	.cfi_restore_state
	movq	%rbp, %rdi
	movl	%esi, %r13d
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	je	.L1580
	movl	%r13d, %esi
	movq	%rbx, %rdi
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	sete	%al
	jmp	.L1582
	.p2align 4,,10
	.p2align 3
.L1588:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE269:
	.size	__asl_wid_un_redor, .-__asl_wid_un_redor
	.p2align 4,,15
	.globl	__asl_wid_unbitnot
	.type	__asl_wid_unbitnot, @function
__asl_wid_unbitnot:
.LFB270:
	.cfi_startproc
	leal	63(%rdx), %eax
	sarl	$6, %eax
	movslq	%eax, %r10
	salq	$3, %r10
	testl	%eax, %eax
	jle	.L1592
	subl	$1, %eax
	leaq	(%rsi,%r10), %r8
	leaq	8(,%rax,8), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1593:
	movq	(%rsi,%rax), %rcx
	notq	%rcx
	orq	(%r8,%rax), %rcx
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r9
	jne	.L1593
.L1592:
	movq	__masktab@GOTPCREL(%rip), %rax
	andl	$63, %edx
	movq	(%rax,%rdx,8), %rax
	andq	%rax, -8(%rdi,%r10)
	ret
	.cfi_endproc
.LFE270:
	.size	__asl_wid_unbitnot, .-__asl_wid_unbitnot
	.p2align 4,,15
	.globl	__asl_wid_unbitnot_2state
	.type	__asl_wid_unbitnot_2state, @function
__asl_wid_unbitnot_2state:
.LFB271:
	.cfi_startproc
	leal	63(%rdx), %r8d
	sarl	$6, %r8d
	testl	%r8d, %r8d
	jle	.L1596
	leal	-1(%r8), %eax
	leaq	8(,%rax,8), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1597:
	movq	(%rsi,%rax), %rcx
	notq	%rcx
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r9
	jne	.L1597
.L1596:
	movq	__masktab@GOTPCREL(%rip), %rax
	movslq	%r8d, %r8
	andl	$63, %edx
	movq	(%rax,%rdx,8), %rax
	andq	%rax, -8(%rdi,%r8,8)
	ret
	.cfi_endproc
.LFE271:
	.size	__asl_wid_unbitnot_2state, .-__asl_wid_unbitnot_2state
	.p2align 4,,15
	.globl	__asl_wide_bitor
	.type	__asl_wide_bitor, @function
__asl_wide_bitor:
.LFB272:
	.cfi_startproc
	testl	%ecx, %ecx
	jle	.L1599
	leal	-1(%rcx), %eax
	leaq	8(,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1601:
	movq	(%rsi,%rax), %rcx
	orq	(%rdx,%rax), %rcx
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.L1601
.L1599:
	rep ret
	.cfi_endproc
.LFE272:
	.size	__asl_wide_bitor, .-__asl_wide_bitor
	.p2align 4,,15
	.globl	__asl_widomitxz_ne
	.type	__asl_widomitxz_ne, @function
__asl_widomitxz_ne:
.LFB273:
	.cfi_startproc
	movslq	%edx, %rcx
	salq	$3, %rcx
	subl	$1, %edx
	js	.L1607
	leaq	-8(%rcx), %rax
	movslq	%edx, %r9
	leaq	(%rcx,%rax), %r10
	movq	(%rdi,%r10), %r8
	orq	(%rsi,%r10), %r8
	movq	-8(%rdi,%rcx), %r10
	orq	%r8, %r10
	orq	-8(%rsi,%rcx), %r8
	cmpq	%r8, %r10
	jne	.L1609
	movl	%edx, %edx
	leaq	(%rdi,%rcx), %r10
	addq	%rsi, %rcx
	subq	%rdx, %r9
	salq	$3, %r9
	jmp	.L1605
	.p2align 4,,10
	.p2align 3
.L1606:
	movq	-8(%r10,%rax), %rdx
	orq	-8(%rcx,%rax), %rdx
	movq	-8(%rdi,%rax), %r8
	orq	%rdx, %r8
	orq	-8(%rsi,%rax), %rdx
	subq	$8, %rax
	cmpq	%rdx, %r8
	jne	.L1609
.L1605:
	cmpq	%r9, %rax
	jne	.L1606
.L1607:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1609:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE273:
	.size	__asl_widomitxz_ne, .-__asl_widomitxz_ne
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"real divide by zero results in NaN"
	.text
	.p2align 4,,15
	.globl	__asl_real_div0_warning
	.type	__asl_real_div0_warning, @function
__asl_real_div0_warning:
.LFB274:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC16(%rip), %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movzwl	4(%rdi), %eax
	movq	__sfnam_ind@GOTPCREL(%rip), %rbp
	movq	__slin_cnt@GOTPCREL(%rip), %rbx
	movl	0(%rbp), %r13d
	movl	%eax, 0(%rbp)
	movl	8(%rdi), %eax
	movl	$641, %edi
	movl	(%rbx), %r12d
	movl	%eax, (%rbx)
	xorl	%eax, %eax
	call	__sgfwarn@PLT
	movl	%r13d, 0(%rbp)
	movl	%r12d, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE274:
	.size	__asl_real_div0_warning, .-__asl_real_div0_warning
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"?: operator select condition x/z but values are real - 0.0 returned"
	.text
	.p2align 4,,15
	.globl	__asl_real_qcol_warning
	.type	__asl_real_qcol_warning, @function
__asl_real_qcol_warning:
.LFB275:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC17(%rip), %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movzwl	4(%rdi), %eax
	movq	__sfnam_ind@GOTPCREL(%rip), %rbp
	movq	__slin_cnt@GOTPCREL(%rip), %rbx
	movl	0(%rbp), %r13d
	movl	%eax, 0(%rbp)
	movl	8(%rdi), %eax
	movl	$730, %edi
	movl	(%rbx), %r12d
	movl	%eax, (%rbx)
	xorl	%eax, %eax
	call	__sgferr@PLT
	movl	%r13d, 0(%rbp)
	movl	%r12d, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE275:
	.size	__asl_real_qcol_warning, .-__asl_real_qcol_warning
	.p2align 4,,15
	.globl	__asl_sgn_lpow_2state
	.type	__asl_sgn_lpow_2state, @function
__asl_sgn_lpow_2state:
.LFB276:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leal	63(%rcx), %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ecx, %ebx
	sarl	$6, %ebp
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	leal	0(,%rbp,8), %r13d
	movq	%rsi, 24(%rsp)
	movq	%rdx, 8(%rsp)
	xorl	%esi, %esi
	movq	%rdi, 16(%rsp)
	movslq	%r13d, %r13
	movq	%r13, %rdx
	call	memset@PLT
	movq	$1, (%r15)
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	__is_lnegative@PLT
	testl	%eax, %eax
	movl	%eax, 36(%rsp)
	je	.L1615
	movq	__xspi@GOTPCREL(%rip), %r15
	movq	__maxxnest@GOTPCREL(%rip), %rcx
	movl	(%r15), %eax
	addl	$1, %eax
	cmpl	(%rcx), %eax
	movl	%eax, (%r15)
	jge	.L1672
.L1616:
	movq	__xstk@GOTPCREL(%rip), %r14
	cltq
	movq	(%r14), %rdx
	movq	(%rdx,%rax,8), %rax
	cmpl	%ebp, 4(%rax)
	jl	.L1673
.L1617:
	movq	8(%rax), %r12
	movq	24(%rsp), %rsi
	movl	%ebx, (%rax)
	movq	%rcx, 40(%rsp)
	leaq	(%r12,%r13), %rdx
	movq	%r12, %rdi
	movq	%rdx, 16(%rax)
	movl	%ebx, %edx
	call	__cp_lnegate@PLT
	movq	8(%rsp), %rdi
	movl	%ebx, %esi
	call	__is_lnegative@PLT
	testl	%eax, %eax
	movq	40(%rsp), %rcx
	je	.L1674
	movl	(%r15), %eax
	addl	$1, %eax
	cmpl	(%rcx), %eax
	movl	%eax, (%r15)
	jge	.L1675
.L1619:
	movq	(%r14), %rdx
	cltq
	movq	(%rdx,%rax,8), %r14
	cmpl	%ebp, 4(%r14)
	jl	.L1676
.L1620:
	movq	8(%r14), %rcx
	movq	8(%rsp), %rsi
	movl	%ebx, %edx
	movl	%ebx, (%r14)
	leaq	(%rcx,%r13), %rax
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%r14)
	call	__cp_lnegate@PLT
	movl	36(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L1621
	cmpq	$1, (%r12)
	je	.L1677
.L1622:
	movq	16(%rsp), %rax
	movq	$0, (%rax)
.L1671:
	subl	$2, (%r15)
	xorl	%edx, %edx
.L1614:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%edx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1615:
	.cfi_restore_state
	movq	8(%rsp), %rdi
	movl	%ebx, %esi
	call	__is_lnegative@PLT
	testl	%eax, %eax
	jne	.L1644
	movq	__xspi@GOTPCREL(%rip), %r15
	movq	__maxxnest@GOTPCREL(%rip), %rcx
	movl	$0, 40(%rsp)
	movq	__xstk@GOTPCREL(%rip), %r14
	movl	(%r15), %eax
	addl	$1, %eax
	cmpl	(%rcx), %eax
	movl	%eax, (%r15)
	jge	.L1678
.L1632:
	movq	(%r14), %rsi
	movslq	%eax, %rdx
	movq	(%rsi,%rdx,8), %r12
	cmpl	%ebp, 4(%r12)
	jl	.L1679
.L1633:
	movq	8(%r12), %rdx
	addl	$1, %eax
	movl	%ebx, (%r12)
	movl	%eax, (%r15)
	addq	%r13, %rdx
	cmpl	(%rcx), %eax
	movq	%rdx, 16(%r12)
	jge	.L1680
.L1634:
	movq	(%r14), %rsi
	movslq	%eax, %rdx
	movq	(%rsi,%rdx,8), %rdx
	cmpl	%ebp, 4(%rdx)
	jl	.L1681
.L1635:
	movq	8(%rdx), %rsi
	addl	$1, %eax
	movl	%ebx, (%rdx)
	movl	%eax, (%r15)
	addq	%r13, %rsi
	cmpl	(%rcx), %eax
	movq	%rsi, 16(%rdx)
	jge	.L1682
.L1636:
	movq	(%r14), %rcx
	cltq
	movq	(%rcx,%rax,8), %r14
	cmpl	%ebp, 4(%r14)
	jl	.L1683
.L1637:
	movq	8(%r14), %rbp
	movl	%ebx, (%r14)
	movq	8(%rsp), %rsi
	movq	8(%r12), %r12
	leaq	0(%rbp,%r13), %rax
	movq	%rax, 16(%r14)
	movq	8(%rdx), %r14
	movq	%r13, %rdx
	movq	%r14, %rdi
	call	memcpy@PLT
	movq	24(%rsp), %rsi
	movq	%r13, %rdx
	movq	%rbp, %rdi
	call	memcpy@PLT
	jmp	.L1641
	.p2align 4,,10
	.p2align 3
.L1638:
	movq	%rbp, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movl	%ebx, %ecx
	call	__lmult@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	memcpy@PLT
.L1641:
	movl	(%r14), %eax
	movl	%ebx, %edx
	movl	$1, %esi
	movq	%r14, %rdi
	andl	$1, %eax
	movl	%eax, 8(%rsp)
	call	__mwrshift@PLT
	movl	8(%rsp), %edx
	testl	%edx, %edx
	je	.L1638
	movq	16(%rsp), %rsi
	movl	%ebx, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rdi
	call	__lmult@PLT
	movq	16(%rsp), %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	je	.L1638
	movl	40(%rsp), %eax
	testl	%eax, %eax
	jne	.L1684
.L1639:
	cmpl	$1, 36(%rsp)
	movl	(%r15), %eax
	adcl	$-1, %eax
	xorl	%edx, %edx
	subl	$3, %eax
	movl	%eax, (%r15)
	jmp	.L1614
	.p2align 4,,10
	.p2align 3
.L1674:
	cmpq	$1, (%r12)
	je	.L1685
.L1628:
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 24(%rsp)
	movl	24(%rsp), %eax
	movq	%r12, 24(%rsp)
	andl	$1, %eax
	movl	%eax, 40(%rsp)
	movl	(%r15), %eax
	addl	$1, %eax
	cmpl	(%rcx), %eax
	movl	%eax, (%r15)
	jl	.L1632
.L1678:
	movq	%rcx, 48(%rsp)
	call	__grow_xstk@PLT
	movl	(%r15), %eax
	movq	48(%rsp), %rcx
	jmp	.L1632
	.p2align 4,,10
	.p2align 3
.L1644:
	movq	__xspi@GOTPCREL(%rip), %r15
	movq	__maxxnest@GOTPCREL(%rip), %rcx
	movq	24(%rsp), %r12
	movq	__xstk@GOTPCREL(%rip), %r14
	movl	(%r15), %eax
	addl	$1, %eax
	cmpl	(%rcx), %eax
	movl	%eax, (%r15)
	jl	.L1619
	jmp	.L1675
	.p2align 4,,10
	.p2align 3
.L1621:
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	__wide_vval_is0@PLT
	movl	%eax, %edx
	movq	16(%rsp), %rax
	movq	$0, (%rax)
	subl	$1, (%r15)
	testl	%edx, %edx
	je	.L1614
	movl	$1, %edx
	jmp	.L1614
	.p2align 4,,10
	.p2align 3
.L1672:
	movq	%rcx, 40(%rsp)
	call	__grow_xstk@PLT
	movl	(%r15), %eax
	movq	40(%rsp), %rcx
	jmp	.L1616
	.p2align 4,,10
	.p2align 3
.L1673:
	movq	%rax, %rdi
	movl	%ebp, %esi
	movq	%rcx, 48(%rsp)
	movq	%rax, 40(%rsp)
	call	__chg_xstk_width@PLT
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	jmp	.L1617
	.p2align 4,,10
	.p2align 3
.L1675:
	call	__grow_xstk@PLT
	movl	(%r15), %eax
	movq	(%r14), %rdx
	cltq
	movq	(%rdx,%rax,8), %r14
	cmpl	%ebp, 4(%r14)
	jge	.L1620
.L1676:
	movl	%ebp, %esi
	movq	%r14, %rdi
	call	__chg_xstk_width@PLT
	jmp	.L1620
	.p2align 4,,10
	.p2align 3
.L1685:
	leal	-64(%rbx), %esi
	leaq	8(%r12), %rdi
	movq	%rcx, 24(%rsp)
	movl	%eax, 40(%rsp)
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	movq	24(%rsp), %rcx
	je	.L1628
	movq	8(%rsp), %rax
	movl	40(%rsp), %edx
	testb	$1, (%rax)
	je	.L1629
	testl	%ebp, %ebp
	jle	.L1630
	movq	16(%rsp), %rdi
	leal	-1(%rbp), %ecx
	movq	%rdi, %rax
	leaq	8(%rdi,%rcx,8), %rsi
	movq	$-1, %rcx
	.p2align 4,,10
	.p2align 3
.L1631:
	movq	%rcx, (%rax)
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.L1631
.L1630:
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx
	andl	$63, %ebx
	movq	(%rax,%rbx,8), %rax
	andq	%rax, -8(%rcx,%r13)
.L1629:
	subl	$1, (%r15)
	jmp	.L1614
	.p2align 4,,10
	.p2align 3
.L1684:
	movq	16(%rsp), %rdi
	movl	%ebx, %esi
	call	__inplace_lnegate@PLT
	jmp	.L1639
	.p2align 4,,10
	.p2align 3
.L1683:
	movl	%ebp, %esi
	movq	%r14, %rdi
	movq	%rdx, 48(%rsp)
	call	__chg_xstk_width@PLT
	movq	48(%rsp), %rdx
	jmp	.L1637
	.p2align 4,,10
	.p2align 3
.L1682:
	movq	%rdx, 48(%rsp)
	call	__grow_xstk@PLT
	movl	(%r15), %eax
	movq	48(%rsp), %rdx
	jmp	.L1636
	.p2align 4,,10
	.p2align 3
.L1681:
	movq	%rdx, %rdi
	movl	%ebp, %esi
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	call	__chg_xstk_width@PLT
	movl	(%r15), %eax
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	jmp	.L1635
	.p2align 4,,10
	.p2align 3
.L1680:
	movq	%rcx, 48(%rsp)
	call	__grow_xstk@PLT
	movl	(%r15), %eax
	movq	48(%rsp), %rcx
	jmp	.L1634
	.p2align 4,,10
	.p2align 3
.L1679:
	movl	%ebp, %esi
	movq	%r12, %rdi
	movq	%rcx, 48(%rsp)
	call	__chg_xstk_width@PLT
	movl	(%r15), %eax
	movq	48(%rsp), %rcx
	jmp	.L1633
	.p2align 4,,10
	.p2align 3
.L1677:
	leal	-64(%rbx), %esi
	leaq	8(%r12), %rdi
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	je	.L1622
	movq	8(%rsp), %rcx
	testb	$1, (%rcx)
	je	.L1671
	testl	%ebp, %ebp
	jle	.L1624
	movq	16(%rsp), %rcx
	leal	-1(%rbp), %edx
	movq	%rcx, %rax
	leaq	8(%rcx,%rdx,8), %rcx
	movq	$-1, %rdx
	.p2align 4,,10
	.p2align 3
.L1625:
	movq	%rdx, (%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L1625
.L1624:
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx
	andl	$63, %ebx
	movq	(%rax,%rbx,8), %rax
	andq	%rax, -8(%rcx,%r13)
	jmp	.L1671
	.cfi_endproc
.LFE276:
	.size	__asl_sgn_lpow_2state, .-__asl_sgn_lpow_2state
	.p2align 4,,15
	.globl	__asl_sgnmask
	.type	__asl_sgnmask, @function
__asl_sgnmask:
.LFB277:
	.cfi_startproc
	subl	%esi, %edx
	movl	%edx, %r8d
	sarl	$6, %r8d
	andl	$63, %edx
	movslq	%r8d, %r8
	leaq	0(,%r8,8), %r9
	jne	.L1687
	leaq	63(%rsi), %rdx
	shrq	$6, %rdx
	testq	%rdx, %rdx
	je	.L1689
	addq	%rdx, %r8
	leaq	(%rdi,%r9), %rax
	movq	$-1, %rdx
	leaq	0(,%r8,8), %r9
	leaq	(%rdi,%r9), %rcx
	.p2align 4,,10
	.p2align 3
.L1693:
	movq	%rdx, (%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L1693
.L1689:
	movq	__masktab@GOTPCREL(%rip), %rax
	andl	$63, %esi
	movq	(%rax,%rsi,8), %rax
	andq	%rax, -8(%rdi,%r9)
	ret
	.p2align 4,,10
	.p2align 3
.L1687:
	movl	$64, %eax
	movq	__masktab@GOTPCREL(%rip), %r11
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	%edx, %eax
	movl	%edx, %ecx
	addl	%esi, %edx
	cltq
	movq	(%r11,%rax,8), %rbx
	salq	%cl, %rbx
	orq	%rbx, (%rdi,%r9)
	cmpl	$64, %edx
	je	.L1686
	subq	%rax, %rsi
	leaq	1(%r8), %rbx
	leaq	63(%rsi), %r10
	shrq	$6, %r10
	testq	%r10, %r10
	je	.L1691
	addq	%r10, %r8
	leaq	8(%rdi,%r9), %rax
	movq	$-1, %rdx
	leaq	8(%rdi,%r8,8), %rcx
	.p2align 4,,10
	.p2align 3
.L1692:
	movq	%rdx, (%rax)
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L1692
	addq	%r10, %rbx
.L1691:
	andl	$63, %esi
	movq	(%r11,%rsi,8), %rax
	andq	%rax, -8(%rdi,%rbx,8)
.L1686:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE277:
	.size	__asl_sgnmask, .-__asl_sgnmask
	.p2align 4,,15
	.globl	__asl_mdprt_bsel
	.type	__asl_mdprt_bsel, @function
__asl_mdprt_bsel:
.LFB278:
	.cfi_startproc
	movq	16(%rdi), %rax
	movq	%rdx, %r10
	shrq	%rdx
	andl	$1, %r10d
	andl	$1, %edx
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %r8d
	movq	24(%rdi), %rax
	movq	$-2, %rdi
	movslq	24(%rax), %rcx
	movq	__contab@GOTPCREL(%rip), %rax
	addl	$63, %r8d
	sarl	$6, %r8d
	movslq	%r8d, %r8
	movq	(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	movl	%eax, %ecx
	sarl	$6, %eax
	cltq
	andl	$63, %ecx
	salq	$3, %rax
	rolq	%cl, %rdi
	salq	%cl, %r10
	leaq	(%rsi,%rax), %r11
	leaq	(%rax,%r8,8), %rax
	salq	%cl, %rdx
	movq	(%r11), %r9
	addq	%rax, %rsi
	andq	%rdi, %r9
	orq	%r10, %r9
	movq	%r9, (%r11)
	andq	(%rsi), %rdi
	orq	%rdi, %rdx
	movq	%rdx, (%rsi)
	ret
	.cfi_endproc
.LFE278:
	.size	__asl_mdprt_bsel, .-__asl_mdprt_bsel
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_1w
	.type	__asl_mdprt_bsel_1w, @function
__asl_mdprt_bsel_1w:
.LFB279:
	.cfi_startproc
	movl	%edi, %ecx
	movq	(%rsi), %rdi
	movq	$-2, %rax
	rolq	%cl, %rax
	movq	%rdx, %r8
	shrq	%rdx
	andl	$1, %r8d
	andl	$1, %edx
	andq	%rax, %rdi
	andq	8(%rsi), %rax
	salq	%cl, %r8
	salq	%cl, %rdx
	orq	%r8, %rdi
	movq	%rdi, (%rsi)
	orq	%rax, %rdx
	movq	%rdx, 8(%rsi)
	ret
	.cfi_endproc
.LFE279:
	.size	__asl_mdprt_bsel_1w, .-__asl_mdprt_bsel_1w
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg
	.type	__asl_mdprt_bsel_nchg, @function
__asl_mdprt_bsel_nchg:
.LFB280:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rcx, %r10
	movq	24(%rdi), %rax
	movq	16(%rdi), %rdi
	movq	%rdx, %r9
	movq	$-2, %r8
	andl	$1, %r9d
	shrq	%rdx
	andl	$1, %edx
	movslq	24(%rax), %rcx
	movq	__contab@GOTPCREL(%rip), %rax
	movq	16(%rdi), %rdi
	movq	(%rax), %rax
	movq	16(%rdi), %rdi
	movq	(%rax,%rcx,8), %rax
	movl	8(%rdi), %edi
	movl	%eax, %ecx
	sarl	$6, %eax
	cltq
	addl	$63, %edi
	andl	$63, %ecx
	salq	$3, %rax
	sarl	$6, %edi
	rolq	%cl, %r8
	leaq	(%rsi,%rax), %rbx
	movslq	%edi, %rdi
	salq	%cl, %r9
	leaq	(%rax,%rdi,8), %rax
	salq	%cl, %rdx
	movq	(%rbx), %r11
	addq	%rax, %rsi
	movq	%r11, %rbp
	andq	%r8, %rbp
	orq	%rbp, %r9
	cmpq	%r9, %r11
	je	.L1708
	movq	%r9, (%rbx)
	andq	(%rsi), %r8
	orq	%r8, %rdx
.L1711:
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	%rdx, (%rsi)
	movq	$1, (%r10)
	movq	$0, 48(%r10)
	movq	(%rax), %rdx
	movq	%r10, 48(%rdx)
	movq	%r10, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1708:
	.cfi_restore_state
	movq	(%rsi), %rax
	andq	%rax, %r8
	orq	%r8, %rdx
	cmpq	%rdx, %rax
	jne	.L1711
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE280:
	.size	__asl_mdprt_bsel_nchg, .-__asl_mdprt_bsel_nchg
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_1w
	.type	__asl_mdprt_bsel_nchg_1w, @function
__asl_mdprt_bsel_nchg_1w:
.LFB281:
	.cfi_startproc
	movq	(%rsi), %r10
	movq	%rdx, %r8
	movq	%rcx, %r9
	movq	$-2, %rax
	movl	%edi, %ecx
	andl	$1, %r8d
	rolq	%cl, %rax
	salq	%cl, %r8
	shrq	%rdx
	movq	%r10, %r11
	andl	$1, %edx
	andq	%rax, %r11
	salq	%cl, %rdx
	orq	%r11, %r8
	movq	8(%rsi), %r11
	andq	%r11, %rax
	orq	%rax, %rdx
	cmpq	%r8, %r10
	je	.L1714
	movq	%r8, (%rsi)
.L1716:
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	%rdx, 8(%rsi)
	movq	$1, (%r9)
	movq	$0, 48(%r9)
	movq	(%rax), %rdx
	movq	%r9, 48(%rdx)
	movq	%r9, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L1714:
	cmpq	%r11, %rdx
	jne	.L1716
	rep ret
	.cfi_endproc
.LFE281:
	.size	__asl_mdprt_bsel_nchg_1w, .-__asl_mdprt_bsel_nchg_1w
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_dmpv
	.type	__asl_mdprt_bsel_dmpv, @function
__asl_mdprt_bsel_dmpv:
.LFB282:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	16(%rdi), %rax
	movq	%rdx, %r10
	movq	$-2, %r9
	andl	$1, %r10d
	shrq	%rdx
	andl	$1, %edx
	movq	16(%rax), %rax
	movq	16(%rax), %rbx
	movq	24(%rdi), %rax
	movslq	24(%rax), %rcx
	movq	__contab@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	movl	%eax, %ecx
	sarl	$6, %eax
	cltq
	andl	$63, %ecx
	salq	$3, %rax
	rolq	%cl, %r9
	salq	%cl, %r10
	leaq	(%rsi,%rax), %rdi
	salq	%cl, %rdx
	movq	(%rdi), %r11
	movq	%r11, %r8
	andq	%r9, %r8
	orq	%r8, %r10
	movl	8(%rbx), %r8d
	addl	$63, %r8d
	sarl	$6, %r8d
	movslq	%r8d, %r8
	leaq	(%rax,%r8,8), %rax
	addq	%rax, %rsi
	cmpq	%r10, %r11
	jne	.L1722
	movq	(%rsi), %rax
	andq	%rax, %r9
	orq	%r9, %rdx
	cmpq	%rdx, %rax
	je	.L1718
	movq	%rdx, (%rsi)
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.p2align 4,,10
	.p2align 3
.L1718:
	.cfi_restore_state
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1722:
	.cfi_restore_state
	movq	%r10, (%rdi)
	andq	(%rsi), %r9
	movq	%rbx, %rdi
	orq	%r9, %rdx
	movq	%rdx, (%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.cfi_endproc
.LFE282:
	.size	__asl_mdprt_bsel_dmpv, .-__asl_mdprt_bsel_dmpv
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_1w_dmpv
	.type	__asl_mdprt_bsel_1w_dmpv, @function
__asl_mdprt_bsel_1w_dmpv:
.LFB283:
	.cfi_startproc
	movq	(%rsi), %r9
	movl	%edi, %r10d
	movq	%rdx, %r8
	movq	%rcx, %rdi
	movq	$-2, %rax
	movl	%r10d, %ecx
	rolq	%cl, %rax
	andl	$1, %r8d
	shrq	%rdx
	movq	%r9, %r11
	salq	%cl, %r8
	andl	$1, %edx
	andq	%rax, %r11
	salq	%cl, %rdx
	orq	%r11, %r8
	movq	8(%rsi), %r11
	andq	%r11, %rax
	orq	%rax, %rdx
	cmpq	%r8, %r9
	jne	.L1726
	cmpq	%rdx, %r11
	je	.L1723
	movq	%rdx, 8(%rsi)
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.p2align 4,,10
	.p2align 3
.L1723:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1726:
	movq	%r8, (%rsi)
	movq	%rdx, 8(%rsi)
	jmp	asl_loc_add_dmpv_chglst_el_mdprt
	.cfi_endproc
.LFE283:
	.size	__asl_mdprt_bsel_1w_dmpv, .-__asl_mdprt_bsel_1w_dmpv
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_dmpv
	.type	__asl_mdprt_bsel_nchg_dmpv, @function
__asl_mdprt_bsel_nchg_dmpv:
.LFB284:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rcx, %rbx
	movq	%rdx, %r10
	movq	$-2, %r9
	shrq	%rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rax
	andl	$1, %r10d
	andl	$1, %edx
	movq	16(%rax), %rax
	movq	16(%rax), %rbp
	movq	24(%rdi), %rax
	movslq	24(%rax), %rcx
	movq	__contab@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	movl	%eax, %ecx
	sarl	$6, %eax
	cltq
	andl	$63, %ecx
	salq	$3, %rax
	rolq	%cl, %r9
	salq	%cl, %r10
	leaq	(%rsi,%rax), %rdi
	salq	%cl, %rdx
	movq	(%rdi), %r11
	movq	%r11, %r8
	andq	%r9, %r8
	orq	%r8, %r10
	movl	8(%rbp), %r8d
	addl	$63, %r8d
	sarl	$6, %r8d
	movslq	%r8d, %r8
	leaq	(%rax,%r8,8), %rax
	addq	%rax, %rsi
	cmpq	%r10, %r11
	jne	.L1732
	movq	(%rsi), %rax
	andq	%rax, %r9
	orq	%r9, %rdx
	cmpq	%rdx, %rax
	je	.L1727
.L1731:
	movq	%rdx, (%rsi)
	movq	%rbp, %rdi
	call	asl_loc_add_dmpv_chglst_el_mdprt
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, (%rbx)
	movq	$0, 48(%rbx)
	movq	(%rax), %rdx
	movq	%rbx, 48(%rdx)
	movq	%rbx, (%rax)
.L1727:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1732:
	.cfi_restore_state
	movq	%r10, (%rdi)
	andq	(%rsi), %r9
	orq	%r9, %rdx
	jmp	.L1731
	.cfi_endproc
.LFE284:
	.size	__asl_mdprt_bsel_nchg_dmpv, .-__asl_mdprt_bsel_nchg_dmpv
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_1w_dmpv
	.type	__asl_mdprt_bsel_nchg_1w_dmpv, @function
__asl_mdprt_bsel_nchg_1w_dmpv:
.LFB285:
	.cfi_startproc
	movq	(%rsi), %r11
	movq	%rdx, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	$-2, %rax
	movq	%rcx, %rbx
	movl	%edi, %ecx
	rolq	%cl, %rax
	andl	$1, %r9d
	shrq	%rdx
	movq	%r11, %rdi
	salq	%cl, %r9
	andl	$1, %edx
	andq	%rax, %rdi
	salq	%cl, %rdx
	orq	%rdi, %r9
	movq	8(%rsi), %rdi
	andq	%rdi, %rax
	orq	%rax, %rdx
	cmpq	%r9, %r11
	jne	.L1738
	cmpq	%rdi, %rdx
	je	.L1733
.L1737:
	movq	%rdx, 8(%rsi)
	movq	%r8, %rdi
	call	asl_loc_add_dmpv_chglst_el_mdprt
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, (%rbx)
	movq	$0, 48(%rbx)
	movq	(%rax), %rdx
	movq	%rbx, 48(%rdx)
	movq	%rbx, (%rax)
.L1733:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1738:
	.cfi_restore_state
	movq	%r9, (%rsi)
	jmp	.L1737
	.cfi_endproc
.LFE285:
	.size	__asl_mdprt_bsel_nchg_1w_dmpv, .-__asl_mdprt_bsel_nchg_1w_dmpv
	.p2align 4,,15
	.globl	__asl_setup_task_thd
	.type	__asl_setup_task_thd, @function
__asl_setup_task_thd:
.LFB290:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	__cur_thd@GOTPCREL(%rip), %rbx
	movq	16(%rdi), %rax
	movq	(%rbx), %rdx
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	movl	(%rdx), %eax
	movq	%rsi, 24(%rdx)
	andl	$-1073741761, %eax
	orl	$64, %eax
	movl	%eax, (%rdx)
	call	__setup_tsk_thread@PLT
	movq	(%rbx), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 32(%rax)
	movq	%rax, 56(%rdx)
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 104(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE290:
	.size	__asl_setup_task_thd, .-__asl_setup_task_thd
	.p2align 4,,15
	.globl	__asl_setup_task_thd_auto
	.type	__asl_setup_task_thd_auto, @function
__asl_setup_task_thd_auto:
.LFB291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdx, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rax
	movq	__cur_thd@GOTPCREL(%rip), %rbx
	movq	16(%rax), %rax
	movq	(%rbx), %rcx
	movq	16(%rax), %rdi
	movl	(%rcx), %eax
	movq	%rsi, 24(%rcx)
	andl	$-1073741761, %eax
	orl	$64, %eax
	movl	%eax, (%rcx)
	call	__setup_tsk_thread@PLT
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	(%rbx), %rcx
	movq	%rax, (%rbx)
	movq	(%rdx), %rdx
	movq	%rcx, 32(%rax)
	movq	%rax, 56(%rcx)
	movq	%rbp, 112(%rax)
	movq	%rdx, 104(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE291:
	.size	__asl_setup_task_thd_auto, .-__asl_setup_task_thd_auto
	.p2align 4,,15
	.globl	__asl_tskdone_cleanup_ret
	.type	__asl_tskdone_cleanup_ret, @function
__asl_tskdone_cleanup_ret:
.LFB292:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	__cur_thd@GOTPCREL(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	0(%rbp), %rdx
	movq	32(%rdx), %rbx
	movl	12(%rdx), %r12d
	movq	%rbx, %rdi
	call	__thrd_done_cleanup@PLT
	movq	$0, 56(%rbx)
	movq	%rbx, 0(%rbp)
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE292:
	.size	__asl_tskdone_cleanup_ret, .-__asl_tskdone_cleanup_ret
	.p2align 4,,15
	.globl	__asl_tskdone_cleanup_ret_auto
	.type	__asl_tskdone_cleanup_ret_auto, @function
__asl_tskdone_cleanup_ret_auto:
.LFB293:
	.cfi_startproc
	movq	__cur_thd@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	ret
	.cfi_endproc
.LFE293:
	.size	__asl_tskdone_cleanup_ret_auto, .-__asl_tskdone_cleanup_ret_auto
	.p2align 4,,15
	.globl	__asl_thread_auto_cleanup
	.type	__asl_thread_auto_cleanup, @function
__asl_thread_auto_cleanup:
.LFB294:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	__cur_thd@GOTPCREL(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%r12), %rax
	movq	32(%rax), %rbx
	movq	112(%rax), %rbp
	movq	%rbx, %rdi
	call	__thrd_done_cleanup_auto@PLT
	movq	__idp@GOTPCREL(%rip), %rax
	movq	$0, 56(%rbx)
	movq	%rbx, (%r12)
	movq	%rbp, (%rax)
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE294:
	.size	__asl_thread_auto_cleanup, .-__asl_thread_auto_cleanup
	.p2align 4,,15
	.globl	__asl_wide_cmp
	.type	__asl_wide_cmp, @function
__asl_wide_cmp:
.LFB295:
	.cfi_startproc
	testl	%edx, %edx
	js	.L1761
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rax
	negq	%rdx
	salq	$3, %rdx
	addq	%rax, %rdi
	addq	%rax, %rsi
	xorl	%eax, %eax
	movq	(%rdi), %r9
	movq	(%rsi), %r8
	cmpq	%r8, %r9
	je	.L1752
	jmp	.L1750
	.p2align 4,,10
	.p2align 3
.L1753:
	movq	-8(%rdi,%rax), %r9
	subq	$8, %rax
	movq	(%rsi,%rax), %r8
	cmpq	%r8, %r9
	jne	.L1750
.L1752:
	cmpq	%rdx, %rax
	jne	.L1753
.L1761:
	xorl	%eax, %eax
.L1749:
	subl	$3, %ecx
	cmpl	$6, %ecx
	ja	.L1763
	leaq	.L1756(%rip), %rsi
	movslq	(%rsi,%rcx,4), %rdx
	addq	%rsi, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L1756:
	.long	.L1755-.L1756
	.long	.L1763-.L1756
	.long	.L1763-.L1756
	.long	.L1766-.L1756
	.long	.L1758-.L1756
	.long	.L1759-.L1756
	.long	.L1760-.L1756
	.text
	.p2align 4,,10
	.p2align 3
.L1760:
	notl	%eax
.L1766:
	shrl	$31, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1750:
	cmpq	%r8, %r9
	sbbl	%eax, %eax
	orl	$1, %eax
	jmp	.L1749
	.p2align 4,,10
	.p2align 3
.L1755:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1758:
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1759:
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1763:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE295:
	.size	__asl_wide_cmp, .-__asl_wide_cmp
	.p2align 4,,15
	.globl	__asl_sgn_wide_cmp
	.type	__asl_sgn_wide_cmp, @function
__asl_sgn_wide_cmp:
.LFB296:
	.cfi_startproc
	leal	63(%rdx), %r8d
	movl	%ecx, %r9d
	leal	-1(%rdx), %ecx
	sarl	$6, %r8d
	andl	$63, %ecx
	movslq	%r8d, %rax
	salq	$3, %rax
	movq	-8(%rsi,%rax), %rdx
	movq	-8(%rdi,%rax), %rax
	shrq	%cl, %rdx
	andl	$1, %edx
	btq	%rcx, %rax
	jnc	.L1768
	testq	%rdx, %rdx
	movl	$-1, %eax
	jne	.L1770
.L1769:
	leal	-3(%r9), %ecx
	cmpl	$6, %ecx
	ja	.L1786
	leaq	.L1777(%rip), %rsi
	movslq	(%rsi,%rcx,4), %rdx
	addq	%rsi, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L1777:
	.long	.L1776-.L1777
	.long	.L1786-.L1777
	.long	.L1786-.L1777
	.long	.L1790-.L1777
	.long	.L1779-.L1777
	.long	.L1780-.L1777
	.long	.L1781-.L1777
	.text
	.p2align 4,,10
	.p2align 3
.L1768:
	testq	%rdx, %rdx
	movl	$1, %eax
	jne	.L1769
.L1770:
	subl	$1, %r8d
	js	.L1784
	movslq	%r8d, %r10
	movq	(%rdi,%r10,8), %rcx
	movq	(%rsi,%r10,8), %rdx
	leaq	0(,%r10,8), %rax
	cmpq	%rdx, %rcx
	jne	.L1771
	movl	%r8d, %r8d
	subq	%r8, %r10
	leaq	0(,%r10,8), %r8
	jmp	.L1773
	.p2align 4,,10
	.p2align 3
.L1774:
	movq	-8(%rdi,%rax), %rcx
	subq	$8, %rax
	movq	(%rsi,%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L1771
.L1773:
	cmpq	%r8, %rax
	jne	.L1774
.L1784:
	xorl	%eax, %eax
	jmp	.L1769
	.p2align 4,,10
	.p2align 3
.L1781:
	notl	%eax
.L1790:
	shrl	$31, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1771:
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	setge	%al
	leal	-1(%rax,%rax), %eax
	jmp	.L1769
	.p2align 4,,10
	.p2align 3
.L1776:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1779:
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1780:
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1786:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE296:
	.size	__asl_sgn_wide_cmp, .-__asl_sgn_wide_cmp
	.p2align 4,,15
	.globl	__asl_wide_word_cmp
	.type	__asl_wide_word_cmp, @function
__asl_wide_word_cmp:
.LFB297:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	%rsi, (%rdi)
	je	.L1792
	sbbl	%eax, %eax
	orl	$1, %eax
.L1792:
	testl	%edx, %edx
	jle	.L1793
	movslq	%edx, %rsi
	cmpq	$0, (%rdi,%rsi,8)
	leaq	0(,%rsi,8), %r8
	jne	.L1805
	leaq	-8(%rdi,%r8), %rsi
	subl	$1, %edx
	salq	$3, %rdx
	movq	%rsi, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
	jmp	.L1794
	.p2align 4,,10
	.p2align 3
.L1795:
	subq	$8, %rsi
	cmpq	$0, 8(%rsi)
	jne	.L1805
.L1794:
	cmpq	%rdx, %rsi
	jne	.L1795
.L1793:
	cmpl	$7, %ecx
	je	.L1797
.L1809:
	jle	.L1808
	cmpl	$8, %ecx
	je	.L1800
	notl	%eax
	shrl	$31, %eax
	cmpl	$9, %ecx
	jne	.L1806
.L1791:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1800:
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1808:
	shrl	$31, %eax
	cmpl	$6, %ecx
	je	.L1791
.L1806:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1805:
	cmpl	$7, %ecx
	movl	$1, %eax
	jne	.L1809
.L1797:
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE297:
	.size	__asl_wide_word_cmp, .-__asl_wide_word_cmp
	.p2align 4,,15
	.globl	__asl_wide_sgnword_cmp
	.type	__asl_wide_sgnword_cmp, @function
__asl_wide_sgnword_cmp:
.LFB298:
	.cfi_startproc
	leal	63(%rdx), %r8d
	movl	%ecx, %r9d
	leal	-1(%rdx), %ecx
	sarl	$6, %r8d
	movslq	%r8d, %rax
	movq	-8(%rsi,%rax,8), %rax
	shrq	%cl, %rax
	andl	$1, %eax
	testl	%edi, %edi
	movq	%rax, %rdx
	js	.L1842
	testq	%rdx, %rdx
	movl	$1, %eax
	je	.L1843
.L1812:
	cmpl	$7, %r9d
	je	.L1820
	jle	.L1844
	cmpl	$8, %r9d
	je	.L1823
	notl	%eax
	shrl	$31, %eax
	cmpl	$9, %r9d
	jne	.L1835
.L1810:
	rep ret
	.p2align 4,,10
	.p2align 3
.L1843:
	cmpl	(%rsi), %edi
	je	.L1845
	setge	%al
	movzbl	%al, %eax
	leal	-1(%rax,%rax), %eax
.L1826:
	leal	-1(%r8), %edx
	testl	%edx, %edx
	jle	.L1812
	movslq	%edx, %rdx
	cmpq	$0, (%rsi,%rdx,8)
	leaq	0(,%rdx,8), %rcx
	jne	.L1832
	leaq	-8(%rsi,%rcx), %rdx
	leal	-2(%r8), %esi
	movq	%rdx, %rcx
	salq	$3, %rsi
	subq	%rsi, %rcx
	jmp	.L1815
	.p2align 4,,10
	.p2align 3
.L1816:
	subq	$8, %rdx
	cmpq	$0, 8(%rdx)
	jne	.L1832
.L1815:
	cmpq	%rdx, %rcx
	jne	.L1816
	jmp	.L1812
	.p2align 4,,10
	.p2align 3
.L1823:
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1844:
	shrl	$31, %eax
	cmpl	$6, %r9d
	je	.L1810
.L1835:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1842:
	testq	%rdx, %rdx
	movl	$-1, %eax
	je	.L1812
	cmpl	(%rsi), %edi
	jne	.L1827
	xorl	%eax, %eax
.L1828:
	leal	-1(%r8), %edx
	testl	%edx, %edx
	jle	.L1812
	movslq	%edx, %rdx
	cmpq	$0, (%rsi,%rdx,8)
	leaq	0(,%rdx,8), %rcx
	jne	.L1834
	leaq	-8(%rsi,%rcx), %rdx
	leal	-2(%r8), %esi
	movq	%rdx, %rcx
	salq	$3, %rsi
	subq	%rsi, %rcx
	jmp	.L1817
	.p2align 4,,10
	.p2align 3
.L1818:
	subq	$8, %rdx
	cmpq	$0, 8(%rdx)
	jne	.L1834
.L1817:
	cmpq	%rcx, %rdx
	jne	.L1818
	jmp	.L1812
	.p2align 4,,10
	.p2align 3
.L1820:
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1834:
	movl	$1, %eax
	jmp	.L1812
	.p2align 4,,10
	.p2align 3
.L1832:
	movl	$-1, %eax
	jmp	.L1812
.L1827:
	setge	%al
	movzbl	%al, %eax
	leal	-1(%rax,%rax), %eax
	jmp	.L1828
.L1845:
	xorl	%eax, %eax
	jmp	.L1826
	.cfi_endproc
.LFE298:
	.size	__asl_wide_sgnword_cmp, .-__asl_wide_sgnword_cmp
	.p2align 4,,15
	.globl	__asl_wide_jmpor_0
	.type	__asl_wide_jmpor_0, @function
__asl_wide_jmpor_0:
.LFB299:
	.cfi_startproc
	testl	%edx, %edx
	js	.L1850
	movslq	%edx, %rcx
	leaq	0(,%rcx,8), %rax
	addq	%rax, %rdi
	addq	%rax, %rsi
	movq	(%rdi), %rax
	orq	(%rsi), %rax
	jne	.L1852
	negq	%rcx
	xorl	%eax, %eax
	leaq	0(,%rcx,8), %rcx
	jmp	.L1848
	.p2align 4,,10
	.p2align 3
.L1849:
	movq	-8(%rdi,%rax), %rdx
	orq	-8(%rsi,%rax), %rdx
	subq	$8, %rax
	testq	%rdx, %rdx
	jne	.L1852
.L1848:
	cmpq	%rcx, %rax
	jne	.L1849
.L1850:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1852:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE299:
	.size	__asl_wide_jmpor_0, .-__asl_wide_jmpor_0
	.p2align 4,,15
	.globl	__asl_wide_jmp_eq
	.type	__asl_wide_jmp_eq, @function
__asl_wide_jmp_eq:
.LFB300:
	.cfi_startproc
	testl	%edx, %edx
	js	.L1857
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rdi
	addq	%rax, %rsi
	movq	(%rsi), %rax
	cmpq	%rax, (%rdi)
	jne	.L1859
	negq	%rdx
	xorl	%eax, %eax
	salq	$3, %rdx
	jmp	.L1855
	.p2align 4,,10
	.p2align 3
.L1856:
	movq	-8(%rdi,%rax), %rcx
	subq	$8, %rax
	cmpq	(%rsi,%rax), %rcx
	jne	.L1859
.L1855:
	cmpq	%rdx, %rax
	jne	.L1856
.L1857:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1859:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE300:
	.size	__asl_wide_jmp_eq, .-__asl_wide_jmp_eq
	.set	__asl_wide_jmp_eq.localalias.28,__asl_wide_jmp_eq
	.p2align 4,,15
	.globl	__asl_wide_cmp_eq
	.type	__asl_wide_cmp_eq, @function
__asl_wide_cmp_eq:
.LFB301:
	.cfi_startproc
	testl	%edx, %edx
	js	.L1864
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rdi
	addq	%rax, %rsi
	movq	(%rsi), %rax
	cmpq	%rax, (%rdi)
	jne	.L1866
	negq	%rdx
	xorl	%eax, %eax
	salq	$3, %rdx
	jmp	.L1862
	.p2align 4,,10
	.p2align 3
.L1863:
	movq	-8(%rdi,%rax), %rcx
	subq	$8, %rax
	cmpq	(%rsi,%rax), %rcx
	jne	.L1866
.L1862:
	cmpq	%rdx, %rax
	jne	.L1863
.L1864:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1866:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE301:
	.size	__asl_wide_cmp_eq, .-__asl_wide_cmp_eq
	.p2align 4,,15
	.globl	__asl_wide_cmp_neq
	.type	__asl_wide_cmp_neq, @function
__asl_wide_cmp_neq:
.LFB527:
	.cfi_startproc
	jmp	__asl_wide_jmp_eq.localalias.28
	.cfi_endproc
.LFE527:
	.size	__asl_wide_cmp_neq, .-__asl_wide_cmp_neq
	.p2align 4,,15
	.globl	__asl_jmp_eq_wide_var
	.type	__asl_jmp_eq_wide_var, @function
__asl_jmp_eq_wide_var:
.LFB303:
	.cfi_startproc
	addl	$63, %edx
	sarl	$6, %edx
	jmp	__asl_wide_jmp_eq@PLT
	.cfi_endproc
.LFE303:
	.size	__asl_jmp_eq_wide_var, .-__asl_jmp_eq_wide_var
	.p2align 4,,15
	.globl	__asl_sgn_xtnd_widen
	.type	__asl_sgn_xtnd_widen, @function
__asl_sgn_xtnd_widen:
.LFB304:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leal	63(%rcx), %eax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leal	63(%rdx), %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sarl	$6, %eax
	movl	%ecx, %ebx
	movq	%rdi, %r13
	sarl	$6, %ebp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	cltq
	movslq	%ebp, %r8
	sall	$3, %ebp
	movl	%edx, 8(%rsp)
	leaq	0(,%r8,8), %r12
	movslq	%ebp, %rbp
	leaq	(%rdi,%rax,8), %r15
	movq	%rbp, %rdx
	movq	%r8, (%rsp)
	call	memcpy@PLT
	leaq	(%r14,%r12), %rsi
	movq	%rbp, %rdx
	movq	%r15, %rdi
	call	memcpy@PLT
	movl	8(%rsp), %r10d
	movq	(%rsp), %r8
	leal	-1(%r10), %r14d
	subl	%r10d, %ebx
	andl	$63, %r14d
	addl	%r14d, %ebx
	leal	-63(%rbx), %r9d
	sarl	$6, %ebx
	cmpl	$64, %r10d
	je	.L1895
	leaq	-8(%r12), %r10
	movslq	%r14d, %rcx
	leaq	0(%r13,%r10), %rsi
	addq	%r15, %r10
	movq	(%rsi), %rax
	btq	%r14, %rax
	jnc	.L1879
	movq	__masktab@GOTPCREL(%rip), %rdx
	movl	$63, %edi
	subq	%rcx, %rdi
	leal	1(%r14), %ecx
	movq	(%rdx,%rdi,8), %rdi
	salq	%cl, %rdi
	orq	%rdi, %rax
	testl	%ebx, %ebx
	movq	%rax, (%rsi)
	jle	.L1880
	leal	-1(%rbx), %ecx
	leaq	0(%r13,%r12), %rax
	addq	%r8, %rcx
	leaq	8(%r13,%rcx,8), %rsi
	movq	$-1, %rcx
	.p2align 4,,10
	.p2align 3
.L1881:
	movq	%rcx, (%rax)
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.L1881
.L1880:
	movslq	%ebx, %rax
	andl	$63, %r9d
	addq	%r8, %rax
	movq	(%rdx,%r9,8), %rsi
	leaq	-8(,%rax,8), %rcx
	andq	%rsi, 0(%r13,%rcx)
	movq	(%r10), %rax
	btq	%r14, %rax
	jnc	.L1882
	orq	%rax, %rdi
	testl	%ebx, %ebx
	movq	%rdi, (%r10)
	jle	.L1883
	leal	-1(%rbx), %eax
	addq	%r15, %r12
	addq	%rax, %r8
	movq	$-1, %rax
	leaq	8(%r15,%r8,8), %rdx
	.p2align 4,,10
	.p2align 3
.L1884:
	movq	%rax, (%r12)
	addq	$8, %r12
	cmpq	%r12, %rdx
	jne	.L1884
.L1883:
	andq	%rsi, (%r15,%rcx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1879:
	.cfi_restore_state
	leal	0(,%rbx,8), %ebp
	leaq	0(%r13,%r12), %rdi
	xorl	%esi, %esi
	movq	%r10, (%rsp)
	movl	%r9d, 28(%rsp)
	movslq	%ebp, %rbp
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rbp, %rdx
	call	memset@PLT
	movq	(%rsp), %r10
	movq	(%r10), %rsi
	btq	%r14, %rsi
	jnc	.L1885
	movq	16(%rsp), %rcx
	movq	__masktab@GOTPCREL(%rip), %rdx
	movl	$63, %eax
	movq	8(%rsp), %r8
	movl	28(%rsp), %r9d
	subq	%rcx, %rax
	leal	1(%r14), %ecx
	movq	(%rdx,%rax,8), %rax
	salq	%cl, %rax
	orq	%rsi, %rax
	testl	%ebx, %ebx
	movq	%rax, (%r10)
	jle	.L1886
	leal	-1(%rbx), %eax
	addq	%r15, %r12
	addq	%r8, %rax
	leaq	8(%r15,%rax,8), %rcx
	movq	$-1, %rax
	.p2align 4,,10
	.p2align 3
.L1887:
	movq	%rax, (%r12)
	addq	$8, %r12
	cmpq	%rcx, %r12
	jne	.L1887
.L1886:
	movslq	%ebx, %rbx
	andl	$63, %r9d
	addq	%rbx, %r8
	movq	(%rdx,%r9,8), %rax
	andq	%rax, -8(%r15,%r8,8)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1895:
	.cfi_restore_state
	movl	0(%r13), %edx
	testl	%edx, %edx
	jns	.L1871
	testl	%ebx, %ebx
	jle	.L1872
	leal	-1(%rbx), %edx
	leaq	0(%r13,%rbp), %rax
	addq	%r8, %rdx
	leaq	8(%r13,%rdx,8), %rcx
	movq	$-1, %rdx
	.p2align 4,,10
	.p2align 3
.L1873:
	movq	%rdx, (%rax)
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L1873
.L1872:
	movq	__masktab@GOTPCREL(%rip), %rdx
	movslq	%ebx, %rax
	movl	%r9d, %ecx
	addq	%r8, %rax
	andl	$63, %ecx
	movq	(%rdx,%rcx,8), %rdx
	andq	%rdx, -8(%r13,%rax,8)
	movl	(%r15), %eax
	testl	%eax, %eax
	js	.L1896
.L1882:
	leal	0(,%rbx,8), %edx
	leaq	(%r15,%r12), %rdi
	movslq	%edx, %rdx
.L1894:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%esi, %esi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	memset@PLT
	.p2align 4,,10
	.p2align 3
.L1871:
	.cfi_restore_state
	leal	0(,%rbx,8), %edx
	leaq	0(%r13,%r12), %rdi
	xorl	%esi, %esi
	movl	%r9d, 8(%rsp)
	movq	%r8, (%rsp)
	movslq	%edx, %rdx
	call	memset@PLT
	movl	(%r15), %eax
	movl	8(%rsp), %r9d
	movq	(%rsp), %r8
	testl	%eax, %eax
	jns	.L1882
.L1896:
	testl	%ebx, %ebx
	jle	.L1876
	leal	-1(%rbx), %eax
	addq	%r15, %rbp
	addq	%r8, %rax
	leaq	8(%r15,%rax,8), %rdx
	movq	$-1, %rax
	.p2align 4,,10
	.p2align 3
.L1877:
	movq	%rax, 0(%rbp)
	addq	$8, %rbp
	cmpq	%rbp, %rdx
	jne	.L1877
.L1876:
	movq	__masktab@GOTPCREL(%rip), %rax
	movslq	%ebx, %rbx
	andl	$63, %r9d
	addq	%rbx, %r8
	movq	(%rax,%r9,8), %rax
	andq	%rax, -8(%r15,%r8,8)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1885:
	.cfi_restore_state
	leaq	(%r15,%r12), %rdi
	movq	%rbp, %rdx
	jmp	.L1894
	.cfi_endproc
.LFE304:
	.size	__asl_sgn_xtnd_widen, .-__asl_sgn_xtnd_widen
	.p2align 4,,15
	.globl	__asl_sgn_xtnd_widen_2state
	.type	__asl_sgn_xtnd_widen_2state, @function
__asl_sgn_xtnd_widen_2state:
.LFB305:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leal	63(%rdx), %ebx
	movl	%ecx, %r13d
	sarl	$6, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	subl	%r12d, %r13d
	leal	0(,%rbx,8), %edx
	movslq	%ebx, %rbx
	movslq	%edx, %rbp
	movq	%rbp, %rdx
	call	memcpy@PLT
	leal	-1(%r12), %esi
	movq	%rax, %r8
	andl	$63, %esi
	leal	-63(%rsi,%r13), %edi
	leal	63(%rdi), %eax
	sarl	$6, %eax
	cmpl	$64, %r12d
	je	.L1910
	leaq	-8(%r8,%rbp), %r11
	movq	(%r11), %r12
	btq	%rsi, %r12
	jnc	.L1903
	movq	__masktab@GOTPCREL(%rip), %r9
	movq	%rsi, %r10
	leal	1(%rsi), %ecx
	notq	%r10
	andl	$63, %r10d
	movq	(%r9,%r10,8), %rdx
	salq	%cl, %rdx
	orq	%r12, %rdx
	testl	%eax, %eax
	movq	%rdx, (%r11)
	jle	.L1904
	leal	-1(%rax), %ecx
	leaq	(%r8,%rbp), %rdx
	addq	%rbx, %rcx
	leaq	8(%r8,%rcx,8), %rsi
	movq	$-1, %rcx
	.p2align 4,,10
	.p2align 3
.L1905:
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	jne	.L1905
.L1904:
	cltq
	andl	$63, %edi
	addq	%rax, %rbx
	movq	(%r9,%rdi,8), %rax
	andq	%rax, -8(%r8,%rbx,8)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1903:
	.cfi_restore_state
	leal	0(,%rax,8), %edx
	movslq	%edx, %rdx
.L1909:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	(%r8,%rbp), %rdi
	xorl	%esi, %esi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memset@PLT
	.p2align 4,,10
	.p2align 3
.L1910:
	.cfi_restore_state
	movl	(%r8), %edx
	testl	%edx, %edx
	jns	.L1899
	testl	%eax, %eax
	jle	.L1900
	leal	-1(%rax), %ecx
	leaq	(%r8,%rbp), %rdx
	addq	%rbx, %rcx
	leaq	8(%r8,%rcx,8), %rsi
	movq	$-1, %rcx
	.p2align 4,,10
	.p2align 3
.L1901:
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	jne	.L1901
.L1900:
	cltq
	andl	$63, %edi
	addq	%rax, %rbx
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	(%rax,%rdi,8), %rax
	andq	%rax, -8(%r8,%rbx,8)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1899:
	.cfi_restore_state
	sall	$3, %eax
	movslq	%eax, %rdx
	jmp	.L1909
	.cfi_endproc
.LFE305:
	.size	__asl_sgn_xtnd_widen_2state, .-__asl_sgn_xtnd_widen_2state
	.p2align 4,,15
	.globl	__asl_repcnt_jmp
	.type	__asl_repcnt_jmp, @function
__asl_repcnt_jmp:
.LFB307:
	.cfi_startproc
	movq	(%rdi), %rdx
	testl	%esi, %esi
	movl	%edx, %eax
	je	.L1911
	testl	%edx, %edx
	movl	$0, %eax
	cmovns	%edx, %eax
.L1911:
	rep ret
	.cfi_endproc
.LFE307:
	.size	__asl_repcnt_jmp, .-__asl_repcnt_jmp
	.p2align 4,,15
	.globl	__asl_wide_any1
	.type	__asl_wide_any1, @function
__asl_wide_any1:
.LFB308:
	.cfi_startproc
	testl	%edx, %edx
	js	.L1920
	movslq	%edx, %rcx
	leaq	0(,%rcx,8), %rax
	addq	%rax, %rsi
	addq	%rax, %rdi
	movq	(%rsi), %rax
	notq	%rax
	testq	%rax, (%rdi)
	jne	.L1922
	negq	%rcx
	xorl	%edx, %edx
	leaq	0(,%rcx,8), %rcx
	jmp	.L1918
	.p2align 4,,10
	.p2align 3
.L1919:
	movq	-8(%rsi,%rdx), %rax
	notq	%rax
	andq	-8(%rdi,%rdx), %rax
	subq	$8, %rdx
	testq	%rax, %rax
	jne	.L1922
.L1918:
	cmpq	%rcx, %rdx
	jne	.L1919
.L1920:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L1922:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE308:
	.size	__asl_wide_any1, .-__asl_wide_any1
	.p2align 4,,15
	.globl	__asl_wide_qcol_comb_opands
	.type	__asl_wide_qcol_comb_opands, @function
__asl_wide_qcol_comb_opands:
.LFB309:
	.cfi_startproc
	movslq	%ecx, %r8
	salq	$3, %r8
	testl	%ecx, %ecx
	jle	.L1928
	leal	-1(%rcx), %eax
	leaq	(%rdx,%r8), %r11
	leaq	(%rsi,%r8), %r10
	leaq	(%rdi,%r8), %r9
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	8(,%rax,8), %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1925:
	movq	(%r11,%rax), %rcx
	movq	(%rdx,%rax), %r8
	orq	(%r10,%rax), %rcx
	xorq	(%rsi,%rax), %r8
	orq	%r8, %rcx
	movq	%rcx, (%r9,%rax)
	orq	(%rsi,%rax), %rcx
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rax
	cmpq	%rax, %rbx
	jne	.L1925
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1928:
	.cfi_restore 3
	rep ret
	.cfi_endproc
.LFE309:
	.size	__asl_wide_qcol_comb_opands, .-__asl_wide_qcol_comb_opands
	.p2align 4,,15
	.globl	__asl_sgnbit_on
	.type	__asl_sgnbit_on, @function
__asl_sgnbit_on:
.LFB310:
	.cfi_startproc
	leal	63(%rsi), %edx
	andl	$63, %esi
	movl	$1, %eax
	leal	-1(%rsi), %ecx
	sarl	$6, %edx
	movslq	%edx, %rdx
	salq	%cl, %rax
	andl	-8(%rdi,%rdx,8), %eax
	ret
	.cfi_endproc
.LFE310:
	.size	__asl_sgnbit_on, .-__asl_sgnbit_on
	.p2align 4,,15
	.globl	__asl_eval_wide_wire
	.type	__asl_eval_wide_wire, @function
__asl_eval_wide_wire:
.LFB311:
	.cfi_startproc
	movslq	%ecx, %r8
	salq	$3, %r8
	testl	%ecx, %ecx
	jle	.L1946
	leal	-1(%rcx), %eax
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	addq	%rdi, %r8
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	8(%rdi,%rax,8), %rbp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L1937:
	movq	(%rdx,%rbx), %r12
	movq	(%rsi,%rbx), %rcx
	movq	(%rdi), %r10
	movq	(%r8), %r9
	movq	%rcx, %rax
	movq	%r12, %r11
	xorq	%r9, %r11
	xorq	%r10, %rax
	orq	%r11, %rax
	movq	%r10, %r11
	notq	%rax
	andq	%rax, %r11
	movq	%r11, (%rdi)
	movq	%r9, %r11
	andq	%rax, %r11
	cmpq	$-1, %rax
	movq	%r11, (%r8)
	je	.L1935
	movq	%r10, %r11
	movq	%rcx, %r13
	notq	%r11
	andq	%r9, %r11
	andq	%r11, %r13
	orq	%r11, %rax
	orq	%r13, (%rdi)
	movq	%r12, %r13
	andq	%r11, %r13
	orq	%r13, (%r8)
	cmpq	$-1, %rax
	je	.L1935
	notq	%rcx
	andq	%r12, %rcx
	andq	%rcx, %r10
	orq	%rcx, %rax
	orq	%r10, (%rdi)
	andq	%rcx, %r9
	orq	%r9, (%r8)
	cmpq	$-1, %rax
	je	.L1935
	notq	%rax
	orq	%rax, (%rdi)
	orq	%rax, (%r8)
.L1935:
	addq	$8, %rdi
	addq	$8, %r8
	addq	$8, %rbx
	cmpq	%rbp, %rdi
	jne	.L1937
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1946:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	rep ret
	.cfi_endproc
.LFE311:
	.size	__asl_eval_wide_wire, .-__asl_eval_wide_wire
	.p2align 4,,15
	.globl	__asl_eval_wide_wire_and
	.type	__asl_eval_wide_wire_and, @function
__asl_eval_wide_wire_and:
.LFB312:
	.cfi_startproc
	movslq	%ecx, %r8
	salq	$3, %r8
	testl	%ecx, %ecx
	jle	.L1963
	leal	-1(%rcx), %eax
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	addq	%rdi, %r8
	leaq	8(%rdi,%rax,8), %rbx
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L1954:
	movq	(%rdx,%r11), %r9
	movq	(%rsi,%r11), %rbp
	movq	(%rdi), %rcx
	movq	(%r8), %r10
	movq	%rbp, %rax
	movq	%r9, %r12
	xorq	%r10, %r12
	xorq	%rcx, %rax
	orq	%r12, %rax
	movq	%rcx, %r12
	notq	%rax
	andq	%rax, %r12
	movq	%r12, (%rdi)
	movq	%r10, %r12
	andq	%rax, %r12
	cmpq	$-1, %rax
	movq	%r12, (%r8)
	je	.L1952
	movq	%rcx, %r12
	movq	%rbp, %r13
	notq	%r12
	andq	%r10, %r12
	andq	%r12, %r13
	orq	%r12, %rax
	orq	%r13, (%rdi)
	movq	%r9, %r13
	andq	%r12, %r13
	orq	%r13, (%r8)
	cmpq	$-1, %rax
	je	.L1952
	movq	%rbp, %r12
	movq	%rcx, %r13
	notq	%r12
	andq	%r9, %r12
	andq	%r12, %r13
	orq	%r12, %rax
	orq	%r13, (%rdi)
	movq	%r10, %r13
	andq	%r12, %r13
	orq	%r13, (%r8)
	cmpq	$-1, %rax
	je	.L1952
	orq	%r9, %rbp
	orq	%r10, %rcx
	notq	%rax
	andq	%rbp, %rcx
	orq	%r10, %r9
	andq	%rax, %rcx
	orq	(%rdi), %rcx
	andq	%r9, %rax
	movq	%rcx, (%rdi)
	andq	%rax, %rcx
	orq	%rcx, (%r8)
.L1952:
	addq	$8, %rdi
	addq	$8, %r8
	addq	$8, %r11
	cmpq	%rbx, %rdi
	jne	.L1954
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1963:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	rep ret
	.cfi_endproc
.LFE312:
	.size	__asl_eval_wide_wire_and, .-__asl_eval_wide_wire_and
	.p2align 4,,15
	.globl	__asl_eval_wide_wire_or
	.type	__asl_eval_wide_wire_or, @function
__asl_eval_wide_wire_or:
.LFB313:
	.cfi_startproc
	movslq	%ecx, %r8
	salq	$3, %r8
	testl	%ecx, %ecx
	jle	.L1978
	leal	-1(%rcx), %eax
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	addq	%rdi, %r8
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	8(%rdi,%rax,8), %rbx
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L1972:
	movq	(%rdx,%r11), %r14
	movq	(%rsi,%r11), %rcx
	movq	(%rdi), %r10
	movq	(%r8), %r9
	movq	%r14, %r12
	movq	%rcx, %rax
	xorq	%r9, %r12
	xorq	%r10, %rax
	movq	%r10, %rbp
	orq	%r12, %rax
	notq	%rax
	andq	%rax, %rbp
	movq	%rbp, (%rdi)
	movq	%r9, %rbp
	andq	%rax, %rbp
	cmpq	$-1, %rax
	movq	%rbp, (%r8)
	je	.L1969
	movq	%r10, %rbp
	movq	%rcx, %r13
	notq	%rbp
	andq	%r9, %rbp
	andq	%rbp, %r13
	orq	%rbp, %rax
	orq	%r13, (%rdi)
	movq	%r14, %r13
	andq	%rbp, %r13
	orq	%r13, (%r8)
	cmpq	$-1, %rax
	je	.L1969
	movq	%rcx, %r13
	movq	%r10, %rbp
	notq	%r13
	andq	%r14, %r13
	andq	%r13, %rbp
	orq	%r13, %rax
	orq	%rbp, (%rdi)
	movq	%r9, %rbp
	andq	%r13, %rbp
	orq	(%r8), %rbp
	cmpq	$-1, %rax
	je	.L1981
	movq	%rcx, %r13
	notq	%rax
	orq	%r10, %rcx
	andq	%r9, %r13
	orq	%r10, %r9
	orq	%r14, %r13
	andq	%r13, %r9
	xorq	%r12, %r9
	andq	%rax, %r9
	orq	%rbp, %r9
	orq	%r9, %rcx
	movq	%r9, (%r8)
	andq	%rcx, %rax
	orq	%rax, (%rdi)
.L1969:
	addq	$8, %rdi
	addq	$8, %r8
	addq	$8, %r11
	cmpq	%rbx, %rdi
	jne	.L1972
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1981:
	.cfi_restore_state
	movq	%rbp, (%r8)
	jmp	.L1969
	.p2align 4,,10
	.p2align 3
.L1978:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	rep ret
	.cfi_endproc
.LFE313:
	.size	__asl_eval_wide_wire_or, .-__asl_eval_wide_wire_or
	.p2align 4,,15
	.globl	__asl_eval_1w_nonstren_wire
	.type	__asl_eval_1w_nonstren_wire, @function
__asl_eval_1w_nonstren_wire:
.LFB314:
	.cfi_startproc
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%r8, %rax
	movq	%rcx, %r9
	movq	%r8, %r10
	xorq	%rsi, %rax
	xorq	%rdx, %r9
	movq	%rcx, %rbx
	orq	%r9, %rax
	notq	%rax
	andq	%rax, %r10
	andq	%rax, %rbx
	cmpq	$-1, %rax
	movq	%r10, (%rdi)
	movq	%rbx, 8(%rdi)
	je	.L1982
	movq	%r8, %r9
	movq	%rsi, %r11
	notq	%r9
	andq	%rcx, %r9
	andq	%r9, %r11
	orq	%r9, %rax
	orq	%r10, %r11
	movq	%rdx, %r10
	andq	%r9, %r10
	movq	%r11, (%rdi)
	orq	%rbx, %r10
	cmpq	$-1, %rax
	movq	%r10, 8(%rdi)
	je	.L1982
	notq	%rsi
	andq	%rsi, %rdx
	andq	%rdx, %r8
	andq	%rdx, %rcx
	orq	%rdx, %rax
	orq	%r11, %r8
	orq	%r10, %rcx
	cmpq	$-1, %rax
	movq	%r8, (%rdi)
	movq	%rcx, 8(%rdi)
	je	.L1982
	notq	%rax
	orq	%rax, %r8
	orq	%rcx, %rax
	movq	%r8, (%rdi)
	movq	%rax, 8(%rdi)
.L1982:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE314:
	.size	__asl_eval_1w_nonstren_wire, .-__asl_eval_1w_nonstren_wire
	.p2align 4,,15
	.globl	__asl_eval_1w_nonstren_wire_and
	.type	__asl_eval_1w_nonstren_wire_and, @function
__asl_eval_1w_nonstren_wire_and:
.LFB315:
	.cfi_startproc
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%r8, %rax
	movq	%rcx, %r9
	movq	%rcx, %rbx
	xorq	%rdx, %r9
	xorq	%rsi, %rax
	orq	%r9, %rax
	movq	%r8, %r9
	notq	%rax
	andq	%rax, %r9
	andq	%rax, %rbx
	cmpq	$-1, %rax
	movq	%r9, (%rdi)
	movq	%rbx, 8(%rdi)
	je	.L1993
	movq	%r8, %r10
	movq	%rsi, %r11
	notq	%r10
	andq	%rcx, %r10
	andq	%r10, %r11
	orq	%r10, %rax
	orq	%r9, %r11
	movq	%rdx, %r9
	andq	%r10, %r9
	movq	%r11, (%rdi)
	orq	%rbx, %r9
	cmpq	$-1, %rax
	movq	%r9, 8(%rdi)
	je	.L1993
	movq	%rsi, %r10
	movq	%r8, %rbx
	notq	%r10
	andq	%rdx, %r10
	andq	%r10, %rbx
	orq	%r10, %rax
	orq	%rbx, %r11
	movq	%rcx, %rbx
	andq	%r10, %rbx
	movq	%r11, (%rdi)
	orq	%rbx, %r9
	cmpq	$-1, %rax
	movq	%r9, 8(%rdi)
	je	.L1993
	orq	%rcx, %r8
	orq	%rdx, %rsi
	notq	%rax
	andq	%rsi, %r8
	orq	%rdx, %rcx
	andq	%rax, %r8
	andq	%rcx, %rax
	orq	%r11, %r8
	andq	%r8, %rax
	movq	%r8, (%rdi)
	orq	%r9, %rax
	movq	%rax, 8(%rdi)
.L1993:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE315:
	.size	__asl_eval_1w_nonstren_wire_and, .-__asl_eval_1w_nonstren_wire_and
	.p2align 4,,15
	.globl	__asl_eval_1w_nonstren_wire_or
	.type	__asl_eval_1w_nonstren_wire_or, @function
__asl_eval_1w_nonstren_wire_or:
.LFB316:
	.cfi_startproc
	movq	(%rdi), %rcx
	movq	8(%rdi), %r8
	movq	%rcx, %rax
	movq	%r8, %r10
	movq	%rcx, %r9
	xorq	%rdx, %r10
	xorq	%rsi, %rax
	movq	%r8, %r11
	orq	%r10, %rax
	notq	%rax
	andq	%rax, %r9
	andq	%rax, %r11
	cmpq	$-1, %rax
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	je	.L2013
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rcx, %rbx
	notq	%rbx
	movq	%rsi, %rbp
	andq	%r8, %rbx
	andq	%rbx, %rbp
	orq	%rbx, %rax
	orq	%rbp, %r9
	movq	%rdx, %rbp
	andq	%rbx, %rbp
	movq	%r9, (%rdi)
	orq	%rbp, %r11
	cmpq	$-1, %rax
	movq	%r11, 8(%rdi)
	je	.L2004
	movq	%rsi, %rbx
	movq	%rcx, %rbp
	notq	%rbx
	andq	%rdx, %rbx
	andq	%rbx, %rbp
	orq	%rbx, %rax
	orq	%rbp, %r9
	movq	%r8, %rbp
	andq	%rbx, %rbp
	movq	%r9, (%rdi)
	orq	%rbp, %r11
	cmpq	$-1, %rax
	je	.L2016
	movq	%r8, %rbx
	orq	%rcx, %r8
	notq	%rax
	andq	%rsi, %rbx
	orq	%rsi, %rcx
	orq	%rbx, %rdx
	andq	%rdx, %r8
	xorq	%r10, %r8
	andq	%rax, %r8
	orq	%r11, %r8
	orq	%r8, %rcx
	movq	%r8, 8(%rdi)
	andq	%rcx, %rax
	orq	%r9, %rax
	movq	%rax, (%rdi)
.L2004:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2013:
	.cfi_restore 3
	.cfi_restore 6
	rep ret
	.p2align 4,,10
	.p2align 3
.L2016:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	popq	%rbx
	.cfi_def_cfa_offset 16
	movq	%r11, 8(%rdi)
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE316:
	.size	__asl_eval_1w_nonstren_wire_or, .-__asl_eval_1w_nonstren_wire_or
	.p2align 4,,15
	.globl	__asl_set_byteval
	.type	__asl_set_byteval, @function
__asl_set_byteval:
.LFB320:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L2017
	leal	-1(%rdx), %eax
	leaq	1(%rdi,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L2019:
	movb	%sil, (%rdi)
	addq	$1, %rdi
	cmpq	%rax, %rdi
	jne	.L2019
.L2017:
	rep ret
	.cfi_endproc
.LFE320:
	.size	__asl_set_byteval, .-__asl_set_byteval
	.p2align 4,,15
	.globl	__asl_ld_logic_wide_driver
	.type	__asl_ld_logic_wide_driver, @function
__asl_ld_logic_wide_driver:
.LFB321:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leal	64(%rsi), %eax
	sarl	$6, %eax
	leal	(%rax,%rax), %edx
	cltq
	imull	(%rcx), %edx
	movslq	%edx, %rdx
	addq	56(%rdi), %rdx
	leaq	(%rcx,%rdx,8), %rdi
	movl	%esi, %edx
	andl	$63, %esi
	sarl	$6, %edx
	movl	%esi, %ecx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movq	(%rdi,%rdx,8), %rdx
	movq	(%rdi,%rax,8), %rax
	shrq	%cl, %rdx
	shrq	%cl, %rax
	andl	$1, %edx
	addq	%rax, %rax
	andl	$2, %eax
	orq	%rdx, %rax
	ret
	.cfi_endproc
.LFE321:
	.size	__asl_ld_logic_wide_driver, .-__asl_ld_logic_wide_driver
	.p2align 4,,15
	.globl	__asl_exec_wide_logic_gate
	.type	__asl_exec_wide_logic_gate, @function
__asl_exec_wide_logic_gate:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%esi, %rdx
	movq	%rdi, %rbx
	movq	%rdx, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	80(%rdi), %rax
	movq	(%rax,%rdx,8), %rdi
	call	__eval2_xpr@PLT
	movq	8(%rax), %rdx
	movq	16(%rax), %rax
	leal	-1(%rbp), %esi
	movq	__lhs_changed@GOTPCREL(%rip), %r9
	movl	%esi, %ecx
	sarl	$6, %esi
	movq	(%rax), %r10
	movq	(%rdx), %rdi
	movslq	%esi, %rsi
	movq	__new_inputval@GOTPCREL(%rip), %rax
	leaq	0(,%rsi,8), %rbp
	andl	$63, %ecx
	movl	$0, (%r9)
	andl	$1, %r10d
	andl	$1, %edi
	leaq	(%r10,%r10), %rdx
	orq	%rdi, %rdx
	salq	%cl, %rdi
	movq	%rdx, (%rax)
	movq	__xspi@GOTPCREL(%rip), %rdx
	movq	__idp@GOTPCREL(%rip), %rax
	subl	$1, (%rdx)
	movq	56(%rbx), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %r11
	movl	$1, %eax
	salq	%cl, %rax
	leaq	(%r11,%rbp), %rdx
	movq	%rax, %r8
	movq	(%rdx), %rsi
	andq	%rsi, %r8
	cmpq	%r8, %rdi
	je	.L2023
	movq	%rax, %r8
	movl	$1, (%r9)
	notq	%r8
	andq	%rsi, %r8
	orq	%r8, %rdi
	movq	%rdi, (%rdx)
.L2023:
	movzwl	(%rbx), %esi
	salq	%cl, %r10
	andl	$16383, %esi
	leal	63(%rsi), %edx
	sarl	$6, %edx
	movslq	%edx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	addq	%r11, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, %rdi
	andq	%rax, %rdi
	cmpq	%rdi, %r10
	je	.L2024
	notq	%rax
	andq	%rcx, %rax
	orq	%r10, %rax
	movq	%rax, (%rdx)
.L2025:
	movq	%rbx, %rdi
	movl	$0, (%r9)
	call	__eval_1wide_gate@PLT
	cltq
#APP
# 8512 "v_aslib.c" 1
	movq %rax, %rcx
# 0 "" 2
#NO_APP
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2024:
	.cfi_restore_state
	movl	(%r9), %eax
	testl	%eax, %eax
	jne	.L2025
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE323:
	.size	__asl_exec_wide_logic_gate, .-__asl_exec_wide_logic_gate
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_16v
	.type	__asl_sched_scalar_mipd_16v, @function
__asl_sched_scalar_mipd_16v:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	80(%rdi), %rax
	movq	32(%rdi), %rdi
	movq	16(%rax), %rcx
	movq	__idp@GOTPCREL(%rip), %rax
	movq	16(%rcx), %rsi
	movq	(%rax), %rax
	movzbl	(%rsi), %edx
	movq	(%rax,%rdi,8), %rax
	movb	%al, (%rsi)
	sall	$2, %eax
	andl	$3, %edx
	andl	$12, %eax
	orl	%edx, %eax
	movq	8(%rcx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbp
	addq	%rax, %rbp
	cmpq	$0, 16(%rbx)
	je	.L2030
	cmpq	%rbp, 48(%rbx)
	jb	.L2050
.L2029:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2030:
	.cfi_restore_state
	testq	%rax, %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	jne	.L2036
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2051
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbx, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2050:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2038
.L2049:
	movq	$0, 72(%rbx)
.L2038:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2052
	cmpq	8(%rsi), %rbp
	jne	.L2040
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2053
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2036:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	jne	.L2049
	jmp	.L2038
	.p2align 4,,10
	.p2align 3
.L2040:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2051:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2052:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2029
	.p2align 4,,10
	.p2align 3
.L2053:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2029
	.cfi_endproc
.LFE325:
	.size	__asl_sched_scalar_mipd_16v, .-__asl_sched_scalar_mipd_16v
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is16v
	.type	__asl_sched_scalar_mipd_is16v, @function
__asl_sched_scalar_mipd_is16v:
.LFB326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	80(%rdi), %rax
	movq	32(%rdi), %rdi
	movq	16(%rax), %r8
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	(%rax,%rdi,8), %rax
	movslq	%ecx, %rsi
	addq	16(%r8), %rsi
	sall	$4, %ecx
	movzbl	(%rsi), %edx
	movb	%al, (%rsi)
	sall	$2, %eax
	andl	$12, %eax
	andl	$3, %edx
	orl	%eax, %edx
	leal	(%rdx,%rcx), %eax
	movq	8(%r8), %rdx
	cltq
	movq	(%rdx,%rax,8), %rax
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbp
	addq	%rax, %rbp
	cmpq	$0, 16(%rbx)
	je	.L2055
	cmpq	%rbp, 48(%rbx)
	jb	.L2075
.L2054:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2055:
	.cfi_restore_state
	testq	%rax, %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	jne	.L2061
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2076
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbx, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2075:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2063
.L2074:
	movq	$0, 72(%rbx)
.L2063:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2077
	cmpq	8(%rsi), %rbp
	jne	.L2065
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2078
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2061:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	jne	.L2074
	jmp	.L2063
	.p2align 4,,10
	.p2align 3
.L2065:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2076:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2077:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2054
	.p2align 4,,10
	.p2align 3
.L2078:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2054
	.cfi_endproc
.LFE326:
	.size	__asl_sched_scalar_mipd_is16v, .-__asl_sched_scalar_mipd_is16v
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is16v1
	.type	__asl_sched_scalar_mipd_is16v1, @function
__asl_sched_scalar_mipd_is16v1:
.LFB327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__idp@GOTPCREL(%rip), %rax
	movq	80(%rdi), %rdx
	movq	32(%rdi), %rdi
	movq	(%rax), %rax
	movq	16(%rdx), %r8
	movq	(%rax), %rcx
	movq	(%rax,%rdi,8), %rax
	movslq	%ecx, %rsi
	addq	16(%r8), %rsi
	sall	$4, %ecx
	movzbl	(%rsi), %edx
	movb	%al, (%rsi)
	sall	$2, %eax
	andl	$12, %eax
	andl	$3, %edx
	orl	%eax, %edx
	leal	(%rdx,%rcx), %eax
	movq	8(%r8), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbp
	addq	%rax, %rbp
	cmpq	$0, 16(%rbx)
	je	.L2080
	cmpq	%rbp, 48(%rbx)
	jb	.L2100
.L2079:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2080:
	.cfi_restore_state
	testq	%rax, %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	jne	.L2086
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2101
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbx, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2100:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2088
.L2099:
	movq	$0, 72(%rbx)
.L2088:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2102
	cmpq	8(%rsi), %rbp
	jne	.L2090
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2103
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2086:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	jne	.L2099
	jmp	.L2088
	.p2align 4,,10
	.p2align 3
.L2090:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2101:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2102:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2079
	.p2align 4,,10
	.p2align 3
.L2103:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2079
	.cfi_endproc
.LFE327:
	.size	__asl_sched_scalar_mipd_is16v1, .-__asl_sched_scalar_mipd_is16v1
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is16v2
	.type	__asl_sched_scalar_mipd_is16v2, @function
__asl_sched_scalar_mipd_is16v2:
.LFB328:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__idp@GOTPCREL(%rip), %rax
	movq	80(%rdi), %rdx
	movq	32(%rdi), %rdi
	movq	(%rax), %rax
	movq	16(%rdx), %r8
	movq	(%rax), %rcx
	movq	(%rax,%rdi,8), %rax
	movslq	%ecx, %rsi
	addq	16(%r8), %rsi
	sall	$4, %ecx
	movzbl	(%rsi), %edx
	movb	%al, (%rsi)
	sall	$2, %eax
	andl	$12, %eax
	andl	$3, %edx
	orl	%eax, %edx
	leal	(%rdx,%rcx), %eax
	movq	8(%r8), %rdx
	cltq
	movzwl	(%rdx,%rax,2), %eax
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbp
	addq	%rax, %rbp
	cmpq	$0, 16(%rbx)
	je	.L2105
	cmpq	%rbp, 48(%rbx)
	jb	.L2125
.L2104:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2105:
	.cfi_restore_state
	testq	%rax, %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	jne	.L2111
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2126
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbx, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2125:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2113
.L2124:
	movq	$0, 72(%rbx)
.L2113:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2127
	cmpq	8(%rsi), %rbp
	jne	.L2115
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2128
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2111:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	jne	.L2124
	jmp	.L2113
	.p2align 4,,10
	.p2align 3
.L2115:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2126:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2127:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2104
	.p2align 4,,10
	.p2align 3
.L2128:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2104
	.cfi_endproc
.LFE328:
	.size	__asl_sched_scalar_mipd_is16v2, .-__asl_sched_scalar_mipd_is16v2
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_is1v
	.type	__asl_sched_scalar_mipd_is1v, @function
__asl_sched_scalar_mipd_is1v:
.LFB329:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	64(%rdi), %rax
	movq	(%rdx), %rbp
	addq	%rax, %rbp
	cmpq	$0, 16(%rdi)
	je	.L2130
	cmpq	%rbp, 48(%rdi)
	jb	.L2150
.L2129:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2130:
	.cfi_restore_state
	testq	%rax, %rax
	movq	%rbp, 48(%rdi)
	movq	$1, 16(%rdi)
	jne	.L2136
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2151
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rdi, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2150:
	.cfi_restore_state
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2138
.L2149:
	movq	$0, 72(%rbx)
.L2138:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2152
	cmpq	8(%rsi), %rbp
	jne	.L2140
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2153
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2136:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rdi)
	cmpq	(%rax), %rdi
	jne	.L2149
	jmp	.L2138
	.p2align 4,,10
	.p2align 3
.L2140:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2151:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2152:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2129
	.p2align 4,,10
	.p2align 3
.L2153:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2129
	.cfi_endproc
.LFE329:
	.size	__asl_sched_scalar_mipd_is1v, .-__asl_sched_scalar_mipd_is1v
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_path
	.type	__asl_sched_scalar_mipd_path, @function
__asl_sched_scalar_mipd_path:
.LFB330:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	80(%rdi), %rax
	movq	32(%rdi), %rdi
	movq	(%rdx), %rcx
	movq	16(%rax), %rax
	movslq	(%rcx), %rdx
	movq	(%rcx,%rdi,8), %rcx
	movq	16(%rax), %rsi
	addq	%rdx, %rsi
	movzbl	(%rsi), %r8d
	movb	%cl, (%rsi)
	movq	__new_gateval@GOTPCREL(%rip), %rsi
	movq	%rcx, (%rsi)
	movq	32(%rax), %rsi
	movq	__old_gateval@GOTPCREL(%rip), %rcx
	cmpq	$0, (%rsi,%rdx,8)
	movq	%r8, (%rcx)
	je	.L2178
	movq	%rsp, %rdi
	call	asl_loc_get_impth_del.isra.5
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rsp), %rbp
	movq	%rbp, %rdx
	subq	(%rax), %rdx
	movq	%rdx, %rax
.L2156:
	cmpq	$0, 16(%rbx)
	je	.L2157
	cmpq	%rbp, 48(%rbx)
	jb	.L2179
.L2154:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L2180
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2157:
	.cfi_restore_state
	testq	%rax, %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	jne	.L2163
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2181
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbx, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbx)
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2178:
	movzbl	(%rax), %esi
	movq	8(%rax), %rdi
	shrb	$2, %sil
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbp
	addq	%rax, %rbp
	movq	%rbp, (%rsp)
	jmp	.L2156
	.p2align 4,,10
	.p2align 3
.L2179:
	movq	%rbx, %rdi
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2165
.L2177:
	movq	$0, 72(%rbx)
.L2165:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2182
	cmpq	%rbp, 8(%rsi)
	jne	.L2167
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2183
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2163:
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	jne	.L2177
	jmp	.L2165
	.p2align 4,,10
	.p2align 3
.L2167:
	movq	%rbx, %rdi
	call	asl_loc_conflict_list
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2181:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	%rbx, (%rdx)
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2182:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2183:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2154
.L2180:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE330:
	.size	__asl_sched_scalar_mipd_path, .-__asl_sched_scalar_mipd_path
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_pnd0
	.type	__asl_sched_scalar_mipd_pnd0, @function
__asl_sched_scalar_mipd_pnd0:
.LFB331:
	.cfi_startproc
	cmpq	$0, 16(%rdi)
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	je	.L2185
	cmpq	%rax, 48(%rdi)
	ja	.L2184
	movq	%rax, 48(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L2185:
	movq	%rax, 48(%rdi)
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	movq	$1, 16(%rdi)
	cmpq	$0, (%rax)
	je	.L2188
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rdi, 72(%rdx)
	movq	(%rax), %rax
	movq	%rax, 72(%rdi)
.L2184:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2188:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE331:
	.size	__asl_sched_scalar_mipd_pnd0, .-__asl_sched_scalar_mipd_pnd0
	.p2align 4,,15
	.globl	__asl_sched_scalar_mipd_const
	.type	__asl_sched_scalar_mipd_const, @function
__asl_sched_scalar_mipd_const:
.LFB332:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rbp
	addq	64(%rdi), %rbp
	cmpq	$0, 16(%rdi)
	je	.L2190
	cmpq	%rbp, 48(%rdi)
	jb	.L2209
.L2189:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2209:
	.cfi_restore_state
	call	linkout_tevp
.L2190:
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2196
	movq	$0, 72(%rbx)
.L2196:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2210
	cmpq	8(%rsi), %rbp
	jne	.L2198
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2211
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2198:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2210:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2189
	.p2align 4,,10
	.p2align 3
.L2211:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2189
	.cfi_endproc
.LFE332:
	.size	__asl_sched_scalar_mipd_const, .-__asl_sched_scalar_mipd_const
	.p2align 4,,15
	.globl	__asl_sched_vec_mipd_bit
	.type	__asl_sched_vec_mipd_bit, @function
__asl_sched_vec_mipd_bit:
.LFB333:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%edx, %rbx
	leaq	(%rbx,%rbx,4), %rcx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	80(%rdi), %rax
	movq	16(%rax), %rax
	leaq	(%rax,%rcx,8), %r12
	testb	$1, (%r12)
	je	.L2248
.L2212:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L2249
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2248:
	.cfi_restore_state
	movzbl	1(%rdi), %eax
	movq	%rsi, %rbp
	andl	$126, %eax
	cmpb	$2, %al
	jne	.L2214
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rdi), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rdx
	movzbl	(%rdx,%rbx), %r13d
.L2215:
	movslq	(%rax), %r14
	movq	16(%r12), %rcx
	addq	%r14, %rcx
	cmpq	$0, 16(%rbp)
	movzbl	(%rcx), %edx
	movq	%rdx, %rax
	movq	%rdx, 8(%rsp)
	jne	.L2237
	cmpq	%r13, %rdx
	je	.L2212
.L2237:
	movb	%r13b, (%rcx)
	movq	__new_gateval@GOTPCREL(%rip), %rcx
	movq	%r13, %rsi
	andl	$3, %esi
	andl	$3, %eax
	movq	%rsi, (%rcx)
	movq	__old_gateval@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movzbl	(%r12), %eax
	testb	$2, %al
	je	.L2218
	movq	32(%r12), %rsi
	testq	%rsi, %rsi
	je	.L2218
	cmpq	$0, (%rsi,%r14,8)
	je	.L2218
	leaq	32(%rsp), %rdi
	call	asl_loc_get_impth_del.isra.5
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	32(%rsp), %r15
	movq	%r15, %rdi
	subq	(%rax), %rdi
	cmpq	$0, 16(%rbp)
	movq	%rdi, %rax
	jne	.L2221
.L2251:
	testq	%rax, %rax
	movq	%r15, 48(%rbp)
	movq	$1, 16(%rbp)
	jne	.L2222
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2250
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rbp, (%rax)
	movq	__free_event_pnd0_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 72(%rcx)
	movq	(%rax), %rax
	movq	%rax, 72(%rbp)
.L2224:
	movq	24(%r12), %rax
	movq	%rbp, (%rax,%r14,8)
	movq	%rbx, 8(%rbp)
	jmp	.L2212
	.p2align 4,,10
	.p2align 3
.L2214:
	leaq	16(%rsp), %rax
	leaq	24(%rsp), %rsi
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	__ld_bit@PLT
	movq	24(%rsp), %rax
	leaq	(%rax,%rax), %r13
	movq	16(%rsp), %rax
	andl	$2, %r13d
	andl	$1, %eax
	orq	%rax, %r13
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.L2215
	.p2align 4,,10
	.p2align 3
.L2218:
	shrb	$2, %al
	movq	8(%r12), %rdi
	movl	%eax, %esi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r15
	addq	%rax, %r15
	cmpq	$0, 16(%rbp)
	movq	%r15, 32(%rsp)
	je	.L2251
.L2221:
	movq	48(%rbp), %rax
	cmpq	%r15, %rax
	ja	.L2212
	cmpq	%r13, 8(%rsp)
	je	.L2252
	cmpq	%r15, %rax
	je	.L2212
	movq	%rbp, %rdi
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%r15, 48(%rbp)
	movq	$0, 80(%rbp)
	cmpq	(%rax), %rbp
	je	.L2231
	movq	$0, 72(%rbp)
.L2231:
	movq	%r15, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%r15, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2253
	cmpq	%r15, 8(%rsi)
	jne	.L2234
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbp)
	testq	%rax, %rax
	je	.L2254
	movq	%rbp, 72(%rax)
	movq	%rax, 80(%rbp)
	movq	%rbp, 24(%rsi)
.L2233:
	movq	$1, 16(%rbp)
	movq	%rbx, 8(%rbp)
	jmp	.L2212
	.p2align 4,,10
	.p2align 3
.L2222:
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbp)
	cmpq	(%rax), %rbp
	je	.L2225
	movq	$0, 72(%rbp)
.L2225:
	movq	%r15, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%r15, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2255
	cmpq	%r15, 8(%rsi)
	jne	.L2227
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbp)
	testq	%rax, %rax
	je	.L2256
	movq	%rbp, 72(%rax)
	movq	%rax, 80(%rbp)
	movq	%rbp, 24(%rsi)
	jmp	.L2224
.L2255:
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbp, 24(%rax)
	movq	%rbp, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2224
	.p2align 4,,10
	.p2align 3
.L2250:
	movq	__p0_te_endp@GOTPCREL(%rip), %rcx
	movq	%rbp, (%rax)
	movq	%rbp, (%rcx)
	jmp	.L2224
	.p2align 4,,10
	.p2align 3
.L2227:
	movq	%rbp, %rdi
	call	asl_loc_conflict_list
	jmp	.L2224
	.p2align 4,,10
	.p2align 3
.L2252:
	movq	%rbp, %rdi
	call	linkout_tevp
	jmp	.L2212
	.p2align 4,,10
	.p2align 3
.L2234:
	movq	%rbp, %rdi
	call	asl_loc_conflict_list
	jmp	.L2233
.L2256:
	movq	%rbp, 24(%rsi)
	movq	%rbp, 16(%rsi)
	jmp	.L2224
.L2253:
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbp, 24(%rax)
	movq	%rbp, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2233
.L2254:
	movq	%rbp, 24(%rsi)
	movq	%rbp, 16(%rsi)
	jmp	.L2233
.L2249:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE333:
	.size	__asl_sched_vec_mipd_bit, .-__asl_sched_vec_mipd_bit
	.p2align 4,,15
	.globl	__asl_linkout_tevp
	.type	__asl_linkout_tevp, @function
__asl_linkout_tevp:
.LFB340:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, 48(%rdi)
	je	.L2260
	cmpq	$0, 16(%rdi)
	jne	.L2261
	rep ret
	.p2align 4,,10
	.p2align 3
.L2261:
	jmp	linkout_tevp
	.p2align 4,,10
	.p2align 3
.L2260:
	jmp	linkout_cur_time
	.cfi_endproc
.LFE340:
	.size	__asl_linkout_tevp, .-__asl_linkout_tevp
	.p2align 4,,15
	.globl	__asl_linkout_tevp_no_trigger
	.type	__asl_linkout_tevp_no_trigger, @function
__asl_linkout_tevp_no_trigger:
.LFB341:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, 48(%rdi)
	je	.L2264
	jmp	linkout_tevp
	.p2align 4,,10
	.p2align 3
.L2264:
	jmp	linkout_cur_time
	.cfi_endproc
.LFE341:
	.size	__asl_linkout_tevp_no_trigger, .-__asl_linkout_tevp_no_trigger
	.p2align 4,,15
	.globl	__asl_schd_caev
	.type	__asl_schd_caev, @function
__asl_schd_caev:
.LFB344:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movq	$1, 16(%rsi)
	movzwl	8(%rdi), %esi
	movq	32(%rdi), %rdi
	shrw	$7, %si
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, 48(%rbx)
	jne	.L2266
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2274
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rdx, 80(%rbx)
	movq	%rbx, 72(%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2274:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	$0, 80(%rbx)
	movq	%rbx, (%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2266:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rcx, %rdx
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2269
	movq	$0, 72(%rbx)
.L2269:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2275
	cmpq	8(%rsi), %rdx
	jne	.L2271
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2276
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2271:
	.cfi_restore_state
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2275:
	.cfi_restore_state
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2276:
	.cfi_restore_state
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE344:
	.size	__asl_schd_caev, .-__asl_schd_caev
	.p2align 4,,15
	.globl	__asl_schd_caev_const
	.type	__asl_schd_caev_const, @function
__asl_schd_caev_const:
.LFB521:
	.cfi_startproc
	jmp	__asl_sched_proc_delay_const_nt.localalias.26
	.cfi_endproc
.LFE521:
	.size	__asl_schd_caev_const, .-__asl_schd_caev_const
	.p2align 4,,15
	.globl	__asl_schd_caev_const0
	.type	__asl_schd_caev_const0, @function
__asl_schd_caev_const0:
.LFB346:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	$1, 16(%rdi)
	movq	(%rax), %rax
	movq	%rax, 48(%rdi)
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2281
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	%rdx, 80(%rdi)
	movq	%rdi, 72(%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L2281:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	$0, 80(%rdi)
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE346:
	.size	__asl_schd_caev_const0, .-__asl_schd_caev_const0
	.p2align 4,,15
	.globl	__asl_cancel_ev
	.type	__asl_cancel_ev, @function
__asl_cancel_ev:
.LFB347:
	.cfi_startproc
	jmp	linkout_tevp
	.cfi_endproc
.LFE347:
	.size	__asl_cancel_ev, .-__asl_cancel_ev
	.p2align 4,,15
	.globl	__asl_calc_bufif_newstate
	.type	__asl_calc_bufif_newstate, @function
__asl_calc_bufif_newstate:
.LFB348:
	.cfi_startproc
	movq	__bufif_and_tab@GOTPCREL(%rip), %rax
	andl	$15, %edi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	andb	(%rax,%rdi), %dl
	movq	__bufif_or_tab@GOTPCREL(%rip), %rax
	orb	(%rax,%rdi), %dl
	movq	__stren_map_tab@GOTPCREL(%rip), %rax
	movzbl	%dl, %edx
	movzbl	(%rax,%rdx), %eax
	movq	__new_gateval@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	ret
	.cfi_endproc
.LFE348:
	.size	__asl_calc_bufif_newstate, .-__asl_calc_bufif_newstate
	.p2align 4,,15
	.globl	__asl_calc_comb_udp
	.type	__asl_calc_comb_udp, @function
__asl_calc_comb_udp:
.LFB349:
	.cfi_startproc
	movq	40(%rdi), %rax
	movslq	%esi, %rsi
	movl	%edx, %ecx
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	shrq	%cl, %rax
	andl	$3, %eax
	ret
	.cfi_endproc
.LFE349:
	.size	__asl_calc_comb_udp, .-__asl_calc_comb_udp
	.p2align 4,,15
	.globl	__asl_udp_wide_adjstate
	.type	__asl_udp_wide_adjstate, @function
__asl_udp_wide_adjstate:
.LFB350:
	.cfi_startproc
	movq	(%rdi), %rdx
	leal	(%rsi,%rsi), %ecx
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movslq	%esi, %rsi
	shrq	%cl, %rdx
	movq	__pow3tab@GOTPCREL(%rip), %rcx
	andl	$3, %edx
	movq	%rdx, (%rax)
	cmpq	$3, %rdx
	movq	8(%rdi), %rax
	movq	(%rcx,%rsi,8), %rcx
	movl	$2, %edi
	cmove	%rdi, %rdx
	imulq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	$3, %rax
	cmove	%rdi, %rax
	imulq	%rax, %rcx
	leaq	(%rcx,%rdx), %rax
	ret
	.cfi_endproc
.LFE350:
	.size	__asl_udp_wide_adjstate, .-__asl_udp_wide_adjstate
	.p2align 4,,15
	.globl	__asl_adjust_edge_udp
	.type	__asl_adjust_edge_udp, @function
__asl_adjust_edge_udp:
.LFB351:
	.cfi_startproc
	movq	40(%rcx), %rax
	movl	%esi, %ecx
	sarl	$6, %ecx
	cmpl	$3, %edx
	movq	16(%rax), %r8
	leal	(%rdi,%rdi,2), %eax
	movl	$2, %edi
	cmove	%edi, %edx
	addl	%eax, %edx
	movslq	%ecx, %rax
	movl	%esi, %ecx
	movq	48(%r8), %rdi
	movslq	%edx, %rdx
	movq	8(%rdi), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movq	(%rdx,%rax,8), %rax
	shrq	%cl, %rax
	andl	$3, %eax
	ret
	.cfi_endproc
.LFE351:
	.size	__asl_adjust_edge_udp, .-__asl_adjust_edge_udp
	.p2align 4,,15
	.globl	__asl_eval_cmos_gate
	.type	__asl_eval_cmos_gate, @function
__asl_eval_cmos_gate:
.LFB352:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movslq	%edi, %rdi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%ecx, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%esi, %ebp
	movslq	%edx, %rbx
	call	__eval_nmos_gate@PLT
	movq	__new_gateval@GOTPCREL(%rip), %r13
	movslq	%ebp, %rdi
	movq	0(%r13), %r14
	call	__eval_pmos_gate@PLT
	movq	0(%r13), %rdx
	cmpq	%rdx, %r14
	jne	.L2293
	xorl	%eax, %eax
	cmpq	%rbx, %r14
	je	.L2292
.L2293:
	movslq	%r12d, %rdi
	movq	%r14, %rsi
	call	__comb_1bitsts@PLT
	cmpq	%rbx, %rax
	movq	%rax, 0(%r13)
	setne	%al
	movzbl	%al, %eax
.L2292:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE352:
	.size	__asl_eval_cmos_gate, .-__asl_eval_cmos_gate
	.p2align 4,,15
	.globl	__asl_eval_rcmos_gate
	.type	__asl_eval_rcmos_gate, @function
__asl_eval_rcmos_gate:
.LFB353:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movslq	%edi, %rdi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movslq	%edx, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%ecx, %r12d
	movl	%esi, %ebx
	call	__eval_rnmos_gate@PLT
	movq	__new_gateval@GOTPCREL(%rip), %rbp
	movslq	%ebx, %rdi
	movq	0(%rbp), %r14
	call	__eval_rpmos_gate@PLT
	movq	0(%rbp), %rdx
	cmpq	%rdx, %r14
	jne	.L2298
	xorl	%eax, %eax
	cmpq	%r14, %r13
	je	.L2297
.L2298:
	movslq	%r12d, %rdi
	movq	%r14, %rsi
	call	__comb_1bitsts@PLT
	movq	%rax, 0(%rbp)
	movl	$1, %eax
.L2297:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE353:
	.size	__asl_eval_rcmos_gate, .-__asl_eval_rcmos_gate
	.p2align 4,,15
	.globl	__asl_set_rhs_new_gateval
	.type	__asl_set_rhs_new_gateval, @function
__asl_set_rhs_new_gateval:
.LFB354:
	.cfi_startproc
	leal	63(%rsi), %eax
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sarl	$6, %eax
	cmpl	$64, %esi
	movslq	%eax, %rbx
	jg	.L2303
	cmpq	$0, (%rdi)
	jne	.L2305
	cmpq	$0, (%rdi,%rbx,8)
	sete	%al
	testb	%al, %al
	je	.L2308
.L2322:
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
.L2302:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2305:
	.cfi_restore_state
	movl	%ebp, %esi
	movq	%r12, %rdi
	call	__vval_is1@PLT
	testl	%eax, %eax
	jne	.L2321
.L2310:
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2303:
	.cfi_restore_state
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	je	.L2305
	leaq	(%r12,%rbx,8), %rdi
	movl	%ebp, %esi
	call	__wide_vval_is0@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	.L2322
.L2308:
	leaq	(%r12,%rbx,8), %rdi
	movl	%ebp, %esi
	call	__vval_is1@PLT
	testl	%eax, %eax
	je	.L2302
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	$2, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2321:
	.cfi_restore_state
	movslq	%ebx, %rax
	movl	%ebp, %esi
	leaq	(%r12,%rax,8), %rdi
	call	__vval_is1@PLT
	testl	%eax, %eax
	je	.L2310
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	$3, (%rax)
	jmp	.L2302
	.cfi_endproc
.LFE354:
	.size	__asl_set_rhs_new_gateval, .-__asl_set_rhs_new_gateval
	.p2align 4,,15
	.globl	__asl_stren_schd_1gev
	.type	__asl_stren_schd_1gev, @function
__asl_stren_schd_1gev:
.LFB355:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__new_gateval@GOTPCREL(%rip), %rbp
	testb	$2, 0(%rbp)
	jne	.L2324
	movzbl	2(%rdi), %eax
	movq	__hizstren_del_tab@GOTPCREL(%rip), %rdx
	shrb	$2, %al
	andl	$63, %eax
	cmpb	$1, (%rdx,%rax)
	je	.L2334
.L2324:
	movzbl	3(%rdi), %esi
	movq	24(%rdi), %rdi
	andl	$31, %esi
	call	__get_del@PLT
.L2325:
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	$1, 16(%rbx)
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, %rdx
	movq	%rcx, 48(%rbx)
	movq	0(%rbp), %rcx
	movb	%cl, 2(%rbx)
	jne	.L2326
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2335
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rdx, 80(%rbx)
	movq	%rbx, 72(%rdx)
.L2323:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2335:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	$0, 80(%rbx)
	movq	%rbx, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2326:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2329
	movq	$0, 72(%rbx)
.L2329:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2336
	cmpq	8(%rsi), %rdx
	jne	.L2331
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2337
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2331:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2334:
	.cfi_restore_state
	call	__hizstrengate_getdel@PLT
	jmp	.L2325
	.p2align 4,,10
	.p2align 3
.L2336:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2323
	.p2align 4,,10
	.p2align 3
.L2337:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2323
	.cfi_endproc
.LFE355:
	.size	__asl_stren_schd_1gev, .-__asl_stren_schd_1gev
	.p2align 4,,15
	.globl	__asl_schd_1gev
	.type	__asl_schd_1gev, @function
__asl_schd_1gev:
.LFB356:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movq	$1, 16(%rsi)
	movzbl	3(%rdi), %esi
	movq	24(%rdi), %rdi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	addq	%rax, %rcx
	testq	%rax, %rax
	movq	%rcx, 48(%rbx)
	jne	.L2339
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2347
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	%rdx, 80(%rbx)
	movq	%rbx, 72(%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2347:
	.cfi_restore_state
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	$0, 80(%rbx)
	movq	%rbx, (%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2339:
	.cfi_restore_state
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rcx, %rdx
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2342
	movq	$0, 72(%rbx)
.L2342:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2348
	cmpq	8(%rsi), %rdx
	jne	.L2344
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2349
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2344:
	.cfi_restore_state
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2348:
	.cfi_restore_state
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2349:
	.cfi_restore_state
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE356:
	.size	__asl_schd_1gev, .-__asl_schd_1gev
	.p2align 4,,15
	.globl	__asl_schd_1gev_const
	.type	__asl_schd_1gev_const, @function
__asl_schd_1gev_const:
.LFB523:
	.cfi_startproc
	jmp	__asl_sched_proc_delay_const_nt.localalias.26
	.cfi_endproc
.LFE523:
	.size	__asl_schd_1gev_const, .-__asl_schd_1gev_const
	.p2align 4,,15
	.globl	__asl_schd_1gev_pnd0
	.type	__asl_schd_1gev_pnd0, @function
__asl_schd_1gev_pnd0:
.LFB358:
	.cfi_startproc
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	$1, 16(%rdi)
	movq	(%rax), %rax
	movq	%rax, 48(%rdi)
	movq	__p0_te_hdrp@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L2354
	movq	__p0_te_endp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	%rdx, 80(%rdi)
	movq	%rdi, 72(%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L2354:
	movq	__p0_te_endp@GOTPCREL(%rip), %rdx
	movq	%rdi, (%rax)
	movq	$0, 80(%rdi)
	movq	%rdi, (%rdx)
	ret
	.cfi_endproc
.LFE358:
	.size	__asl_schd_1gev_pnd0, .-__asl_schd_1gev_pnd0
	.section	.rodata.str1.1
.LC18:
	.string	"drives glitch"
	.text
	.p2align 4,,15
	.globl	__asl_cancele_pend_nochg_1gev
	.type	__asl_cancele_pend_nochg_1gev, @function
__asl_cancele_pend_nochg_1gev:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movzbl	2(%rdi), %eax
	testb	$2, %al
	je	.L2356
	movq	__new_gateval@GOTPCREL(%rip), %rdx
	testb	$2, (%rdx)
	je	.L2369
.L2356:
	movzbl	3(%rbx), %esi
	movq	24(%rbx), %rdi
	andl	$31, %esi
	call	__get_del@PLT
.L2357:
	movq	__simtime@GOTPCREL(%rip), %rdx
	addq	(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L2359
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L2370
.L2359:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2361
	movq	__showe_onevent@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2371
	call	__get_showcancele_val@PLT
	movq	__new_gateval@GOTPCREL(%rip), %rdx
	movq	%rbp, %rdi
	movq	%rax, (%rdx)
	call	linkout_tevp
	movl	$1, %eax
.L2355:
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L2372
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2371:
	.cfi_restore_state
	call	__get_showcancele_val@PLT
	movb	%al, 2(%rbp)
	xorl	%eax, %eax
	jmp	.L2355
	.p2align 4,,10
	.p2align 3
.L2369:
	movq	__hizstren_del_tab@GOTPCREL(%rip), %rdx
	shrb	$2, %al
	andl	$63, %eax
	cmpb	$1, (%rdx,%rax)
	jne	.L2356
	call	__hizstrengate_getdel@PLT
	jmp	.L2357
	.p2align 4,,10
	.p2align 3
.L2361:
	movq	%rbp, %rdi
	movl	%eax, 12(%rsp)
	call	linkout_tevp
	movl	12(%rsp), %eax
	jmp	.L2355
	.p2align 4,,10
	.p2align 3
.L2370:
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L2359
	leaq	16(%rsp), %rcx
	leaq	48(%rbp), %rdx
	leaq	.LC18(%rip), %r8
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	__emit_pulsewarn@PLT
	jmp	.L2359
.L2372:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE360:
	.size	__asl_cancele_pend_nochg_1gev, .-__asl_cancele_pend_nochg_1gev
	.p2align 4,,15
	.globl	__asl_chg_gate_outwire
	.type	__asl_chg_gate_outwire, @function
__asl_chg_gate_outwire:
.LFB361:
	.cfi_startproc
	movq	8(%rdi), %rdi
	cmpb	$0, 3(%rdi)
	js	.L2374
	jmp	__acc_evchg_gate_outwire@PLT
	.p2align 4,,10
	.p2align 3
.L2374:
	jmp	__change_gate_outwire@PLT
	.cfi_endproc
.LFE361:
	.size	__asl_chg_gate_outwire, .-__asl_chg_gate_outwire
	.section	.rodata.str1.1
.LC19:
	.string	"unstable"
	.text
	.p2align 4,,15
	.globl	__asl_cancele_pend_chg_1gev
	.type	__asl_cancele_pend_chg_1gev, @function
__asl_cancele_pend_chg_1gev:
.LFB362:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	__new_gateval@GOTPCREL(%rip), %r12
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%r12), %rdx
	cmpb	%dl, 2(%rsi)
	je	.L2399
	movzbl	2(%rdi), %eax
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	testb	$2, %al
	je	.L2378
	andl	$2, %edx
	jne	.L2378
	movq	__hizstren_del_tab@GOTPCREL(%rip), %rdx
	shrb	$2, %al
	andl	$63, %eax
	cmpb	$1, (%rdx,%rax)
	je	.L2400
.L2378:
	movzbl	3(%rbp), %esi
	movq	24(%rbp), %rdi
	andl	$31, %esi
	call	__get_del@PLT
	movq	%rax, %r13
.L2379:
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	addq	%r13, %rcx
	movq	%rcx, (%rsp)
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L2381
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L2401
.L2381:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2383
	movq	__showe_onevent@GOTPCREL(%rip), %rax
	movq	%rbp, %rdi
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	je	.L2384
	call	__get_showcancele_val@PLT
	movl	$1, %r13d
	movb	%al, 2(%rbx)
	jmp	.L2375
	.p2align 4,,10
	.p2align 3
.L2389:
	movq	%rbx, %rdi
	call	asl_loc_conflict_list
.L2388:
	movq	$1, 16(%rbx)
	.p2align 4,,10
	.p2align 3
.L2399:
	movl	$1, %r13d
.L2375:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%r13d, %eax
	jne	.L2402
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2383:
	.cfi_restore_state
	movq	(%r12), %rax
	testq	%r13, %r13
	movb	%al, 2(%rbx)
	je	.L2399
	movq	%rbx, %rdi
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	(%rsp), %rdx
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	movq	%rdx, 48(%rbx)
	je	.L2386
	movq	$0, 72(%rbx)
.L2386:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2403
	cmpq	8(%rsi), %rdx
	jne	.L2389
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2404
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	jmp	.L2388
	.p2align 4,,10
	.p2align 3
.L2384:
	call	__get_showcancele_val@PLT
	movq	%rbx, %rdi
	movq	%rax, (%r12)
	call	linkout_tevp
	jmp	.L2375
	.p2align 4,,10
	.p2align 3
.L2401:
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L2381
	leaq	48(%rbx), %rdx
	leaq	.LC19(%rip), %r8
	movq	%rsp, %rcx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	__emit_pulsewarn@PLT
	jmp	.L2381
	.p2align 4,,10
	.p2align 3
.L2400:
	call	__hizstrengate_getdel@PLT
	movq	%rax, %r13
	jmp	.L2379
	.p2align 4,,10
	.p2align 3
.L2404:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2388
	.p2align 4,,10
	.p2align 3
.L2403:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2388
.L2402:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE362:
	.size	__asl_cancele_pend_chg_1gev, .-__asl_cancele_pend_chg_1gev
	.p2align 4,,15
	.globl	__asl_stren_pend_nochg_1gev
	.type	__asl_stren_pend_nochg_1gev, @function
__asl_stren_pend_nochg_1gev:
.LFB515:
	.cfi_startproc
	jmp	linkout_tevp
	.cfi_endproc
.LFE515:
	.size	__asl_stren_pend_nochg_1gev, .-__asl_stren_pend_nochg_1gev
	.p2align 4,,15
	.globl	__asl_pend_nochg_1gev
	.type	__asl_pend_nochg_1gev, @function
__asl_pend_nochg_1gev:
.LFB517:
	.cfi_startproc
	jmp	linkout_tevp
	.cfi_endproc
.LFE517:
	.size	__asl_pend_nochg_1gev, .-__asl_pend_nochg_1gev
	.p2align 4,,15
	.globl	__asl_pend_chg_1gev
	.type	__asl_pend_chg_1gev, @function
__asl_pend_chg_1gev:
.LFB365:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movzbl	3(%rdi), %esi
	movq	24(%rdi), %rdi
	andl	$31, %esi
	call	__get_del@PLT
	testq	%rax, %rax
	jne	.L2417
.L2407:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2417:
	.cfi_restore_state
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	call	linkout_tevp
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	8(%rsp), %rax
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	addq	(%rdx), %rax
	movq	__cur_tevp@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rbx
	movq	%rax, 48(%rbx)
	je	.L2409
	movq	$0, 72(%rbx)
.L2409:
	movq	%rax, %rdx
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rdx
	xorq	%rax, %rdx
	imull	$-1640531535, %edx, %edx
	andl	$4095, %edx
	movslq	%edx, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2418
	cmpq	8(%rsi), %rax
	jne	.L2411
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2419
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2411:
	.cfi_restore_state
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2418:
	.cfi_restore_state
	movl	%edx, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2407
	.p2align 4,,10
	.p2align 3
.L2419:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2407
	.cfi_endproc
.LFE365:
	.size	__asl_pend_chg_1gev, .-__asl_pend_chg_1gev
	.p2align 4,,15
	.globl	__asl_pend_chg_1gev_const
	.type	__asl_pend_chg_1gev_const, @function
__asl_pend_chg_1gev_const:
.LFB366:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	linkout_tevp
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	movq	(%rax), %rdx
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	addq	64(%rbx), %rdx
	cmpq	(%rax), %rbx
	movq	%rdx, 48(%rbx)
	je	.L2421
	movq	$0, 72(%rbx)
.L2421:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2427
	cmpq	8(%rsi), %rdx
	jne	.L2424
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2428
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2424:
	.cfi_restore_state
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2427:
	.cfi_restore_state
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2428:
	.cfi_restore_state
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE366:
	.size	__asl_pend_chg_1gev_const, .-__asl_pend_chg_1gev_const
	.p2align 4,,15
	.globl	__asl_stren_pend_chg_1gev
	.type	__asl_stren_pend_chg_1gev, @function
__asl_stren_pend_chg_1gev:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	__new_gateval@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rax
	cmpb	%al, 2(%rsi)
	je	.L2429
	testb	$2, %al
	movq	%rsi, %rbx
	jne	.L2432
	movzbl	2(%rdi), %eax
	movq	__hizstren_del_tab@GOTPCREL(%rip), %rdx
	shrb	$2, %al
	andl	$63, %eax
	cmpb	$1, (%rdx,%rax)
	je	.L2443
.L2432:
	movzbl	3(%rdi), %esi
	movq	24(%rdi), %rdi
	andl	$31, %esi
	call	__get_del@PLT
.L2433:
	movq	0(%rbp), %rdx
	testq	%rax, %rax
	movb	%dl, 2(%rbx)
	jne	.L2444
.L2429:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2444:
	.cfi_restore_state
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	call	linkout_tevp
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	8(%rsp), %rax
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	addq	(%rdx), %rax
	movq	__cur_tevp@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rbx
	movq	%rax, 48(%rbx)
	je	.L2435
	movq	$0, 72(%rbx)
.L2435:
	movq	%rax, %rdx
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rdx
	xorq	%rax, %rdx
	imull	$-1640531535, %edx, %edx
	andl	$4095, %edx
	movslq	%edx, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2445
	cmpq	8(%rsi), %rax
	jne	.L2437
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2446
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
	jmp	.L2429
	.p2align 4,,10
	.p2align 3
.L2437:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2443:
	.cfi_restore_state
	call	__hizstrengate_getdel@PLT
	jmp	.L2433
	.p2align 4,,10
	.p2align 3
.L2445:
	movl	%edx, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2429
	.p2align 4,,10
	.p2align 3
.L2446:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2429
	.cfi_endproc
.LFE367:
	.size	__asl_stren_pend_chg_1gev, .-__asl_stren_pend_chg_1gev
	.p2align 4,,15
	.globl	__asl_reschd_caev
	.type	__asl_reschd_caev, @function
__asl_reschd_caev:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movzwl	8(%rdi), %esi
	movq	32(%rdi), %rdi
	shrw	$7, %si
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	addq	(%rdx), %rax
	cmpq	%rax, 48(%rbx)
	je	.L2447
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$1, 16(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2449
	movq	$0, 72(%rbx)
.L2449:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2454
	cmpq	8(%rsi), %rbp
	jne	.L2451
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2455
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
.L2447:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2451:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2454:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2447
	.p2align 4,,10
	.p2align 3
.L2455:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2447
	.cfi_endproc
.LFE368:
	.size	__asl_reschd_caev, .-__asl_reschd_caev
	.p2align 4,,15
	.globl	__asl_reschd_caev_const
	.type	__asl_reschd_caev_const, @function
__asl_reschd_caev_const:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rbp
	addq	64(%rdi), %rbp
	cmpq	%rbp, 48(%rdi)
	je	.L2456
	movq	%rdi, %rbx
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	$1, 16(%rbx)
	movq	%rbp, 48(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2458
	movq	$0, 72(%rbx)
.L2458:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2463
	cmpq	8(%rsi), %rbp
	jne	.L2460
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2464
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
.L2456:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2460:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.p2align 4,,10
	.p2align 3
.L2463:
	.cfi_restore_state
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2456
	.p2align 4,,10
	.p2align 3
.L2464:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2456
	.cfi_endproc
.LFE369:
	.size	__asl_reschd_caev_const, .-__asl_reschd_caev_const
	.p2align 4,,15
	.globl	__asl_eval_tranif_ld
	.type	__asl_eval_tranif_ld, @function
__asl_eval_tranif_ld:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__idp@GOTPCREL(%rip), %rax
	movq	56(%rdi), %rdx
	movq	__old_gateval@GOTPCREL(%rip), %rbx
	movq	(%rax), %rax
	movl	(%rax), %esi
	movq	(%rax,%rdx,8), %rax
	leal	(%rsi,%rsi), %ecx
	andl	$62, %ecx
	shrq	%cl, %rax
	andl	$3, %eax
	movq	%rax, (%rbx)
	movq	80(%rdi), %rax
	movq	16(%rax), %rdi
	call	__eval2_xpr@PLT
	movq	16(%rax), %rdx
	movq	8(%rax), %rax
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	addq	%rdx, %rdx
	andl	$1, %eax
	andl	$2, %edx
	orq	%rdx, %rax
	cmpq	$2, %rax
	je	.L2466
	movq	__new_inputval@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	__xspi@GOTPCREL(%rip), %rdx
	subl	$1, (%rdx)
	movq	40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx), %edx
	cmpl	$34, %edx
	je	.L2469
	cmpl	$31, %edx
	je	.L2469
	testq	%rax, %rax
	jne	.L2478
	movl	$1, %eax
.L2469:
	cmpq	%rax, (%rbx)
	movq	__new_gateval@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	setne	%al
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movzbl	%al, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2466:
	.cfi_restore_state
	movq	__new_inputval@GOTPCREL(%rip), %rax
	movq	$3, (%rax)
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	movq	40(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %edx
	cmpl	$34, %edx
	je	.L2474
	cmpl	$31, %edx
	movl	$3, %eax
	jne	.L2469
.L2474:
	movl	$3, %eax
	jmp	.L2469
	.p2align 4,,10
	.p2align 3
.L2478:
	cmpq	$1, %rax
	jne	.L2469
	xorl	%eax, %eax
	jmp	.L2469
	.cfi_endproc
.LFE370:
	.size	__asl_eval_tranif_ld, .-__asl_eval_tranif_ld
	.p2align 4,,15
	.globl	__asl_update_tran_harddrvs
	.type	__asl_update_tran_harddrvs, @function
__asl_update_tran_harddrvs:
.LFB373:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpb	$0, 2(%rdi)
	js	.L2502
	call	__load_mdrwire@PLT
	movq	__xspi@GOTPCREL(%rip), %r12
	movq	%rax, %rbp
	movq	__maxxnest@GOTPCREL(%rip), %rdx
	movl	(%r12), %eax
	addl	$1, %eax
	cmpl	(%rdx), %eax
	movl	%eax, (%r12)
	jge	.L2503
.L2484:
	movq	__xstk@GOTPCREL(%rip), %rdx
	movl	8(%rbx), %ecx
	cltq
	movq	(%rdx), %rdx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	movq	(%rdx,%rax,8), %r13
	cmpl	4(%r13), %esi
	jg	.L2504
.L2485:
	movq	8(%r13), %rdi
	movq	88(%rbx), %rax
	movslq	%esi, %rsi
	movl	%ecx, 0(%r13)
	leaq	(%rdi,%rsi,8), %rsi
	movq	(%rax), %rdx
	movq	%rsi, 16(%r13)
	call	__ld_perinst_val@PLT
	movl	8(%rbx), %r15d
	cmpl	$64, %r15d
	jg	.L2486
	movq	8(%rbp), %r14
	movq	8(%r13), %rax
	movq	16(%rbp), %rcx
	movq	(%rax), %rax
	cmpq	%rax, (%r14)
	je	.L2505
.L2487:
	movq	88(%rbx), %rax
	movq	%r14, %rdx
	movl	%r15d, %esi
	movq	(%rax), %rdi
	call	__st_perinst_val@PLT
.L2482:
	movl	(%r12), %edx
	cmpb	$0, 2(%rbx)
	leal	-1(%rdx), %eax
	movl	%eax, (%r12)
	movl	$1, %eax
	js	.L2479
.L2501:
	subl	$2, %edx
	movl	%edx, (%r12)
.L2479:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2486:
	.cfi_restore_state
	leal	63(%r15), %r14d
	movq	8(%r13), %rdi
	sarl	$6, %r14d
	sall	$3, %r14d
	movslq	%r14d, %r8
	movq	8(%rbp), %r14
	movq	%r8, %rdx
	movq	%r8, 8(%rsp)
	movq	%r14, %rsi
	call	memcmp@PLT
	testl	%eax, %eax
	movq	16(%rbp), %rcx
	jne	.L2487
	movq	8(%rsp), %r8
	movq	16(%r13), %rdi
	movq	%rcx, %rsi
	movq	%rcx, 8(%rsp)
	movq	%r8, %rdx
	call	memcmp@PLT
	testl	%eax, %eax
	movq	8(%rsp), %rcx
	jne	.L2487
.L2483:
	movl	(%r12), %edx
	leal	-1(%rdx), %eax
	movl	%eax, (%r12)
	xorl	%eax, %eax
	cmpb	$0, 2(%rbx)
	jns	.L2501
	jmp	.L2479
	.p2align 4,,10
	.p2align 3
.L2503:
	call	__grow_xstk@PLT
	movl	(%r12), %eax
	jmp	.L2484
	.p2align 4,,10
	.p2align 3
.L2504:
	movq	%r13, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%rbx), %ecx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	jmp	.L2485
	.p2align 4,,10
	.p2align 3
.L2502:
	call	__stload_mdrwire@PLT
	movq	__idp@GOTPCREL(%rip), %rcx
	movl	8(%rbx), %edx
	movq	8(%rax), %r13
	movq	88(%rbx), %rax
	movq	(%rcx), %rcx
	movl	(%rcx), %ebp
	imull	%edx, %ebp
	movslq	%ebp, %rbp
	addq	(%rax), %rbp
	cmpl	$1, %edx
	je	.L2506
	movslq	%edx, %r12
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L2498
	movq	__xspi@GOTPCREL(%rip), %r12
	jmp	.L2483
	.p2align 4,,10
	.p2align 3
.L2498:
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	memcpy@PLT
	movq	__xspi@GOTPCREL(%rip), %r12
	jmp	.L2482
	.p2align 4,,10
	.p2align 3
.L2506:
	movzbl	0(%r13), %eax
	cmpb	0(%rbp), %al
	je	.L2500
	movb	%al, 0(%rbp)
.L2500:
	movq	__xspi@GOTPCREL(%rip), %r12
	jmp	.L2482
	.p2align 4,,10
	.p2align 3
.L2505:
	movq	16(%r13), %rax
	movq	(%rax), %rax
	cmpq	%rax, (%rcx)
	jne	.L2487
	jmp	.L2483
	.cfi_endproc
.LFE373:
	.size	__asl_update_tran_harddrvs, .-__asl_update_tran_harddrvs
	.p2align 4,,15
	.globl	__asl_tran_addr
	.type	__asl_tran_addr, @function
__asl_tran_addr:
.LFB374:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	88(%rdi), %rdx
	movq	(%rax), %rcx
	movl	8(%rdi), %eax
	imull	(%rcx), %eax
	cltq
	addq	(%rdx), %rax
	ret
	.cfi_endproc
.LFE374:
	.size	__asl_tran_addr, .-__asl_tran_addr
	.p2align 4,,15
	.globl	__asl_stren_schd_bidpthdrvrs
	.type	__asl_stren_schd_bidpthdrvrs, @function
__asl_stren_schd_bidpthdrvrs:
.LFB375:
	.cfi_startproc
	movzbl	(%rsi), %esi
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rsi, (%rax)
	movzbl	(%rdx), %edx
	movl	%ecx, %esi
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	%r8, %rdx
	jmp	asl_loc_schd_1bitpthdrvr
	.cfi_endproc
.LFE375:
	.size	__asl_stren_schd_bidpthdrvrs, .-__asl_stren_schd_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_schd_scalar_bidpthdrvrs
	.type	__asl_schd_scalar_bidpthdrvrs, @function
__asl_schd_scalar_bidpthdrvrs:
.LFB376:
	.cfi_startproc
	movslq	%ecx, %rax
	movzbl	(%rsi,%rax), %r9d
	movq	__new_gateval@GOTPCREL(%rip), %rsi
	movq	%r9, (%rsi)
	movzbl	(%rdx,%rax), %edx
	movl	%ecx, %esi
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	%r8, %rdx
	jmp	asl_loc_schd_1bitpthdrvr
	.cfi_endproc
.LFE376:
	.size	__asl_schd_scalar_bidpthdrvrs, .-__asl_schd_scalar_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_schd_bidpthdrvrs
	.type	__asl_schd_bidpthdrvrs, @function
__asl_schd_bidpthdrvrs:
.LFB377:
	.cfi_startproc
	movl	8(%rdi), %eax
	movl	%ecx, %r10d
	movl	%ecx, %r9d
	sarl	$6, %r10d
	andl	$63, %ecx
	movslq	%r10d, %r10
	addl	$63, %eax
	sarl	$6, %eax
	cltq
	salq	$3, %rax
	leaq	(%rax,%r10,8), %r11
	movq	(%rsi,%r11), %rax
	movq	(%rsi,%r10,8), %rsi
	shrq	%cl, %rax
	shrq	%cl, %rsi
	addq	%rax, %rax
	andl	$1, %esi
	andl	$2, %eax
	orq	%rsi, %rax
	movq	__new_gateval@GOTPCREL(%rip), %rsi
	movq	%rax, (%rsi)
	movq	(%rdx,%r11), %rax
	movl	%r9d, %esi
	movq	(%rdx,%r10,8), %rdx
	shrq	%cl, %rax
	addq	%rax, %rax
	shrq	%cl, %rdx
	andl	$1, %edx
	andl	$2, %eax
	orq	%rdx, %rax
	movq	__old_gateval@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	%r8, %rdx
	jmp	asl_loc_schd_1bitpthdrvr
	.cfi_endproc
.LFE377:
	.size	__asl_schd_bidpthdrvrs, .-__asl_schd_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_store_bidpthdrvrs
	.type	__asl_store_bidpthdrvrs, @function
__asl_store_bidpthdrvrs:
.LFB378:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	__new_gateval@GOTPCREL(%rip), %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edx, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	8(%rdi), %eax
	movq	(%r14), %rdx
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	addl	$63, %eax
	andl	$1, %edx
	sarl	$6, %eax
	cltq
	leaq	(%rsi,%rax,8), %r12
	movl	%r13d, %esi
	call	__lhsbsel@PLT
	movq	(%r14), %rdx
	movl	%r13d, %esi
	movq	%r12, %rdi
	shrq	%rdx
	andl	$1, %edx
	call	__lhsbsel@PLT
	movq	88(%rbp), %rax
	movl	8(%rbp), %esi
	movq	%r12, %rcx
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	movq	(%rax), %rdi
	jmp	__st_perinst_val@PLT
	.cfi_endproc
.LFE378:
	.size	__asl_store_bidpthdrvrs, .-__asl_store_bidpthdrvrs
	.p2align 4,,15
	.globl	__asl_trpath_scalar_store
	.type	__asl_trpath_scalar_store, @function
__asl_trpath_scalar_store:
.LFB379:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	88(%rdi), %rax
	movq	(%rdx), %rdx
	movslq	(%rdx), %rdx
	addq	(%rax), %rdx
	xorl	%eax, %eax
	movzbl	(%rdx), %ecx
	andl	$3, %ecx
	cmpq	%rsi, %rcx
	je	.L2513
	movb	%sil, (%rdx)
	movl	$1, %eax
.L2513:
	rep ret
	.cfi_endproc
.LFE379:
	.size	__asl_trpath_scalar_store, .-__asl_trpath_scalar_store
	.p2align 4,,15
	.globl	__asl_trpath_store
	.type	__asl_trpath_store, @function
__asl_trpath_store:
.LFB380:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r13
	movq	%rsi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	__xspi@GOTPCREL(%rip), %rbx
	movq	__maxxnest@GOTPCREL(%rip), %rdx
	movq	88(%rdi), %r14
	movl	(%rbx), %eax
	addl	$1, %eax
	cmpl	(%rdx), %eax
	movl	%eax, (%rbx)
	jge	.L2522
.L2517:
	movq	__xstk@GOTPCREL(%rip), %rdx
	movl	8(%r13), %ecx
	cltq
	movq	(%rdx), %rdx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	movq	(%rdx,%rax,8), %r15
	cmpl	4(%r15), %esi
	jg	.L2523
.L2518:
	movq	8(%r15), %rdi
	movslq	%esi, %rsi
	movq	(%r14), %rdx
	movl	%ecx, (%r15)
	leaq	(%rdi,%rsi,8), %rsi
	movq	%rsi, 16(%r15)
	call	__ld_perinst_val@PLT
	movl	%r12d, %edx
	movq	16(%r15), %rax
	movq	8(%r15), %rdi
	sarl	$6, %edx
	movl	%r12d, %ecx
	movslq	%edx, %rdx
	andl	$63, %ecx
	movq	(%rax,%rdx,8), %rax
	movq	(%rdi,%rdx,8), %rdx
	shrq	%cl, %rax
	shrq	%cl, %rdx
	addq	%rax, %rax
	andl	$1, %edx
	andl	$2, %eax
	orq	%rdx, %rax
	cmpq	%rbp, %rax
	je	.L2524
	movq	%rbp, %rdx
	movl	%r12d, %esi
	andl	$1, %edx
	call	__lhsbsel@PLT
	movq	16(%r15), %rdi
	movq	%rbp, %rdx
	movl	%r12d, %esi
	shrq	%rdx
	andl	$1, %edx
	call	__lhsbsel@PLT
	movq	16(%r15), %rcx
	movq	8(%r15), %rdx
	movl	8(%r13), %esi
	movq	(%r14), %rdi
	call	__st_perinst_val@PLT
	subl	$1, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2524:
	.cfi_restore_state
	subl	$1, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2523:
	.cfi_restore_state
	movq	%r15, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%r13), %ecx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	jmp	.L2518
	.p2align 4,,10
	.p2align 3
.L2522:
	call	__grow_xstk@PLT
	movl	(%rbx), %eax
	jmp	.L2517
	.cfi_endproc
.LFE380:
	.size	__asl_trpath_store, .-__asl_trpath_store
	.p2align 4,,15
	.globl	__asl_eval_tran_bidchan_1bit
	.type	__asl_eval_tran_bidchan_1bit, @function
__asl_eval_tran_bidchan_1bit:
.LFB385:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	__chantab@GOTPCREL(%rip), %rax
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,4), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	movq	24(%rax), %rdi
	leaq	32(%rax), %rsi
	call	asl_loc_eval_combine_bid_chan.isra.11
	movq	__acum_b@GOTPCREL(%rip), %rdx
#APP
# 10347 "v_aslib.c" 1
	movq (%rdx), %rcx
# 0 "" 2
#NO_APP
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE385:
	.size	__asl_eval_tran_bidchan_1bit, .-__asl_eval_tran_bidchan_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_scalar_bidchan_1bit
	.type	__asl_eval_tran_scalar_bidchan_1bit, @function
__asl_eval_tran_scalar_bidchan_1bit:
.LFB386:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	__chantab@GOTPCREL(%rip), %rax
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,4), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	movq	24(%rax), %rdi
	leaq	32(%rax), %rsi
	call	asl_loc_eval_combine_bid_chan.isra.11
	movq	__acum_b@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	addq	%rdx, %rdx
	orq	%rdx, %rax
	ret
	.cfi_endproc
.LFE386:
	.size	__asl_eval_tran_scalar_bidchan_1bit, .-__asl_eval_tran_scalar_bidchan_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_stbidchan_1bit
	.type	__asl_eval_tran_stbidchan_1bit, @function
__asl_eval_tran_stbidchan_1bit:
.LFB387:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movslq	%edi, %rdi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	(%rdi,%rdi,4), %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	__chantab@GOTPCREL(%rip), %rax
	movq	__idp@GOTPCREL(%rip), %rbx
	movq	__acum_sb@GOTPCREL(%rip), %r12
	movq	(%rax), %rax
	movq	$2, (%r12)
	leaq	(%rax,%rdx,8), %rbp
	movq	(%rbx), %rax
	cmpq	$0, 32(%rbp)
	movq	24(%rbp), %r15
	movq	%rax, 8(%rsp)
	je	.L2535
	movl	$1, %r14d
	movl	$2, %eax
	xorl	%r13d, %r13d
	jmp	.L2534
	.p2align 4,,10
	.p2align 3
.L2545:
	movq	120(%r8), %rcx
	leaq	(%rdx,%rdx,4), %r9
	leaq	(%rcx,%r9,8), %r9
	testb	$1, (%r9)
	je	.L2532
	movq	32(%r8), %rdx
	leaq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rdi), %edx
.L2533:
	movzbl	(%r8), %edi
	movq	%rax, %rsi
	addq	$24, %r15
	andl	$31, %edi
	call	__comb_1bitsts@PLT
	cmpq	%r14, 32(%rbp)
	movq	%rax, (%r12)
	leaq	1(%r14), %rdx
	jbe	.L2530
	movq	%rdx, %r14
.L2534:
	movq	16(%r15), %rdx
	movslq	8(%r15), %rdi
	movq	(%r15), %r8
	movq	8(%rdx), %rsi
	cmpl	$-1, %edi
	movl	8(%r8), %edx
	cmove	%r13, %rdi
	imull	(%rsi), %edx
	movq	%rsi, (%rbx)
	addl	%edi, %edx
	testb	$32, 4(%r8)
	movslq	%edx, %rdx
	jne	.L2545
.L2532:
	movq	88(%r8), %rsi
	movq	(%rsi), %rsi
	movzbl	(%rsi,%rdx), %edx
	jmp	.L2533
	.p2align 4,,10
	.p2align 3
.L2535:
	movl	$2, %eax
.L2530:
	movq	8(%rsp), %rcx
	movq	%rcx, (%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE387:
	.size	__asl_eval_tran_stbidchan_1bit, .-__asl_eval_tran_stbidchan_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_bidchan_1bit_assign
	.type	__asl_eval_tran_bidchan_1bit_assign, @function
__asl_eval_tran_bidchan_1bit_assign:
.LFB388:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movslq	%edi, %rdi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	(%rdi,%rdi,4), %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	__idp@GOTPCREL(%rip), %r12
	movq	__acum_b@GOTPCREL(%rip), %rbx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	__chantab@GOTPCREL(%rip), %rax
	movq	$1, (%rbx)
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rbp
	movq	__acum_a@GOTPCREL(%rip), %rax
	cmpq	$0, 32(%rbp)
	movq	24(%rbp), %r15
	movq	$0, (%rax)
	movq	(%r12), %rax
	movq	%rax, 24(%rsp)
	je	.L2547
	leaq	48(%rsp), %rax
	movl	$1, %r14d
	movq	%r15, %r13
	movq	%rax, 8(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.L2553
	.p2align 4,,10
	.p2align 3
.L2586:
	cmpl	$-1, %ecx
	jne	.L2550
	movq	32(%r15), %rdx
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, %rcx
	andl	$1, %edx
	shrq	%rcx
	movq	%rdx, 40(%rsp)
	andl	$1, %ecx
	movq	%rcx, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L2551:
	movzbl	(%r15), %r8d
	movq	__acum_a@GOTPCREL(%rip), %rdi
	movq	%rbx, %rsi
	andl	$31, %r8d
	call	__eval_1w_nonstren@PLT
	testb	$1, 3(%r15)
	je	.L2552
	movq	$0, (%rbx)
.L2552:
	movq	32(%rbp), %rax
	addq	$24, %r13
	leaq	1(%r14), %rdx
	cmpq	%r14, %rax
	jbe	.L2585
	movq	%rdx, %r14
.L2553:
	movl	8(%r13), %ecx
	movq	0(%r13), %r15
	movl	$0, %edi
	movq	16(%r13), %rax
	cmpl	$-1, %ecx
	cmovne	%ecx, %edi
	testb	$32, 4(%r15)
	movq	8(%rax), %rsi
	movq	%rsi, (%r12)
	je	.L2549
	movl	8(%r15), %edx
	imull	(%rsi), %edx
	addl	%edi, %edx
	movq	120(%r15), %rdi
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rdi,%rdx,8), %rdx
	testb	$1, (%rdx)
	jne	.L2586
.L2549:
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%r15, %rdx
	call	asl_loc_ld_vtx_netbit
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	jmp	.L2551
	.p2align 4,,10
	.p2align 3
.L2547:
	movq	24(%rsp), %rax
	movq	%rax, (%r12)
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L2587
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2550:
	.cfi_restore_state
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%r15, %rdx
	call	__ld_bit@PLT
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	jmp	.L2551
	.p2align 4,,10
	.p2align 3
.L2585:
	testq	%rax, %rax
	movq	24(%rbp), %r14
	je	.L2547
	leaq	56(%rsp), %rax
	movl	$1, %r15d
	leaq	64(%rsp), %r13
	movq	%rax, 8(%rsp)
	movq	%r15, %rax
	movq	%r14, %r15
	movq	%rax, %r14
	jmp	.L2560
	.p2align 4,,10
	.p2align 3
.L2588:
	andl	$4, %edx
	je	.L2559
	movq	8(%rsp), %rsi
	movq	%r13, %rdx
	call	__chg_st_val@PLT
	.p2align 4,,10
	.p2align 3
.L2557:
	addq	$24, %r15
	cmpq	%r14, 32(%rbp)
	leaq	1(%r14), %rax
	jbe	.L2547
	movq	%rax, %r14
.L2560:
	movl	8(%r15), %esi
	movq	(%r15), %rdi
	movl	$0, %r9d
	movq	16(%r15), %rax
	movq	__acum_a@GOTPCREL(%rip), %rdx
	cmpl	$-1, %esi
	cmove	%r9d, %esi
	testb	$1, 3(%rdi)
	movq	8(%rax), %rcx
	movq	(%rdx), %rdx
	movq	(%rbx), %rax
	movq	%rcx, (%r12)
	movq	%rdx, 56(%rsp)
	movq	%rax, 64(%rsp)
	je	.L2555
	notq	%rax
	movq	$0, 64(%rsp)
	andq	%rdx, %rax
	movq	%rax, 56(%rsp)
.L2555:
	movzbl	4(%rdi), %edx
	testb	$32, %dl
	je	.L2556
	movl	8(%rdi), %eax
	imull	(%rcx), %eax
	movq	120(%rdi), %rcx
	addl	%esi, %eax
	cltq
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rax
	testb	$1, (%rax)
	jne	.L2557
.L2556:
	testb	$4, 2(%rdi)
	je	.L2588
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	call	__chg_st_bit@PLT
	jmp	.L2557
	.p2align 4,,10
	.p2align 3
.L2559:
	movl	8(%rdi), %ecx
	movq	8(%rsp), %rsi
	movq	%r13, %rdx
	call	__st_val@PLT
	jmp	.L2557
.L2587:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE388:
	.size	__asl_eval_tran_bidchan_1bit_assign, .-__asl_eval_tran_bidchan_1bit_assign
	.p2align 4,,15
	.globl	__asl_eval_tran_stbidchan_1bit_assign
	.type	__asl_eval_tran_stbidchan_1bit_assign, @function
__asl_eval_tran_stbidchan_1bit_assign:
.LFB389:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movslq	%edi, %rdi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	(%rdi,%rdi,4), %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	__chantab@GOTPCREL(%rip), %rax
	movq	__idp@GOTPCREL(%rip), %r15
	movq	__acum_sb@GOTPCREL(%rip), %rbp
	movq	(%rax), %rax
	movq	$2, 0(%rbp)
	leaq	(%rax,%rdx,8), %rbx
	movq	(%r15), %rax
	cmpq	$0, 32(%rbx)
	movq	24(%rbx), %r14
	movq	%rax, (%rsp)
	je	.L2590
	movl	$1, %r12d
	movl	$2, %eax
	xorl	%r13d, %r13d
	jmp	.L2594
	.p2align 4,,10
	.p2align 3
.L2632:
	movq	120(%rsi), %r10
	leaq	(%rdx,%rdx,4), %r9
	leaq	(%r10,%r9,8), %r9
	testb	$1, (%r9)
	je	.L2592
	movq	32(%rsi), %r9
	movslq	%r8d, %rdx
	leaq	(%rdi,%r9,8), %rdi
	movzbl	(%rdi,%rdx), %edx
.L2593:
	movzbl	(%rsi), %edi
	movq	%rax, %rsi
	addq	$24, %r14
	andl	$31, %edi
	call	__comb_1bitsts@PLT
	movq	32(%rbx), %rdx
	movq	%rax, 0(%rbp)
	leaq	1(%r12), %rsi
	cmpq	%r12, %rdx
	jbe	.L2631
	movq	%rsi, %r12
.L2594:
	movq	16(%r14), %rdx
	movl	8(%r14), %r8d
	movq	(%r14), %rsi
	movq	8(%rdx), %rdi
	cmpl	$-1, %r8d
	cmove	%r13d, %r8d
	movl	8(%rsi), %edx
	imull	(%rdi), %edx
	movq	%rdi, (%r15)
	addl	%r8d, %edx
	testb	$32, 4(%rsi)
	movslq	%edx, %rdx
	jne	.L2632
.L2592:
	movq	88(%rsi), %rdi
	movq	(%rdi), %rdi
	movzbl	(%rdi,%rdx), %edx
	jmp	.L2593
	.p2align 4,,10
	.p2align 3
.L2590:
	movq	(%rsp), %rax
	movq	%rax, (%r15)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2631:
	.cfi_restore_state
	testq	%rdx, %rdx
	movq	24(%rbx), %r13
	je	.L2590
	movl	$1, %r12d
	jmp	.L2605
	.p2align 4,,10
	.p2align 3
.L2598:
	cmpq	%rax, %rcx
	je	.L2597
	movb	%al, (%rdx)
	movzbl	4(%r14), %eax
	testb	$4, %al
	je	.L2597
	movq	__lhs_changed@GOTPCREL(%rip), %rdx
	testb	$8, %al
	movl	$0, (%rdx)
	jne	.L2633
.L2601:
	cmpq	$0, 224(%r14)
	je	.L2602
	movq	%r14, %rdi
	movl	%r9d, 12(%rsp)
	call	__add_togglelst_el@PLT
	movl	12(%rsp), %r9d
.L2602:
	movq	96(%r14), %rdx
	movq	(%r15), %rax
	movq	(%rax,%rdx,8), %rax
	testb	$8, %al
	je	.L2634
	movq	%rax, %rdx
	andl	$3, %edx
	cmpq	$3, %rdx
	je	.L2635
.L2604:
	andl	$48, %eax
	cmpq	$48, %rax
	je	.L2636
	.p2align 4,,10
	.p2align 3
.L2597:
	addq	$24, %r13
	cmpq	%r12, 32(%rbx)
	leaq	1(%r12), %rdx
	jbe	.L2590
	movq	0(%rbp), %rax
	movq	%rdx, %r12
.L2605:
	movl	8(%r13), %r9d
	movq	0(%r13), %r14
	movl	$0, %ecx
	movq	16(%r13), %rdx
	cmpl	$-1, %r9d
	movq	32(%r14), %rsi
	cmovne	%r9d, %ecx
	testb	$32, 4(%r14)
	movq	8(%rdx), %rdi
	leaq	0(,%rsi,8), %r11
	movq	%rdi, (%r15)
	je	.L2596
	movl	8(%r14), %esi
	movq	120(%r14), %r8
	imull	(%rdi), %esi
	addl	%ecx, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,4), %rdx
	leaq	(%r8,%rdx,8), %rdx
	testb	$1, (%rdx)
	jne	.L2597
.L2596:
	movzbl	(%r14), %esi
	movslq	%ecx, %rdx
	addq	%r11, %rdx
	addq	%rdi, %rdx
	movzbl	(%rdx), %ecx
	andl	$31, %esi
	cmpb	$6, %sil
	jne	.L2598
	movq	__wire_init@GOTPCREL(%rip), %rsi
	movl	(%rsi), %esi
	testl	%esi, %esi
	je	.L2599
	movzbl	3(%r14), %eax
	movq	__cap_to_stren@GOTPCREL(%rip), %rsi
	shrb	%al
	andl	$3, %eax
	movq	(%rsi,%rax,8), %rax
	orl	$3, %eax
	movzbl	%al, %eax
	jmp	.L2598
	.p2align 4,,10
	.p2align 3
.L2599:
	cmpq	$2, %rax
	jne	.L2598
	movzbl	3(%r14), %esi
	movq	__cap_to_stren@GOTPCREL(%rip), %rdi
	movl	%ecx, %eax
	andl	$3, %eax
	shrb	%sil
	andl	$3, %esi
	orb	(%rdi,%rsi,8), %al
	movzbl	%al, %eax
	jmp	.L2598
	.p2align 4,,10
	.p2align 3
.L2633:
	movl	%r9d, %edx
	movl	%r9d, %esi
	movq	%r14, %rdi
	movl	%r9d, 12(%rsp)
	call	__wakeup_delay_ctrls@PLT
	movl	12(%rsp), %r9d
	jmp	.L2601
	.p2align 4,,10
	.p2align 3
.L2634:
	movl	%r9d, %edx
	movl	%r9d, %esi
	movq	%r14, %rdi
	movl	%r9d, 12(%rsp)
	call	__add_select_nchglst_el@PLT
	movq	96(%r14), %rdx
	movq	(%r15), %rax
	movl	12(%rsp), %r9d
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdx
	andl	$3, %edx
	cmpq	$3, %rdx
	jne	.L2604
.L2635:
	movl	%r9d, %esi
	movq	%r14, %rdi
	call	__add_dmpv_chglst_el_sel@PLT
	movq	96(%r14), %rdx
	movq	(%r15), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$48, %eax
	cmpq	$48, %rax
	jne	.L2597
.L2636:
	movq	%r14, %rdi
	call	__add_dp_chglst_el@PLT
	jmp	.L2597
	.cfi_endproc
.LFE389:
	.size	__asl_eval_tran_stbidchan_1bit_assign, .-__asl_eval_tran_stbidchan_1bit_assign
	.p2align 4,,15
	.globl	__asl_eval_tran_bidchan_vectored_assign
	.type	__asl_eval_tran_bidchan_vectored_assign, @function
__asl_eval_tran_bidchan_vectored_assign:
.LFB390:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	__idp@GOTPCREL(%rip), %rax
	movq	88(%rdi), %rdx
	movq	__maxxnest@GOTPCREL(%rip), %r12
	movq	__xspi@GOTPCREL(%rip), %rcx
	movq	(%rax), %rbx
	movl	8(%rdi), %eax
	movq	8(%rdx), %rdx
	imull	(%rbx), %eax
	movq	%rbx, (%rsp)
	cltq
	movq	(%rdx,%rax,8), %rax
	movslq	(%rax), %rax
	leaq	(%rax,%rax,4), %rdx
	movq	__chantab@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rbx
	movq	__xspi@GOTPCREL(%rip), %rax
	movq	24(%rbx), %rbp
	movl	(%rax), %eax
	movq	0(%rbp), %r13
	movl	%eax, 12(%rsp)
	addl	$1, %eax
	cmpl	(%r12), %eax
	movl	%eax, (%rcx)
	jge	.L2659
.L2638:
	movq	__xstk@GOTPCREL(%rip), %r15
	cltq
	movq	(%r15), %rdx
	movq	(%rdx,%rax,8), %r14
	movl	8(%r13), %eax
	leal	63(%rax), %esi
	sarl	$6, %esi
	cmpl	4(%r14), %esi
	jg	.L2660
.L2639:
	movq	8(%r14), %rdi
	movslq	%esi, %rdx
	sall	$3, %esi
	movl	%eax, (%r14)
	leaq	(%rdi,%rdx,8), %rdx
	movq	%rdx, 16(%r14)
	movslq	%esi, %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movl	8(%r13), %edx
	movq	16(%r14), %r8
	leal	63(%rdx), %esi
	sarl	$6, %esi
	testl	%esi, %esi
	jle	.L2642
	leal	-1(%rsi), %ecx
	movq	%r8, %rax
	leaq	8(%r8,%rcx,8), %rdi
	movq	$-1, %rcx
	.p2align 4,,10
	.p2align 3
.L2641:
	movq	%rcx, (%rax)
	addq	$8, %rax
	cmpq	%rax, %rdi
	jne	.L2641
.L2642:
	movq	__masktab@GOTPCREL(%rip), %rcx
	movl	%edx, %edi
	movslq	%esi, %rax
	andl	$63, %edi
	movq	(%rcx,%rdi,8), %rcx
	andq	%rcx, -8(%r8,%rax,8)
	movq	__xspi@GOTPCREL(%rip), %rax
	movq	__xspi@GOTPCREL(%rip), %rcx
	movl	(%rax), %eax
	movl	%eax, 12(%rsp)
	addl	$1, %eax
	cmpl	(%r12), %eax
	movl	%eax, (%rcx)
	jge	.L2661
.L2643:
	movq	(%r15), %rcx
	cltq
	movq	(%rcx,%rax,8), %r15
	cmpl	%esi, 4(%r15)
	jl	.L2662
.L2644:
	movq	8(%r15), %rdi
	cmpq	$0, 32(%rbx)
	movslq	%esi, %rsi
	movl	%edx, (%r15)
	leaq	(%rdi,%rsi,8), %rsi
	movq	%rsi, 16(%r15)
	je	.L2645
	movl	$1, %r12d
	jmp	.L2647
	.p2align 4,,10
	.p2align 3
.L2663:
	movq	16(%r15), %rsi
	movq	8(%r15), %rdi
	movq	%rcx, %r12
.L2647:
	movq	16(%rbp), %rdx
	movq	0(%rbp), %r13
	addq	$24, %rbp
	movq	__idp@GOTPCREL(%rip), %rax
	movq	8(%rdx), %rdx
	movl	8(%r13), %ecx
	movq	%rdx, (%rax)
	movq	88(%r13), %rdx
	movq	(%rdx), %rdx
	call	__ld_perinst_val@PLT
	movzbl	0(%r13), %r9d
	movq	16(%r15), %rcx
	movq	8(%r15), %rdx
	movq	16(%r14), %rsi
	movq	8(%r14), %rdi
	movl	8(%r13), %r8d
	andl	$31, %r9d
	call	__eval_wide_wire@PLT
	movq	32(%rbx), %rdx
	leaq	1(%r12), %rcx
	cmpq	%r12, %rdx
	ja	.L2663
	movq	__xspi@GOTPCREL(%rip), %rax
	movq	__xspi@GOTPCREL(%rip), %rsi
	movq	24(%rbx), %r13
	movl	(%rax), %eax
	movl	%eax, 12(%rsp)
	subl	$1, %eax
	testq	%rdx, %rdx
	movl	%eax, (%rsi)
	je	.L2648
	movl	$1, %r15d
	jmp	.L2651
	.p2align 4,,10
	.p2align 3
.L2665:
	call	__chg_st_val@PLT
	addq	$24, %r13
	cmpq	%r15, 32(%rbx)
	leaq	1(%r15), %rax
	jbe	.L2664
.L2652:
	movq	%rax, %r15
.L2651:
	movq	0(%r13), %rdi
	movq	16(%r13), %rax
	movq	__idp@GOTPCREL(%rip), %rcx
	movq	16(%r14), %rdx
	movq	8(%r14), %rsi
	testb	$4, 4(%rdi)
	movq	8(%rax), %rax
	movq	%rax, (%rcx)
	jne	.L2665
	movl	(%r14), %ecx
	addq	$24, %r13
	call	__st_val@PLT
	cmpq	%r15, 32(%rbx)
	leaq	1(%r15), %rax
	ja	.L2652
.L2664:
	movq	__xspi@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
.L2648:
	movq	__xspi@GOTPCREL(%rip), %rbx
	subl	$1, %eax
	movl	%eax, (%rbx)
	movq	(%rsp), %rbx
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2659:
	.cfi_restore_state
	call	__grow_xstk@PLT
	movq	__xspi@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	jmp	.L2638
	.p2align 4,,10
	.p2align 3
.L2662:
	movq	%r15, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%r13), %edx
	leal	63(%rdx), %esi
	sarl	$6, %esi
	jmp	.L2644
	.p2align 4,,10
	.p2align 3
.L2661:
	call	__grow_xstk@PLT
	movl	8(%r13), %edx
	movq	__xspi@GOTPCREL(%rip), %rax
	leal	63(%rdx), %esi
	movl	(%rax), %eax
	sarl	$6, %esi
	jmp	.L2643
	.p2align 4,,10
	.p2align 3
.L2660:
	movq	%r14, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%r13), %eax
	leal	63(%rax), %esi
	sarl	$6, %esi
	jmp	.L2639
	.p2align 4,,10
	.p2align 3
.L2645:
	movq	__xspi@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, 12(%rsp)
	subl	$1, %eax
	jmp	.L2648
	.cfi_endproc
.LFE390:
	.size	__asl_eval_tran_bidchan_vectored_assign, .-__asl_eval_tran_bidchan_vectored_assign
	.p2align 4,,15
	.globl	__asl_eval_tran_stbidchan_vectored_assign
	.type	__asl_eval_tran_stbidchan_vectored_assign, @function
__asl_eval_tran_stbidchan_vectored_assign:
.LFB391:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	__idp@GOTPCREL(%rip), %r13
	movl	8(%rdi), %eax
	movq	88(%rdi), %rdx
	movq	__xspi@GOTPCREL(%rip), %r14
	movq	0(%r13), %rbx
	movq	8(%rdx), %rdx
	imull	(%rbx), %eax
	movq	%rbx, 8(%rsp)
	cltq
	movq	(%rdx,%rax,8), %rax
	movslq	(%rax), %rax
	leaq	(%rax,%rax,4), %rdx
	movq	__chantab@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %r12
	movl	(%r14), %eax
	movq	__maxxnest@GOTPCREL(%rip), %rdx
	movq	24(%r12), %rbx
	addl	$1, %eax
	cmpl	(%rdx), %eax
	movl	%eax, (%r14)
	jge	.L2683
.L2667:
	movq	__xstk@GOTPCREL(%rip), %rdx
	cltq
	movq	(%rdx), %rdx
	movq	(%rdx,%rax,8), %r15
	movq	(%rbx), %rdx
	movl	8(%rdx), %edx
	leal	0(,%rdx,4), %ecx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	cmpl	4(%r15), %esi
	jg	.L2684
.L2668:
	movq	8(%r15), %rbp
	movslq	%esi, %rsi
	testl	%edx, %edx
	movl	%ecx, (%r15)
	leaq	0(%rbp,%rsi,8), %rsi
	movq	%rsi, 16(%r15)
	jle	.L2669
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L2670:
	movb	$2, -1(%rbp,%rax)
	movq	(%rbx), %rdx
	movl	%eax, %ecx
	addq	$1, %rax
	cmpl	8(%rdx), %ecx
	jl	.L2670
.L2669:
	cmpq	$0, 32(%r12)
	je	.L2671
	movl	$1, %r15d
	jmp	.L2672
	.p2align 4,,10
	.p2align 3
.L2676:
	movq	%rcx, %r15
.L2672:
	movq	16(%rbx), %rdx
	movq	(%rbx), %rcx
	addq	$24, %rbx
	movq	8(%rdx), %rsi
	movl	8(%rcx), %edx
	movq	88(%rcx), %rdi
	movl	(%rsi), %r8d
	movq	%rsi, 0(%r13)
	movzbl	(%rcx), %esi
	xorl	%ecx, %ecx
	imull	%edx, %r8d
	subl	$1, %edx
	andl	$31, %esi
	movslq	%r8d, %r8
	addq	(%rdi), %r8
	movq	%rbp, %rdi
	call	__eval_stwire@PLT
	movq	32(%r12), %rdx
	leaq	1(%r15), %rcx
	cmpq	%r15, %rdx
	ja	.L2676
	testq	%rdx, %rdx
	movq	24(%r12), %rbx
	je	.L2671
	movl	$1, %r15d
	jmp	.L2675
	.p2align 4,,10
	.p2align 3
.L2685:
	xorl	%edx, %edx
	movq	%rbp, %rsi
	addq	$24, %rbx
	call	__chg_st_val@PLT
	cmpq	%r15, 32(%r12)
	leaq	1(%r15), %rdx
	jbe	.L2671
.L2677:
	movq	%rdx, %r15
.L2675:
	movq	(%rbx), %rdi
	movq	16(%rbx), %rdx
	testb	$4, 4(%rdi)
	movq	8(%rdx), %rdx
	movq	%rdx, 0(%r13)
	jne	.L2685
	movl	8(%rdi), %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	addq	$24, %rbx
	call	__st_val@PLT
	cmpq	%r15, 32(%r12)
	leaq	1(%r15), %rdx
	ja	.L2677
.L2671:
	movq	8(%rsp), %rax
	subl	$1, (%r14)
	movq	%rax, 0(%r13)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2683:
	.cfi_restore_state
	call	__grow_xstk@PLT
	movl	(%r14), %eax
	jmp	.L2667
	.p2align 4,,10
	.p2align 3
.L2684:
	movq	%r15, %rdi
	call	__chg_xstk_width@PLT
	movq	(%rbx), %rdx
	movl	8(%rdx), %edx
	leal	0(,%rdx,4), %ecx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	jmp	.L2668
	.cfi_endproc
.LFE391:
	.size	__asl_eval_tran_stbidchan_vectored_assign, .-__asl_eval_tran_stbidchan_vectored_assign
	.p2align 4,,15
	.globl	__asl_eval_htran_wire_1bit
	.type	__asl_eval_htran_wire_1bit, @function
__asl_eval_htran_wire_1bit:
.LFB398:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	%ebp, %ecx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%rbx, %rdx
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	asl_loc_ld_vtx_netbit
	testb	$32, 4(%rbx)
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	je	.L2687
	movl	8(%rbx), %eax
	movq	120(%rbx), %rdx
	imull	(%rsi), %eax
	addl	%ebp, %eax
	cltq
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,8), %rax
	testb	$1, (%rax)
	je	.L2687
.L2686:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L2695
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2687:
	.cfi_restore_state
	testb	$4, 2(%rbx)
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdx
	jne	.L2689
	movq	32(%rbx), %rax
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, (%rsi,%rax,8)
	jmp	.L2686
	.p2align 4,,10
	.p2align 3
.L2689:
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	__st_bit@PLT
	jmp	.L2686
.L2695:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE398:
	.size	__asl_eval_htran_wire_1bit, .-__asl_eval_htran_wire_1bit
	.p2align 4,,15
	.globl	__asl_eval_htran_stwire_1bit
	.type	__asl_eval_htran_stwire_1bit, @function
__asl_eval_htran_stwire_1bit:
.LFB400:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	88(%rdi), %rcx
	movq	(%rax), %rdx
	movl	8(%rdi), %eax
	movq	(%rcx), %rcx
	imull	(%rdx), %eax
	addl	%esi, %eax
	testb	$32, 4(%rdi)
	cltq
	movzbl	(%rcx,%rax), %ecx
	je	.L2697
	movq	120(%rdi), %r8
	leaq	(%rax,%rax,4), %rax
	leaq	(%r8,%rax,8), %rax
	testb	$1, (%rax)
	jne	.L2696
.L2697:
	movq	32(%rdi), %rax
	movslq	%esi, %rsi
	leaq	(%rsi,%rax,8), %rax
	addq	%rax, %rdx
	movzbl	(%rdi), %eax
	andl	$31, %eax
	cmpb	$6, %al
	jne	.L2699
	cmpq	$2, %rcx
	je	.L2709
.L2699:
	movb	%cl, (%rdx)
.L2696:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2709:
	movzbl	3(%rdi), %eax
	movzbl	(%rdx), %ecx
	movq	__cap_to_stren@GOTPCREL(%rip), %rsi
	shrb	%al
	andl	$3, %ecx
	andl	$3, %eax
	orb	(%rsi,%rax,8), %cl
	movzbl	%cl, %ecx
	movb	%cl, (%rdx)
	jmp	.L2696
	.cfi_endproc
.LFE400:
	.size	__asl_eval_htran_stwire_1bit, .-__asl_eval_htran_stwire_1bit
	.p2align 4,,15
	.globl	__asl_qc_active
	.type	__asl_qc_active, @function
__asl_qc_active:
.LFB403:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	8(%rdi), %eax
	imull	(%rdx), %eax
	movq	120(%rdi), %rdx
	addl	%eax, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,4), %rax
	leaq	(%rdx,%rax,8), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE403:
	.size	__asl_qc_active, .-__asl_qc_active
	.set	__asl_qc_active.localalias.29,__asl_qc_active
	.p2align 4,,15
	.globl	__asl_adjust_trireg
	.type	__asl_adjust_trireg, @function
__asl_adjust_trireg:
.LFB406:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L2711
	leal	-1(%rdx), %r8d
	xorl	%eax, %eax
	addq	$1, %r8
	.p2align 4,,10
	.p2align 3
.L2714:
	cmpb	$2, (%rdi,%rax)
	jne	.L2713
	movzbl	(%rsi,%rax), %edx
	andl	$3, %edx
	orl	%ecx, %edx
	movb	%dl, (%rdi,%rax)
.L2713:
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L2714
.L2711:
	rep ret
	.cfi_endproc
.LFE406:
	.size	__asl_adjust_trireg, .-__asl_adjust_trireg
	.p2align 4,,15
	.globl	__asl_ld_tfrwarg_drvp
	.type	__asl_ld_tfrwarg_drvp, @function
__asl_ld_tfrwarg_drvp:
.LFB407:
	.cfi_startproc
	movl	(%rdi), %edx
	movq	16(%rdi), %rcx
	shrl	$11, %edx
	andl	$1048575, %edx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movq	40(%rcx), %rdx
	leaq	(%rdx,%rax,8), %rax
	movq	48(%rax), %rax
	ret
	.cfi_endproc
.LFE407:
	.size	__asl_ld_tfrwarg_drvp, .-__asl_ld_tfrwarg_drvp
	.p2align 4,,15
	.globl	__asl_get_perinst_val
	.type	__asl_get_perinst_val, @function
__asl_get_perinst_val:
.LFB408:
	.cfi_startproc
	leal	63(%rdx), %eax
	movq	%rsi, %r8
	movl	%edx, %ecx
	movq	%r8, %rdx
	sarl	$6, %eax
	cltq
	leaq	(%rdi,%rax,8), %rsi
	jmp	__ld_perinst_val@PLT
	.cfi_endproc
.LFE408:
	.size	__asl_get_perinst_val, .-__asl_get_perinst_val
	.p2align 4,,15
	.globl	__asl_wdel_trireg_sched_hiz
	.type	__asl_wdel_trireg_sched_hiz, @function
__asl_wdel_trireg_sched_hiz:
.LFB409:
	.cfi_startproc
	movq	__new_gateval@GOTPCREL(%rip), %rax
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%r8, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movzbl	%dl, %ebx
	movq	$2, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rsi, %rbp
	movl	%ecx, %r12d
	movq	%rbx, (%rax)
	movq	56(%rdi), %rax
	movzbl	8(%rax), %esi
	movq	16(%rax), %rdi
	andl	$31, %esi
	call	__get_del@PLT
	testq	%rax, %rax
	je	.L2718
	movzbl	3(%r14), %edx
	movq	__cap_to_stren@GOTPCREL(%rip), %rcx
	shrb	%dl
	andl	$3, %edx
	movq	(%rcx,%rdx,8), %rcx
	orl	$3, %ecx
	movb	%cl, 0(%rbp)
	cmpq	$0, 16(%r13)
	movzbl	%cl, %r8d
	je	.L2729
	movq	__simtime@GOTPCREL(%rip), %rdx
	addq	(%rdx), %rax
	cmpq	%r8, %rbx
	movq	%rax, %rsi
	je	.L2730
	cmpq	%rsi, 48(%r13)
	movb	%cl, 2(%r13)
	je	.L2718
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	asl_loc_reschedule_1wev.part.6
	.p2align 4,,10
	.p2align 3
.L2729:
	.cfi_restore_state
	cmpq	%r8, %rbx
	jne	.L2726
.L2718:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2726:
	.cfi_restore_state
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	%r13, %rsi
	movl	%r12d, %edi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	addq	%rax, %rcx
	jmp	asl_loc_schedule_1wev
	.p2align 4,,10
	.p2align 3
.L2730:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%r13, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	linkout_tevp
	.cfi_endproc
.LFE409:
	.size	__asl_wdel_trireg_sched_hiz, .-__asl_wdel_trireg_sched_hiz
	.p2align 4,,15
	.globl	__asl_wdel_schd_1wirebit
	.type	__asl_wdel_schd_1wirebit, @function
__asl_wdel_schd_1wirebit:
.LFB411:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %r13d
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbp
	movq	%r8, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%r8)
	jne	.L2732
	cmpq	%rcx, %rdx
	je	.L2731
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	56(%rdi), %rax
	movzbl	8(%rax), %esi
	movq	16(%rax), %rdi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rsi
	addq	%rax, %rsi
	cmpq	$0, 16(%rbx)
	je	.L2738
.L2736:
	cmpq	%rsi, 48(%rbx)
	movb	%bpl, 2(%rbx)
	je	.L2731
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	asl_loc_reschedule_1wev.part.6
	.p2align 4,,10
	.p2align 3
.L2731:
	.cfi_restore_state
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2732:
	.cfi_restore_state
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, 8(%rsp)
	movq	%rcx, (%rax)
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	56(%rdi), %rax
	movzbl	8(%rax), %esi
	movq	16(%rax), %rdi
	andl	$31, %esi
	call	__get_del@PLT
	movq	__simtime@GOTPCREL(%rip), %rdx
	movq	8(%rsp), %rcx
	movq	(%rdx), %rsi
	addq	%rax, %rsi
	cmpq	$0, 16(%rbx)
	je	.L2738
	cmpq	%rcx, %rbp
	jne	.L2736
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	linkout_tevp
	.p2align 4,,10
	.p2align 3
.L2738:
	.cfi_restore_state
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rbp, %r8
	movq	%rsi, %rcx
	movl	%r13d, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	asl_loc_schedule_1wev
	.cfi_endproc
.LFE411:
	.size	__asl_wdel_schd_1wirebit, .-__asl_wdel_schd_1wirebit
	.p2align 4,,15
	.globl	__asl_schd_scalar_1wev
	.type	__asl_schd_scalar_1wev, @function
__asl_schd_scalar_1wev:
.LFB413:
	.cfi_startproc
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	48(%rdi), %rdx
	movq	$0, 80(%rdi)
	cmpq	(%rax), %rdi
	je	.L2741
	movq	$0, 72(%rdi)
.L2741:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2747
	cmpq	8(%rsi), %rdx
	jne	.L2744
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2748
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
.L2743:
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	$1, 16(%rbx)
	movq	(%rax), %rax
	movb	%al, 2(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2744:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	asl_loc_conflict_list
	jmp	.L2743
	.p2align 4,,10
	.p2align 3
.L2747:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2743
	.p2align 4,,10
	.p2align 3
.L2748:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2743
	.cfi_endproc
.LFE413:
	.size	__asl_schd_scalar_1wev, .-__asl_schd_scalar_1wev
	.p2align 4,,15
	.globl	__asl_schd_1wev
	.type	__asl_schd_1wev, @function
__asl_schd_1wev:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%esi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	48(%rdi), %rdx
	movq	$0, 80(%rdi)
	cmpq	(%rax), %rdi
	je	.L2750
	movq	$0, 72(%rdi)
.L2750:
	movq	%rdx, %rax
	movq	__time_hash@GOTPCREL(%rip), %rcx
	shrq	$32, %rax
	xorq	%rdx, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rsi
	movq	(%rcx,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.L2756
	cmpq	8(%rsi), %rdx
	jne	.L2753
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2757
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
.L2752:
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rbp, 8(%rbx)
	movq	$1, 16(%rbx)
	movq	(%rax), %rax
	movb	%al, 2(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2753:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	asl_loc_conflict_list
	jmp	.L2752
	.p2align 4,,10
	.p2align 3
.L2756:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2752
	.p2align 4,,10
	.p2align 3
.L2757:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2752
	.cfi_endproc
.LFE414:
	.size	__asl_schd_1wev, .-__asl_schd_1wev
	.p2align 4,,15
	.globl	__asl_reschd_1wev
	.type	__asl_reschd_1wev, @function
__asl_reschd_1wev:
.LFB416:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	cmpq	%rsi, 48(%rdi)
	movq	__new_gateval@GOTPCREL(%rip), %r12
	movq	(%r12), %rax
	je	.L2767
	movzbl	2(%rdi), %edx
	cmpq	%rax, %rdx
	je	.L2758
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	call	linkout_tevp
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	%rbp, 48(%rbx)
	movq	$0, 80(%rbx)
	cmpq	(%rax), %rbx
	je	.L2761
	movq	$0, 72(%rbx)
.L2761:
	movq	%rbp, %rax
	movq	__time_hash@GOTPCREL(%rip), %rdx
	shrq	$32, %rax
	xorq	%rbp, %rax
	imull	$-1640531535, %eax, %eax
	andl	$4095, %eax
	movslq	%eax, %rcx
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L2768
	cmpq	8(%rsi), %rbp
	jne	.L2764
	movq	24(%rsi), %rax
	movq	%rsi, 40(%rbx)
	testq	%rax, %rax
	je	.L2769
	movq	%rbx, 72(%rax)
	movq	%rax, 80(%rbx)
	movq	%rbx, 24(%rsi)
.L2763:
	movq	(%r12), %rax
	movq	$1, 16(%rbx)
	movb	%al, 2(%rbx)
.L2758:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2767:
	.cfi_restore_state
	movb	%al, 2(%rdi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2764:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	asl_loc_conflict_list
	jmp	.L2763
	.p2align 4,,10
	.p2align 3
.L2768:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	asl_loc_add_new_heap_time
	movq	%rbx, 24(%rax)
	movq	%rbx, 16(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	jmp	.L2763
	.p2align 4,,10
	.p2align 3
.L2769:
	movq	%rbx, 24(%rsi)
	movq	%rbx, 16(%rsi)
	jmp	.L2763
	.cfi_endproc
.LFE416:
	.size	__asl_reschd_1wev, .-__asl_reschd_1wev
	.p2align 4,,15
	.globl	__asl_sched_unknown_bit
	.type	__asl_sched_unknown_bit, @function
__asl_sched_unknown_bit:
.LFB417:
	.cfi_startproc
	movq	8(%rsi), %rdx
	movq	(%rsi), %rsi
	movl	$1, %ecx
	jmp	__schedorassign_unknown_bit@PLT
	.cfi_endproc
.LFE417:
	.size	__asl_sched_unknown_bit, .-__asl_sched_unknown_bit
	.p2align 4,,15
	.globl	__asl_bytecmp
	.type	__asl_bytecmp, @function
__asl_bytecmp:
.LFB418:
	.cfi_startproc
	movslq	%edx, %rdx
	jmp	memcmp@PLT
	.cfi_endproc
.LFE418:
	.size	__asl_bytecmp, .-__asl_bytecmp
	.p2align 4,,15
	.globl	__asl_wordcmp
	.type	__asl_wordcmp, @function
__asl_wordcmp:
.LFB419:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L2776
	movq	(%rsi), %rax
	cmpq	%rax, (%rdi)
	jne	.L2778
	leal	-1(%rdx), %eax
	leaq	8(,%rax,8), %rcx
	movl	$8, %eax
	jmp	.L2774
	.p2align 4,,10
	.p2align 3
.L2775:
	movq	(%rdi,%rax), %rdx
	addq	$8, %rax
	cmpq	-8(%rsi,%rax), %rdx
	jne	.L2778
.L2774:
	cmpq	%rcx, %rax
	jne	.L2775
.L2776:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L2778:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE419:
	.size	__asl_wordcmp, .-__asl_wordcmp
	.p2align 4,,15
	.globl	__asl_chk_ld_vpiputv_driver
	.type	__asl_chk_ld_vpiputv_driver, @function
__asl_chk_ld_vpiputv_driver:
.LFB420:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	72(%rsi), %rbx
	testq	%rbx, %rbx
	je	.L2779
	movq	%rsi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	jmp	.L2789
	.p2align 4,,10
	.p2align 3
.L2802:
	call	__get_npprefloc@PLT
	testq	%rax, %rax
	je	.L2779
	movq	__idp@GOTPCREL(%rip), %rbp
	movq	8(%rax), %rax
	movq	%rbx, %rdi
	movq	0(%rbp), %r14
	movq	%rax, 0(%rbp)
	call	__ld_vpiputv_driver@PLT
	movq	24(%rbx), %r15
	movq	%rax, %r13
	movq	%r14, 0(%rbp)
	testq	%r15, %r15
	je	.L2785
.L2803:
	movl	20(%r15), %edx
	cmpl	$-1, %edx
	je	.L2785
	subl	24(%r15), %edx
	movq	__xspi@GOTPCREL(%rip), %r12
	movq	__maxxnest@GOTPCREL(%rip), %rcx
	leal	1(%rdx), %eax
	movl	%edx, %ebp
	movl	%eax, 28(%rsp)
	movl	(%r12), %eax
	leal	1(%rax), %edx
	cmpl	(%rcx), %edx
	movl	%edx, (%r12)
	jge	.L2800
.L2786:
	movq	__xstk@GOTPCREL(%rip), %rcx
	movslq	%edx, %rdx
	addl	$64, %ebp
	sarl	$6, %ebp
	movq	(%rcx), %rcx
	movq	(%rcx,%rdx,8), %r14
	cmpl	4(%r14), %ebp
	jg	.L2801
.L2787:
	movq	8(%r14), %rdi
	movslq	%ebp, %rbp
	movq	8(%r13), %rsi
	leaq	(%rdi,%rbp,8), %rdx
	movl	28(%rsp), %ebp
	movq	%rdx, 16(%r14)
	movl	24(%r15), %edx
	movl	%ebp, (%r14)
	movl	%ebp, %ecx
	call	__rhspsel@PLT
	movq	16(%r14), %rdi
	movl	24(%r15), %edx
	movl	%ebp, %ecx
	movq	16(%r13), %rsi
	call	__rhspsel@PLT
	movq	8(%r14), %rsi
	movq	16(%rsp), %rdx
	movq	%rbx, %rcx
	movq	8(%rsp), %rdi
	movslq	%ebp, %r14
	call	__eval_wire@PLT
	movslq	24(%r15), %rcx
	movq	__nchged_i1@GOTPCREL(%rip), %rdx
	movl	(%r12), %eax
	movq	32(%rbx), %rbx
	movq	%rcx, (%rdx)
	movq	__nchged_i2@GOTPCREL(%rip), %rdx
	subl	$1, %eax
	subl	$1, %eax
	testq	%rbx, %rbx
	movl	%eax, (%r12)
	movq	%r14, (%rdx)
	je	.L2779
.L2789:
	movzbl	(%rbx), %eax
	movl	%eax, %edx
	andl	$15, %edx
	cmpb	$11, %dl
	jne	.L2779
	testb	$48, %al
	movq	%rbx, %rdi
	jne	.L2802
	call	__ld_vpiputv_driver@PLT
	movq	24(%rbx), %r15
	movq	%rax, %r13
	testq	%r15, %r15
	jne	.L2803
	.p2align 4,,10
	.p2align 3
.L2785:
	movq	8(%r13), %rsi
	movq	16(%rsp), %rdx
	movq	%rbx, %rcx
	movq	8(%rsp), %rdi
	call	__eval_wire@PLT
	movq	__xspi@GOTPCREL(%rip), %r12
	movq	32(%rbx), %rbx
	movl	(%r12), %eax
	subl	$1, %eax
	testq	%rbx, %rbx
	movl	%eax, (%r12)
	jne	.L2789
.L2779:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2800:
	.cfi_restore_state
	call	__grow_xstk@PLT
	movl	(%r12), %edx
	jmp	.L2786
	.p2align 4,,10
	.p2align 3
.L2801:
	movl	%ebp, %esi
	movq	%r14, %rdi
	call	__chg_xstk_width@PLT
	jmp	.L2787
	.cfi_endproc
.LFE420:
	.size	__asl_chk_ld_vpiputv_driver, .-__asl_chk_ld_vpiputv_driver
	.p2align 4,,15
	.globl	__asl_chk_dce_cbvc
	.type	__asl_chk_dce_cbvc, @function
__asl_chk_dce_cbvc:
.LFB421:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	movq	64(%rdi), %rbx
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L2804
	movq	%rdi, %rbp
	leaq	16(%rsp), %r13
	leaq	8(%rsp), %r12
	leaq	.LC1(%rip), %r14
	jmp	.L2829
	.p2align 4,,10
	.p2align 3
.L2806:
	cmpb	$14, %al
	je	.L2859
	cmpb	$13, %al
	jne	.L2804
.L2814:
	cmpb	$0, 3(%rbx)
	jne	.L2812
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, 96(%rbx)
	je	.L2860
.L2812:
	movq	128(%rbx), %rbx
	testq	%rbx, %rbx
	je	.L2804
.L2829:
	movzbl	(%rbx), %eax
	leal	-11(%rax), %edx
	cmpb	$1, %dl
	ja	.L2806
	cmpb	$12, %al
	je	.L2807
.L2810:
	cmpb	$0, 3(%rbx)
	jne	.L2812
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, 96(%rbx)
	jne	.L2812
	movq	48(%rbx), %rdx
	movq	$3, 16(%rsp)
	movq	$3, 8(%rsp)
	testq	%rdx, %rdx
	je	.L2816
	cmpb	$0, 2(%rbp)
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	js	.L2861
	call	__filter_dce_chg@PLT
	testl	%eax, %eax
	je	.L2812
.L2816:
	movq	%rbx, %rdi
	call	__pvc_call_misctf@PLT
	jmp	.L2814
	.p2align 4,,10
	.p2align 3
.L2860:
	movq	48(%rbx), %rsi
	movq	$3, 16(%rsp)
	movq	$3, 8(%rsp)
	testq	%rsi, %rsi
	je	.L2826
	movzbl	2(%rbp), %eax
	testb	$4, %al
	jne	.L2823
	testb	%al, %al
	jns	.L2824
	testb	$16, 2(%rbx)
	je	.L2825
.L2824:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rdi
	call	__scal_stfilter_dce_chg@PLT
	testl	%eax, %eax
	je	.L2812
.L2826:
	movq	80(%rbx), %rsi
	movb	$1, 3(%rbx)
	movq	%rbx, %rdi
	movq	8(%rsi), %rdx
	call	__cbvc_callback@PLT
	movq	80(%rbx), %rax
	testb	$32, 3(%rax)
	jne	.L2812
	movb	$0, 3(%rbx)
	movq	128(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L2829
	.p2align 4,,10
	.p2align 3
.L2804:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L2862
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2859:
	.cfi_restore_state
	movl	$11410, %esi
	movq	%r14, %rdi
	call	__misc_terr@PLT
	movq	__nchged_i1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpl	$-1, %eax
	je	.L2814
	cmpl	%eax, 56(%rbx)
	jg	.L2812
	movq	__nchged_i2@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rbx)
	jge	.L2814
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2823:
	testb	%al, %al
	movq	%rsi, %rdx
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	jns	.L2863
	testb	$16, 2(%rbx)
	je	.L2828
	call	__stfilter_dce_chg@PLT
	testl	%eax, %eax
	jne	.L2826
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2807:
	movl	$11377, %esi
	movq	%r14, %rdi
	call	__misc_terr@PLT
	movq	__nchged_i1@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpl	$-1, %eax
	je	.L2810
	cmpl	%eax, 56(%rbx)
	jg	.L2812
	movq	__nchged_i2@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rbx)
	jge	.L2810
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2863:
	call	__filter_dce_chg@PLT
	testl	%eax, %eax
	jne	.L2826
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2861:
	call	__stfilter_dce_chg@PLT
	testl	%eax, %eax
	je	.L2812
	movq	%rbx, %rdi
	call	__pvc_call_misctf@PLT
	jmp	.L2814
	.p2align 4,,10
	.p2align 3
.L2828:
	call	__vccb_vec_standval_filter@PLT
	testl	%eax, %eax
	jne	.L2826
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2825:
	movzbl	1(%rbx), %r8d
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rdi
	shrb	$3, %r8b
	andl	$1, %r8d
	call	__vccb_scal_standval_filter@PLT
	testl	%eax, %eax
	jne	.L2826
	jmp	.L2812
.L2862:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE421:
	.size	__asl_chk_dce_cbvc, .-__asl_chk_dce_cbvc
	.p2align 4,,15
	.globl	__asl_process_alloced_nchg
	.type	__asl_process_alloced_nchg, @function
__asl_process_alloced_nchg:
.LFB476:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	__nchged_delayed_mipd@GOTPCREL(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
#APP
# 14159 "v_aslib.c" 1
	movq %rax, %rbx
# 0 "" 2
#NO_APP
	movq	16(%rbx), %rdx
	movq	$0, (%rbx)
	movq	32(%rbx), %rbp
	movq	%rdx, (%rax)
	movq	40(%rbx), %rax
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	96(%rbp), %rdx
	andq	$-9, (%rax,%rdx,8)
	movslq	24(%rbx), %rdx
	movq	__nchged_i1@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movslq	28(%rbx), %rdx
	movq	__nchged_i2@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	160(%rbp), %rax
	testq	%rax, %rax
	je	.L2865
	cmpl	$1, 12(%rbp)
	jg	.L2875
.L2866:
#APP
# 14179 "v_aslib.c" 1
	movq __idp, %r15
# 0 "" 2
#NO_APP
	call	*%rax
.L2865:
	movq	168(%rbp), %rax
	testq	%rax, %rax
	je	.L2867
#APP
# 14189 "v_aslib.c" 1
	movq __idp, %r15
# 0 "" 2
#NO_APP
	call	*%rax
.L2867:
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__my_free@PLT
	.p2align 4,,10
	.p2align 3
.L2875:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	__asl_chk_dce_cbvc@PLT
	movq	160(%rbp), %rax
	jmp	.L2866
	.cfi_endproc
.LFE476:
	.size	__asl_process_alloced_nchg, .-__asl_process_alloced_nchg
	.p2align 4,,15
	.globl	__asl_chk_gate_vpi_chg
	.type	__asl_chk_gate_vpi_chg, @function
__asl_chk_gate_vpi_chg:
.LFB422:
	.cfi_startproc
	movq	__have_vpi_gateout_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2876
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	je	.L2876
	movslq	%edi, %rdi
	movq	(%rax,%rdi,8), %rax
	testq	%rax, %rax
	je	.L2876
	movslq	(%rdx), %rdx
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L2876
	jmp	__exec_vpi_gateoutcbs@PLT
	.p2align 4,,10
	.p2align 3
.L2876:
	rep ret
	.cfi_endproc
.LFE422:
	.size	__asl_chk_gate_vpi_chg, .-__asl_chk_gate_vpi_chg
	.p2align 4,,15
	.globl	__asl_timing_check_record
	.type	__asl_timing_check_record, @function
__asl_timing_check_record:
.LFB423:
	.cfi_startproc
	movq	__tcpendfreelst@GOTPCREL(%rip), %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L2893
	movq	16(%rax), %rcx
	movq	%rcx, (%rdx)
.L2889:
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	%rbx, (%rax)
	movq	$0, 16(%rax)
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	__tcpendlst_end@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	testq	%rcx, %rcx
	je	.L2890
	movq	%rax, 16(%rcx)
	movq	%rax, (%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2890:
	.cfi_restore_state
	movq	%rax, (%rdx)
	movq	__tcpendlst_hdr@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	__slotend_action@GOTPCREL(%rip), %rax
	orq	$1, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2893:
	.cfi_restore_state
	movl	$24, %edi
	call	__my_malloc@PLT
	jmp	.L2889
	.cfi_endproc
.LFE423:
	.size	__asl_timing_check_record, .-__asl_timing_check_record
	.p2align 4,,15
	.globl	__asl_exec_disable
	.type	__asl_exec_disable, @function
__asl_exec_disable:
.LFB424:
	.cfi_startproc
	movq	16(%rdi), %rdi
	jmp	__exec_disable@PLT
	.cfi_endproc
.LFE424:
	.size	__asl_exec_disable, .-__asl_exec_disable
	.p2align 4,,15
	.globl	__asl_downrel_targ_to_ref
	.type	__asl_downrel_targ_to_ref, @function
__asl_downrel_targ_to_ref:
.LFB425:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	__idp@GOTPCREL(%rip), %rax
	movl	8(%rdi), %ebx
	movq	(%rax), %rax
	testl	%ebx, %ebx
	movq	16(%rax), %r12
	js	.L2896
	movslq	%ebx, %rbp
	movq	%rdi, %r13
	salq	$3, %rbp
	jmp	.L2900
	.p2align 4,,10
	.p2align 3
.L2904:
	movq	%r12, %rdx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	__get_gref_giarr_ip@PLT
	cmpq	%rax, 32(%r12)
	jne	.L2901
.L2905:
	subl	$1, %ebx
	subq	$8, %rbp
	movq	16(%r12), %r12
	cmpl	$-1, %ebx
	je	.L2896
.L2900:
	movq	80(%r13), %rax
	cmpq	$0, (%rax,%rbp)
	jne	.L2904
	movq	72(%r13), %rax
	movq	(%rax,%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, 32(%r12)
	je	.L2905
.L2901:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	$-1, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2896:
	.cfi_restore_state
	movq	8(%r12), %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE425:
	.size	__asl_downrel_targ_to_ref, .-__asl_downrel_targ_to_ref
	.p2align 4,,15
	.globl	__asl_uprel_targ_to_ref
	.type	__asl_uprel_targ_to_ref, @function
__asl_uprel_targ_to_ref:
.LFB426:
	.cfi_startproc
	movq	64(%rdi), %r8
	movq	__idp@GOTPCREL(%rip), %rax
	movl	12(%r8), %edx
	movq	(%rax), %rax
	testl	%edx, %edx
	movq	16(%rax), %rcx
	movq	$-1, %rax
	jle	.L2906
	movq	88(%rdi), %rsi
	cmpq	(%rsi), %rcx
	je	.L2916
	leal	-1(%rdx), %eax
	leaq	8(,%rax,8), %rdi
	movl	$8, %eax
	jmp	.L2910
	.p2align 4,,10
	.p2align 3
.L2911:
	leaq	8(%rax), %rdx
	cmpq	%rcx, -8(%rsi,%rdx)
	je	.L2908
	movq	%rdx, %rax
.L2910:
	cmpq	%rax, %rdi
	jne	.L2911
	movq	$-1, %rax
.L2906:
	rep ret
	.p2align 4,,10
	.p2align 3
.L2916:
	xorl	%eax, %eax
.L2908:
	movq	208(%r8), %rdx
	movq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	ret
	.cfi_endproc
.LFE426:
	.size	__asl_uprel_targ_to_ref, .-__asl_uprel_targ_to_ref
	.p2align 4,,15
	.globl	__asl_add_static_nchglst_sel
	.type	__asl_add_static_nchglst_sel, @function
__asl_add_static_nchglst_sel:
.LFB428:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, (%rdi)
	je	.L2918
	cmpl	%esi, 24(%rdi)
	movl	%edx, 12(%rsp)
	movl	%esi, 8(%rsp)
	je	.L2917
	movl	$56, %edi
	call	__my_malloc@PLT
	movq	32(%rbx), %rcx
	movl	12(%rsp), %edx
	movq	%rax, %rbx
	movl	8(%rsp), %esi
	movq	%rcx, 32(%rax)
	movq	__asl_process_alloced_nchg@GOTPCREL(%rip), %rcx
	movq	%rcx, 8(%rax)
.L2918:
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, (%rbx)
	movl	%edx, 28(%rbx)
	movl	%esi, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 48(%rbx)
	movq	(%rax), %rdx
	movq	%rbx, (%rax)
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%rbx, 48(%rdx)
	movq	(%rax), %rax
	movq	%rax, 40(%rbx)
.L2917:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE428:
	.size	__asl_add_static_nchglst_sel, .-__asl_add_static_nchglst_sel
	.p2align 4,,15
	.globl	__asl_get_del_1x
	.type	__asl_get_del_1x, @function
__asl_get_del_1x:
.LFB436:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	__cur_thd@GOTPCREL(%rip), %rbx
	movq	(%rbx), %r12
	movq	$0, (%rbx)
	call	__eval2_xpr@PLT
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	asl_loc_delx_to_deltim
	movq	__xspi@GOTPCREL(%rip), %rdx
	movq	%r12, (%rbx)
	subl	$1, (%rdx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE436:
	.size	__asl_get_del_1x, .-__asl_get_del_1x
	.p2align 4,,15
	.globl	__asl_get_del_4x
	.type	__asl_get_del_4x, @function
__asl_get_del_4x:
.LFB437:
	.cfi_startproc
	movq	__new_gateval@GOTPCREL(%rip), %rax
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rax), %rax
	movq	__cur_thd@GOTPCREL(%rip), %rbx
	movq	(%rdi,%rax,8), %rbp
	movq	(%rbx), %r13
	movq	$0, (%rbx)
	testq	%rbp, %rbp
	je	.L2927
	movq	%rbp, %rdi
	call	__eval2_xpr@PLT
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	asl_loc_delx_to_deltim
	movq	__xspi@GOTPCREL(%rip), %rdx
	movq	%r13, (%rbx)
	subl	$1, (%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2927:
	.cfi_restore_state
	movq	(%rdi), %rbp
	movq	%rdi, %r12
	movq	%rbp, %rdi
	call	__eval2_xpr@PLT
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	asl_loc_delx_to_deltim
	movq	8(%r12), %r12
	movq	__xspi@GOTPCREL(%rip), %r14
	movq	%rax, %rbp
	movq	%r12, %rdi
	subl	$1, (%r14)
	call	__eval2_xpr@PLT
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	asl_loc_delx_to_deltim
	subl	$1, (%r14)
	cmpq	%rax, %rbp
	movq	%r13, (%rbx)
	cmovbe	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE437:
	.size	__asl_get_del_4x, .-__asl_get_del_4x
	.p2align 4,,15
	.globl	__asl_add_dmpv_chglst_el
	.type	__asl_add_dmpv_chglst_el, @function
__asl_add_dmpv_chglst_el:
.LFB448:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	96(%rdi), %rdx
	movq	(%rax), %rax
	andq	$-3, (%rax,%rdx,8)
	movq	__dv_chgnethdr@GOTPCREL(%rip), %rdx
	movslq	(%rax), %rax
	movq	(%rdx), %rcx
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	addq	200(%rdi), %rax
	movq	%rcx, 40(%rax)
	movq	%rax, (%rdx)
	movq	__slotend_action@GOTPCREL(%rip), %rax
	orq	$32, (%rax)
	ret
	.cfi_endproc
.LFE448:
	.size	__asl_add_dmpv_chglst_el, .-__asl_add_dmpv_chglst_el
	.p2align 4,,15
	.globl	__asl_add_dmpv_chglst_el_array
	.type	__asl_add_dmpv_chglst_el_array, @function
__asl_add_dmpv_chglst_el_array:
.LFB449:
	.cfi_startproc
	movq	208(%rdi), %rax
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L2929
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	216(%rdi), %eax
	imull	(%rdx), %eax
	addl	%eax, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,2), %rax
	salq	$4, %rax
	addq	200(%rdi), %rax
	movzbl	(%rax), %edx
	testb	$1, %dl
	jne	.L2929
	orl	$1, %edx
	movb	%dl, (%rax)
	movq	__dv_chgnethdr@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	movq	%rax, (%rdx)
	movq	%rcx, 40(%rax)
	movq	__slotend_action@GOTPCREL(%rip), %rax
	orq	$32, (%rax)
.L2929:
	rep ret
	.cfi_endproc
.LFE449:
	.size	__asl_add_dmpv_chglst_el_array, .-__asl_add_dmpv_chglst_el_array
	.p2align 4,,15
	.globl	__asl_add_dmpv_chglst_el_mdprt
	.type	__asl_add_dmpv_chglst_el_mdprt, @function
__asl_add_dmpv_chglst_el_mdprt:
.LFB450:
	.cfi_startproc
	testb	$1, 6(%rdi)
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	jne	.L2938
.L2932:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	96(%rbx), %rax
	leaq	(%rdx,%rax,8), %rcx
	movq	(%rcx), %rax
	movq	%rax, %rsi
	andl	$3, %esi
	cmpq	$3, %rsi
	je	.L2939
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2939:
	.cfi_restore_state
	andq	$-3, %rax
	movq	%rax, (%rcx)
	movslq	(%rdx), %rax
	movq	__dv_chgnethdr@GOTPCREL(%rip), %rdx
	leaq	(%rax,%rax,2), %rax
	movq	(%rdx), %rcx
	salq	$4, %rax
	addq	200(%rbx), %rax
	movq	%rcx, 40(%rax)
	movq	%rax, (%rdx)
	movq	__slotend_action@GOTPCREL(%rip), %rax
	orq	$32, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2938:
	.cfi_restore_state
	call	__add_togglelst_el@PLT
	jmp	.L2932
	.cfi_endproc
.LFE450:
	.size	__asl_add_dmpv_chglst_el_mdprt, .-__asl_add_dmpv_chglst_el_mdprt
	.p2align 4,,15
	.globl	__asl_add_dmpp_chglst_el
	.type	__asl_add_dmpp_chglst_el, @function
__asl_add_dmpp_chglst_el:
.LFB452:
	.cfi_startproc
	jmp	__add_dp_chglst_el@PLT
	.cfi_endproc
.LFE452:
	.size	__asl_add_dmpp_chglst_el, .-__asl_add_dmpp_chglst_el
	.p2align 4,,15
	.type	asl_loc_record_nchg, @function
asl_loc_record_nchg:
.LFB440:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	160(%rdi), %rax
	movq	%rdi, %rbx
	testq	%rax, %rax
	je	.L2942
	movslq	24(%rsi), %rcx
	movq	__nchged_i1@GOTPCREL(%rip), %rdx
	cmpl	$1, 12(%rdi)
	movq	%rcx, (%rdx)
	movslq	28(%rsi), %rcx
	movq	__nchged_i2@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	jg	.L2955
.L2943:
#APP
# 12528 "v_aslib.c" 1
	movq __idp, %r15
# 0 "" 2
#NO_APP
	call	*%rax
.L2942:
	cmpq	$0, 0(%rbp)
	jne	.L2944
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, 0(%rbp)
	movq	$0, 16(%rbp)
	movq	$0, 48(%rbp)
	movq	(%rax), %rdx
	movq	%rbp, (%rax)
	movq	%rbp, 48(%rdx)
.L2944:
	testb	$1, 6(%rbx)
	jne	.L2956
.L2945:
	movq	__idp@GOTPCREL(%rip), %rbp
	movq	96(%rbx), %rdx
	movq	0(%rbp), %rax
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, %rcx
	andl	$3, %ecx
	cmpq	$3, %rcx
	je	.L2957
.L2946:
	cmpb	$0, 4(%rbx)
	js	.L2958
.L2941:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2955:
	.cfi_restore_state
	call	__asl_chk_dce_cbvc@PLT
	movq	160(%rbx), %rax
	jmp	.L2943
	.p2align 4,,10
	.p2align 3
.L2958:
	movq	0(%rbp), %rax
	movq	96(%rbx), %rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, %rcx
	andl	$48, %ecx
	cmpq	$48, %rcx
	jne	.L2941
	andq	$-33, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__asl_add_dmpp_chglst_el@PLT
	.p2align 4,,10
	.p2align 3
.L2956:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	__add_togglelst_el@PLT
	jmp	.L2945
	.p2align 4,,10
	.p2align 3
.L2957:
	andq	$-3, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdx)
	call	__asl_add_dmpv_chglst_el@PLT
	jmp	.L2946
	.cfi_endproc
.LFE440:
	.size	asl_loc_record_nchg, .-asl_loc_record_nchg
	.p2align 4,,15
	.type	asl_loc_do_qc2_wirestore, @function
asl_loc_do_qc2_wirestore:
.LFB179:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r14
	movq	%rcx, %r12
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testb	$1, 3(%rdi)
	jne	.L3004
.L2960:
	movl	4(%r14), %ebp
	cmpl	$-1, %ebp
	je	.L2961
	movl	%ebp, %edx
	andl	$63, %ebp
	sarl	$6, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
.L2962:
	movq	__xspi@GOTPCREL(%rip), %rbx
	movq	__maxxnest@GOTPCREL(%rip), %rcx
	movl	(%rbx), %eax
	addl	$1, %eax
	cmpl	(%rcx), %eax
	movl	%eax, (%rbx)
	jge	.L3005
.L2964:
	movq	__xstk@GOTPCREL(%rip), %rcx
	cltq
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rbx
	movl	4(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.L3006
.L2965:
	movq	8(%rbx), %rsi
	movl	%ebp, %ecx
	movl	$1, (%rbx)
	leaq	8(%rsi), %rax
	movq	%rax, 16(%rbx)
	movq	8(%r15), %rax
	movq	(%rax,%rdx), %rax
	shrq	%cl, %rax
	andl	$1, %eax
	movq	%rax, (%rsi)
	movq	16(%r15), %rax
	movl	$1, %r15d
	movq	(%rax,%rdx), %rax
	shrq	%cl, %rax
	andl	$1, %eax
	movq	%rax, 8(%rsi)
.L2963:
	movq	24(%r14), %rax
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.L2966
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rbp
	movq	%rax, (%rdx)
.L2966:
	movzbl	2(%r13), %eax
	testb	%al, %al
	js	.L3007
	movq	8(%rbx), %rdx
	testb	$4, %al
	movq	(%rdx), %rdx
	je	.L2975
	testq	%r12, %r12
	movl	8(%r14), %esi
	je	.L2976
	movq	__idp@GOTPCREL(%rip), %rax
	testb	$1, 3(%r13)
	movq	32(%r13), %rcx
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rdi
	je	.L2977
	movl	%esi, %ecx
	sarl	$6, %esi
	andl	$1, %edx
	andl	$63, %ecx
	movslq	%esi, %rsi
	movl	$1, %eax
	salq	%cl, %rax
	salq	%cl, %rdx
	leaq	(%rdi,%rsi,8), %rcx
	movq	%rax, %rdi
	movq	(%rcx), %rsi
	andq	%rsi, %rdi
	cmpq	%rdi, %rdx
	je	.L2974
	notq	%rax
	andq	%rsi, %rax
	orq	%rax, %rdx
	movq	%rdx, (%rcx)
.L3001:
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	asl_loc_record_nchg
.L2974:
	testl	%r15d, %r15d
	je	.L2982
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
.L2982:
	testq	%rbp, %rbp
	je	.L2959
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%rbp, (%rax)
.L2959:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2975:
	.cfi_restore_state
	movq	16(%rbx), %rax
	movq	32(%r13), %rcx
	movq	(%rax), %rax
	addq	%rax, %rax
	orq	%rax, %rdx
	movq	__idp@GOTPCREL(%rip), %rax
	testq	%r12, %r12
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rax
	je	.L2981
	cmpq	%rdx, (%rax)
	je	.L2974
	movq	%rdx, (%rax)
	jmp	.L3001
	.p2align 4,,10
	.p2align 3
.L3007:
	movq	__xspi@GOTPCREL(%rip), %rcx
	movq	__maxxnest@GOTPCREL(%rip), %rdx
	movl	(%rcx), %eax
	addl	$1, %eax
	cmpl	(%rdx), %eax
	movl	%eax, (%rcx)
	jge	.L3008
.L2968:
	movq	__xstk@GOTPCREL(%rip), %rdx
	cltq
	movq	(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movl	4(%rax), %edx
	testl	%edx, %edx
	jle	.L3009
.L2969:
	movq	8(%rax), %r8
	movl	$8, (%rax)
	movq	%rbx, %rsi
	movq	%rcx, 8(%rsp)
	leaq	8(%r8), %rdx
	movq	%r8, %rdi
	movq	%r8, (%rsp)
	movq	%rdx, 16(%rax)
	movl	$54, %edx
	call	__st_standval@PLT
	movq	__idp@GOTPCREL(%rip), %rax
	testb	$4, 2(%r13)
	movq	32(%r13), %rdx
	movq	(%rsp), %r8
	movq	8(%rsp), %rcx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	jne	.L3010
	testq	%r12, %r12
	movzbl	(%r8), %edx
	je	.L2973
.L3003:
	cmpb	%dl, (%rax)
	je	.L2972
	movq	%rcx, (%rsp)
	movq	%r12, %rsi
	movb	%dl, (%rax)
	movq	%r13, %rdi
	call	asl_loc_record_nchg
	movq	(%rsp), %rcx
.L2972:
	subl	$1, (%rcx)
	jmp	.L2974
	.p2align 4,,10
	.p2align 3
.L2961:
	cmpl	$-1, 8(%r14)
	je	.L2984
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	jmp	.L2962
	.p2align 4,,10
	.p2align 3
.L3004:
	movq	16(%rdx), %rsi
	movq	8(%rdx), %rdi
	movl	(%rdx), %edx
	call	__cnvt_xzs_to_2state@PLT
	jmp	.L2960
	.p2align 4,,10
	.p2align 3
.L3005:
	movq	%rdx, (%rsp)
	call	__grow_xstk@PLT
	movl	(%rbx), %eax
	movq	(%rsp), %rdx
	jmp	.L2964
	.p2align 4,,10
	.p2align 3
.L3010:
	movslq	8(%r14), %rdx
	addq	%rdx, %rax
	testq	%r12, %r12
	movzbl	(%r8), %edx
	jne	.L3003
.L2973:
	movb	%dl, (%rax)
	jmp	.L2972
	.p2align 4,,10
	.p2align 3
.L2977:
	movq	16(%rbx), %rax
	movl	8(%r13), %r8d
	movq	(%rax), %rcx
	call	asl_loc_chg_vec_lhsbsel
	testl	%eax, %eax
	je	.L2974
	jmp	.L3001
	.p2align 4,,10
	.p2align 3
.L3006:
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	__chg_xstk_width@PLT
	movq	(%rsp), %rdx
	jmp	.L2965
	.p2align 4,,10
	.p2align 3
.L3008:
	movq	%rcx, (%rsp)
	call	__grow_xstk@PLT
	movq	(%rsp), %rcx
	movl	(%rcx), %eax
	jmp	.L2968
	.p2align 4,,10
	.p2align 3
.L2984:
	movq	%r15, %rbx
	xorl	%r15d, %r15d
	jmp	.L2963
	.p2align 4,,10
	.p2align 3
.L2981:
	movq	%rdx, (%rax)
	jmp	.L2974
	.p2align 4,,10
	.p2align 3
.L3009:
	movq	%rax, %rdi
	movl	$1, %esi
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	call	__chg_xstk_width@PLT
	movq	8(%rsp), %rcx
	movq	(%rsp), %rax
	jmp	.L2969
	.p2align 4,,10
	.p2align 3
.L2976:
	movq	16(%rbx), %rax
	movq	%r13, %rdi
	movq	(%rax), %rcx
	call	__st_bit@PLT
	jmp	.L2974
	.cfi_endproc
.LFE179:
	.size	asl_loc_do_qc2_wirestore, .-asl_loc_do_qc2_wirestore
	.p2align 4,,15
	.type	asl_loc_do_1bit_wireforce, @function
asl_loc_do_1bit_wireforce:
.LFB174:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leal	(%rdx,%rcx), %esi
	movq	%rdi, %r14
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	cmpl	$-1, %ecx
	cmovne	%esi, %edx
	movq	96(%rsp), %rax
	movq	104(%rsp), %r9
	movslq	%edx, %rdx
	movq	112(%rsp), %r12
	leaq	(%rdx,%rdx,4), %rsi
	movq	120(%r13), %rdx
	leaq	(%rdx,%rsi,8), %rbx
	testb	$1, (%rbx)
	je	.L3013
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L3013
	movq	%r9, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	%r8d, 12(%rsp)
	movl	%ecx, 8(%rsp)
	call	__dcelst_off@PLT
	movq	24(%rsp), %r9
	movq	16(%rsp), %rax
	movl	12(%rsp), %r8d
	movl	8(%rsp), %ecx
.L3013:
	movq	__idp@GOTPCREL(%rip), %rbp
	movq	%rax, 32(%rbx)
	testq	%r15, %r15
	movq	16(%r14), %rax
	movq	%r14, 16(%rbx)
	movl	%r8d, 4(%rbx)
	movl	%ecx, 8(%rbx)
	movq	0(%rbp), %rdx
	movq	16(%rax), %rdi
	movq	8(%rax), %rsi
	movq	%rdx, 24(%rbx)
	je	.L3014
	movq	%r9, 0(%rbp)
	call	__eval_assign_rhsexpr@PLT
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	%rbx, %rsi
	call	asl_loc_do_qc2_wirestore
	movq	__xspi@GOTPCREL(%rip), %rax
	movq	32(%rbx), %rdi
	subl	$1, (%rax)
	orb	$1, (%rbx)
	testq	%rdi, %rdi
	jne	.L3015
.L3018:
	movq	%r15, 0(%rbp)
.L3011:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3015:
	.cfi_restore_state
	call	__dcelst_on@PLT
	jmp	.L3018
	.p2align 4,,10
	.p2align 3
.L3014:
	call	__eval_assign_rhsexpr@PLT
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	%rbx, %rsi
	call	asl_loc_do_qc2_wirestore
	movq	__xspi@GOTPCREL(%rip), %rax
	movq	32(%rbx), %rdi
	subl	$1, (%rax)
	orb	$1, (%rbx)
	testq	%rdi, %rdi
	je	.L3011
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__dcelst_on@PLT
	.cfi_endproc
.LFE174:
	.size	asl_loc_do_1bit_wireforce, .-asl_loc_do_1bit_wireforce
	.p2align 4,,15
	.type	asl_loc_do_qc_wireforce, @function
asl_loc_do_qc_wireforce:
.LFB169:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebp
	movq	%rcx, %r13
	movq	%r8, %r15
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	call	__get_qc_wirrng@PLT
	movq	%rax, %rbx
	movq	__idp@GOTPCREL(%rip), %rax
	movq	16(%r14), %rcx
	testq	%rbx, %rbx
	movq	(%rax), %r12
	movq	24(%rcx), %rcx
	movq	(%r12), %rax
	movq	(%rcx), %rcx
	movl	%eax, %edx
	cltq
	movq	(%rcx,%rax,8), %rax
	movq	%rax, (%rsp)
	je	.L3040
	movq	__idp@GOTPCREL(%rip), %rax
	testq	%r13, %r13
	movl	(%rbx), %edx
	movq	%rbx, (%rax)
	je	.L3029
	movq	8(%rbx), %rax
	cmpl	$1, 12(%rax)
	jle	.L3029
	movq	(%rbx,%r15,8), %r13
.L3029:
	movq	32(%rsp), %rsi
	imull	8(%rsi), %edx
	testb	$4, 2(%rsi)
	movl	%edx, 12(%rsp)
	je	.L3050
	movl	28(%rsp), %r15d
	cmpl	24(%rsp), %r15d
	jg	.L3032
	movl	%r15d, %edx
	jmp	.L3035
	.p2align 4,,10
	.p2align 3
.L3051:
	movl	28(%rsp), %edx
	movq	32(%rsp), %rsi
.L3035:
	movl	%r15d, %r8d
	movl	%r15d, %ecx
	movq	%rbx, %r9
	subl	%edx, %r8d
	cmpl	$-1, %ebp
	movq	%r14, %rdi
	leal	(%r8,%rbp), %edx
	cmovne	%edx, %r8d
	subq	$8, %rsp
	.cfi_def_cfa_offset 120
	addl	$1, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 128
	pushq	%r12
	.cfi_def_cfa_offset 136
	pushq	24(%rsp)
	.cfi_def_cfa_offset 144
	movl	44(%rsp), %edx
	call	asl_loc_do_1bit_wireforce
	movl	56(%rsp), %edx
	addq	$32, %rsp
	.cfi_def_cfa_offset 112
	cmpl	%r15d, %edx
	jge	.L3051
	movl	28(%rsp), %ebp
	cmpl	%ebp, %edx
	je	.L3031
.L3032:
	movl	$-1, %ebp
.L3031:
	movq	__num_vpi_force_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L3036
	movq	32(%rsp), %rdi
	movl	%ebp, %esi
	call	__find_call_force_cbs@PLT
.L3036:
	movq	__vpi_force_cb_always@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3052
.L3037:
	testq	%rbx, %rbx
	je	.L3028
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%r12, (%rax)
.L3028:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3053
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3050:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 120
	movl	%ebp, %r8d
	movq	%rbx, %r9
	pushq	%r13
	.cfi_def_cfa_offset 128
	pushq	%r12
	.cfi_def_cfa_offset 136
	movl	$-1, %ecx
	pushq	24(%rsp)
	.cfi_def_cfa_offset 144
	movl	44(%rsp), %edx
	movq	%r14, %rdi
	movl	$-1, %ebp
	call	asl_loc_do_1bit_wireforce
	addq	$32, %rsp
	.cfi_def_cfa_offset 112
	jmp	.L3031
	.p2align 4,,10
	.p2align 3
.L3052:
	movq	32(%rsp), %rdi
	movl	$1, %edx
	movl	%ebp, %esi
	call	__cb_all_rfs@PLT
	jmp	.L3037
	.p2align 4,,10
	.p2align 3
.L3040:
	xorl	%r12d, %r12d
	jmp	.L3029
.L3053:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE169:
	.size	asl_loc_do_qc_wireforce, .-asl_loc_do_qc_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_wireforce
	.type	__asl_exec_qc_wireforce, @function
__asl_exec_qc_wireforce:
.LFB165:
	.cfi_startproc
	movq	%rcx, %r8
	movq	16(%rdi), %rcx
	movl	%esi, %eax
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movl	%eax, %edx
	jmp	asl_loc_do_qc_wireforce
	.cfi_endproc
.LFE165:
	.size	__asl_exec_qc_wireforce, .-__asl_exec_qc_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_wireforce_concat
	.type	__asl_exec_qc_wireforce_concat, @function
__asl_exec_qc_wireforce_concat:
.LFB167:
	.cfi_startproc
	jmp	asl_loc_do_qc_wireforce
	.cfi_endproc
.LFE167:
	.size	__asl_exec_qc_wireforce_concat, .-__asl_exec_qc_wireforce_concat
	.p2align 4,,15
	.globl	__asl_assign_qcaf
	.type	__asl_assign_qcaf, @function
__asl_assign_qcaf:
.LFB197:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	88(%rdi), %rdx
	movq	%fs:40, %rcx
	movq	%rcx, 24(%rsp)
	xorl	%ecx, %ecx
	testb	$4, 1(%rax)
	movq	16(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	8(%rdx), %rbx
	movq	16(%rdx), %rdi
	je	.L3057
	movq	__idp@GOTPCREL(%rip), %r15
	movq	104(%rax), %rax
	testq	%rsi, %rsi
	movq	(%r15), %r14
	movq	%rax, (%r15)
	je	.L3058
	movq	8(%rax), %rdx
	cmpl	$1, 12(%rdx)
	jle	.L3058
	movq	(%rax,%rbp,8), %r12
.L3058:
	movq	%rbx, %rsi
	call	__eval_assign_rhsexpr@PLT
	movq	%rax, %r13
	movq	16(%rbx), %rax
	leaq	8(%rsp), %rcx
	leaq	12(%rsp), %rdx
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	je	.L3080
	testq	%r14, %r14
	je	.L3081
	movq	%rax, (%r15)
.L3062:
	testq	%r12, %r12
	je	.L3060
	movq	8(%rax), %rdx
	cmpl	$1, 12(%rdx)
	jle	.L3060
	movq	(%rax,%rbp,8), %r12
.L3060:
	movq	16(%rsp), %rdi
	movl	12(%rsp), %ebx
	movl	8(%rdi), %edx
	imull	(%rax), %edx
	cmpl	8(%rsp), %ebx
	jl	.L3063
	movslq	%ebx, %rax
	movslq	%edx, %rdx
	addq	%rdx, %rax
	leaq	(%rax,%rax,4), %rbp
	salq	$3, %rbp
	jmp	.L3064
	.p2align 4,,10
	.p2align 3
.L3082:
	movq	16(%rsp), %rdi
.L3064:
	movq	120(%rdi), %rsi
	movq	%r12, %rcx
	movq	%r13, %rdx
	subl	$1, %ebx
	addq	%rbp, %rsi
	subq	$40, %rbp
	call	asl_loc_do_qc2_wirestore
	cmpl	%ebx, 8(%rsp)
	jle	.L3082
.L3063:
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	testq	%r14, %r14
	je	.L3056
	movq	%r14, (%r15)
.L3056:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3083
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3057:
	.cfi_restore_state
	movq	%rbx, %rsi
	call	__eval_assign_rhsexpr@PLT
	movq	%rax, %r13
	movq	16(%rbx), %rax
	leaq	8(%rsp), %rcx
	leaq	12(%rsp), %rdx
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	movq	%rax, %r14
	movq	__idp@GOTPCREL(%rip), %r15
	jne	.L3066
.L3080:
	movq	(%r15), %rax
	jmp	.L3060
.L3081:
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L3066:
	movq	(%r15), %rdx
	movq	%r14, %rax
	movq	%r14, (%r15)
	movq	%rdx, %r14
	jmp	.L3062
.L3083:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE197:
	.size	__asl_assign_qcaf, .-__asl_assign_qcaf
	.p2align 4,,15
	.globl	__asl_assign_scalar_qcaf
	.type	__asl_assign_scalar_qcaf, @function
__asl_assign_scalar_qcaf:
.LFB198:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r14
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	88(%rdi), %rdx
	movq	%fs:40, %rcx
	movq	%rcx, 24(%rsp)
	xorl	%ecx, %ecx
	testb	$4, 1(%rax)
	movq	16(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	8(%rdx), %rbp
	movq	16(%rdx), %rdi
	je	.L3085
	movq	__idp@GOTPCREL(%rip), %r13
	movq	104(%rax), %rax
	testq	%rsi, %rsi
	movq	0(%r13), %rbx
	movq	%rax, 0(%r13)
	je	.L3086
	movq	8(%rax), %rdx
	cmpl	$1, 12(%rdx)
	jle	.L3086
	movq	(%rax,%r15,8), %r14
.L3086:
	movq	%rbp, %rsi
	call	__eval_assign_rhsexpr@PLT
	movq	%rax, %r12
	movq	16(%rbp), %rax
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rcx
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	movq	%rax, %rdx
	je	.L3106
	testq	%rbx, %rbx
	je	.L3107
	movq	%rax, 0(%r13)
.L3090:
	testq	%r14, %r14
	je	.L3088
	movq	8(%rdx), %rax
	cmpl	$1, 12(%rax)
	jle	.L3088
	movq	(%rdx,%r15,8), %r14
.L3088:
	movq	16(%rsp), %rdi
	movq	%r14, %rcx
	movl	8(%rdi), %eax
	imull	(%rdx), %eax
	cltq
	leaq	(%rax,%rax,4), %rdx
	movq	120(%rdi), %rax
	leaq	(%rax,%rdx,8), %rsi
	movq	%r12, %rdx
	call	asl_loc_do_qc2_wirestore
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	testq	%rbx, %rbx
	je	.L3084
	movq	%rbx, 0(%r13)
.L3084:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3108
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3085:
	.cfi_restore_state
	movq	%rbp, %rsi
	call	__eval_assign_rhsexpr@PLT
	movq	%rax, %r12
	movq	16(%rbp), %rax
	leaq	8(%rsp), %rcx
	leaq	12(%rsp), %rdx
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	movq	__idp@GOTPCREL(%rip), %r13
	jne	.L3092
.L3106:
	movq	0(%r13), %rdx
	jmp	.L3088
.L3107:
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L3092:
	movq	0(%r13), %rax
	movq	%rbx, %rdx
	movq	%rbx, 0(%r13)
	movq	%rax, %rbx
	jmp	.L3090
.L3108:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE198:
	.size	__asl_assign_scalar_qcaf, .-__asl_assign_scalar_qcaf
	.p2align 4,,15
	.globl	asl_loc_bit1_vpi_or_tran_wireforce
	.type	asl_loc_bit1_vpi_or_tran_wireforce, @function
asl_loc_bit1_vpi_or_tran_wireforce:
.LFB173:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%r8d, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leal	(%rcx,%r12), %eax
	movq	%rdi, %rbx
	movq	%rdx, %r15
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$-1, %r12d
	movq	120(%rdi), %rsi
	cmovne	%eax, %ecx
	movq	__xspi@GOTPCREL(%rip), %rbp
	movslq	%ecx, %rax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rsi,%rax,8), %rax
	movq	__maxxnest@GOTPCREL(%rip), %rsi
	orb	$1, (%rax)
	movl	0(%rbp), %eax
	addl	$1, %eax
	cmpl	(%rsi), %eax
	movl	%eax, 0(%rbp)
	jge	.L3142
.L3111:
	movq	__xstk@GOTPCREL(%rip), %r13
	cltq
	movq	0(%r13), %rdx
	movq	(%rdx,%rax,8), %rax
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	jle	.L3143
.L3112:
	movq	8(%rax), %rdi
	testl	%r9d, %r9d
	movl	$1, (%rax)
	leaq	8(%rdi), %rdx
	movq	%rdx, 16(%rax)
	je	.L3113
	movl	%r9d, %esi
	movl	%r9d, %ecx
	sarl	$6, %esi
	andl	$63, %ecx
	movslq	%esi, %rsi
	movq	(%r14,%rsi,8), %rdx
	shrq	%cl, %rdx
	andl	$1, %edx
	movq	%rdx, (%rdi)
	movq	(%r15,%rsi,8), %rdx
	shrq	%cl, %rdx
	andl	$1, %edx
	movq	%rdx, 8(%rdi)
	testb	$1, 3(%rbx)
	jne	.L3144
.L3115:
	movzbl	2(%rbx), %ecx
	testb	%cl, %cl
	js	.L3145
.L3116:
	movq	8(%rax), %rdx
	andl	$4, %ecx
	movq	(%rdx), %rdx
	je	.L3124
	cmpq	$0, 80(%rsp)
	je	.L3125
	movq	__idp@GOTPCREL(%rip), %rcx
	testb	$1, 3(%rbx)
	movq	32(%rbx), %rsi
	movq	(%rcx), %rcx
	leaq	(%rcx,%rsi,8), %rdi
	je	.L3126
	movl	%r12d, %ecx
	sarl	$6, %r12d
	andl	$1, %edx
	andl	$63, %ecx
	movl	$1, %eax
	movslq	%r12d, %r12
	salq	%cl, %rax
	salq	%cl, %rdx
	leaq	(%rdi,%r12,8), %rcx
	movq	%rax, %rdi
	movq	(%rcx), %rsi
	andq	%rsi, %rdi
	cmpq	%rdi, %rdx
	je	.L3139
	notq	%rax
	andq	%rsi, %rax
	orq	%rax, %rdx
	movq	%rdx, (%rcx)
.L3138:
	movq	80(%rsp), %rsi
	movq	%rbx, %rdi
	call	asl_loc_record_nchg
	movl	0(%rbp), %eax
	jmp	.L3123
	.p2align 4,,10
	.p2align 3
.L3113:
	movq	(%r14), %rdx
	andl	$1, %edx
	movq	%rdx, (%rdi)
	movq	(%r15), %rdx
	andl	$1, %edx
	movq	%rdx, 8(%rdi)
	testb	$1, 3(%rbx)
	je	.L3115
.L3144:
	movq	16(%rax), %rsi
	movl	(%rax), %edx
	movq	%rax, (%rsp)
	call	__cnvt_xzs_to_2state@PLT
	movzbl	2(%rbx), %ecx
	movq	(%rsp), %rax
	testb	%cl, %cl
	jns	.L3116
.L3145:
	movl	0(%rbp), %edi
	leal	1(%rdi), %edx
	movq	__maxxnest@GOTPCREL(%rip), %rdi
	movl	%edx, 0(%rbp)
	cmpl	(%rdi), %edx
	jge	.L3146
.L3117:
	movq	0(%r13), %rcx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %r13
	movl	4(%r13), %edx
	testl	%edx, %edx
	jle	.L3147
.L3118:
	movq	8(%r13), %r14
	movq	%rax, %rsi
	movl	$8, 0(%r13)
	leaq	8(%r14), %rdx
	movq	%r14, %rdi
	movq	%rdx, 16(%r13)
	movl	$54, %edx
	call	__st_standval@PLT
	movq	__idp@GOTPCREL(%rip), %rax
	testb	$4, 2(%rbx)
	movq	32(%rbx), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	jne	.L3148
	cmpq	$0, 80(%rsp)
	movzbl	(%r14), %edx
	je	.L3122
.L3141:
	cmpb	%dl, (%rax)
	je	.L3121
	movb	%dl, (%rax)
	movq	80(%rsp), %rsi
	movq	%rbx, %rdi
	call	asl_loc_record_nchg
.L3121:
	movl	0(%rbp), %eax
	subl	$1, %eax
	jmp	.L3123
	.p2align 4,,10
	.p2align 3
.L3124:
	movq	16(%rax), %rax
	movq	32(%rbx), %rcx
	movq	(%rax), %rax
	addq	%rax, %rax
	orq	%rax, %rdx
	movq	__idp@GOTPCREL(%rip), %rax
	cmpq	$0, 80(%rsp)
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rax
	je	.L3129
	cmpq	%rdx, (%rax)
	jne	.L3149
.L3139:
	movl	0(%rbp), %eax
.L3123:
	subl	$1, %eax
	movl	%eax, 0(%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3142:
	.cfi_restore_state
	movl	%r9d, (%rsp)
	call	__grow_xstk@PLT
	movl	0(%rbp), %eax
	movl	(%rsp), %r9d
	jmp	.L3111
	.p2align 4,,10
	.p2align 3
.L3143:
	movq	%rax, %rdi
	movl	$1, %esi
	movl	%r9d, 12(%rsp)
	movq	%rax, (%rsp)
	call	__chg_xstk_width@PLT
	movl	12(%rsp), %r9d
	movq	(%rsp), %rax
	jmp	.L3112
	.p2align 4,,10
	.p2align 3
.L3148:
	addq	%r12, %rax
	cmpq	$0, 80(%rsp)
	movzbl	(%r14), %edx
	jne	.L3141
.L3122:
	movb	%dl, (%rax)
	jmp	.L3121
	.p2align 4,,10
	.p2align 3
.L3149:
	movq	%rdx, (%rax)
	jmp	.L3138
	.p2align 4,,10
	.p2align 3
.L3126:
	movq	16(%rax), %rax
	movl	8(%rbx), %r8d
	movl	%r12d, %esi
	movq	(%rax), %rcx
	call	asl_loc_chg_vec_lhsbsel
	testl	%eax, %eax
	jne	.L3138
	jmp	.L3139
	.p2align 4,,10
	.p2align 3
.L3146:
	movq	%rax, (%rsp)
	call	__grow_xstk@PLT
	movl	0(%rbp), %edx
	movq	(%rsp), %rax
	jmp	.L3117
	.p2align 4,,10
	.p2align 3
.L3129:
	movq	%rdx, (%rax)
	jmp	.L3139
	.p2align 4,,10
	.p2align 3
.L3147:
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rax, (%rsp)
	call	__chg_xstk_width@PLT
	movq	(%rsp), %rax
	jmp	.L3118
	.p2align 4,,10
	.p2align 3
.L3125:
	movq	16(%rax), %rax
	movl	%r12d, %esi
	movq	%rbx, %rdi
	movq	(%rax), %rcx
	call	__st_bit@PLT
	movl	0(%rbp), %eax
	jmp	.L3123
	.cfi_endproc
.LFE173:
	.size	asl_loc_bit1_vpi_or_tran_wireforce, .-asl_loc_bit1_vpi_or_tran_wireforce
	.p2align 4,,15
	.type	asl_loc_do_qc_wire_intran_force, @function
asl_loc_do_qc_wire_intran_force:
.LFB172:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r14d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	__idp@GOTPCREL(%rip), %r12
	testq	%r8, %r8
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	(%r12), %r13
	je	.L3157
	movq	%r8, (%r12)
	movq	%r8, %rax
.L3151:
	movl	8(%rbx), %ecx
	movq	%rsp, %rdx
	leaq	8(%rsp), %rsi
	imull	(%rax), %ecx
	testb	$4, 2(%rbx)
	jne	.L3152
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	pushq	%r9
	.cfi_def_cfa_offset 80
	xorl	%r9d, %r9d
	call	asl_loc_bit1_vpi_or_tran_wireforce@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
.L3153:
	movq	__num_vpi_force_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L3154
	movl	%r14d, %esi
	movq	%rbx, %rdi
	call	__find_call_force_cbs@PLT
.L3154:
	movq	__vpi_force_cb_always@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3162
.L3155:
	testq	%rbp, %rbp
	je	.L3150
	movq	%r13, (%r12)
.L3150:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3152:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movl	%r14d, %r8d
	movq	%rbx, %rdi
	pushq	%r9
	.cfi_def_cfa_offset 80
	xorl	%r9d, %r9d
	call	asl_loc_bit1_vpi_or_tran_wireforce@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	jmp	.L3153
	.p2align 4,,10
	.p2align 3
.L3162:
	movl	$1, %edx
	movl	%r14d, %esi
	movq	%rbx, %rdi
	call	__cb_all_rfs@PLT
	jmp	.L3155
	.p2align 4,,10
	.p2align 3
.L3157:
	movq	%r13, %rax
	xorl	%r13d, %r13d
	jmp	.L3151
	.cfi_endproc
.LFE172:
	.size	asl_loc_do_qc_wire_intran_force, .-asl_loc_do_qc_wire_intran_force
	.p2align 4,,15
	.type	asl_loc_do_qc_tran_wireforce, @function
asl_loc_do_qc_tran_wireforce:
.LFB170:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rdi
	movl	%edx, %ebx
	movq	%rcx, %r12
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	leaq	44(%rsp), %rcx
	leaq	40(%rsp), %rdx
	leaq	48(%rsp), %rsi
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	movq	%rax, %rbp
	movq	$0, 24(%rsp)
	je	.L3164
	movq	__idp@GOTPCREL(%rip), %rax
	testq	%r12, %r12
	movq	(%rax), %rdi
	movq	%rbp, (%rax)
	movq	%rdi, 24(%rsp)
	je	.L3164
	movq	8(%rbp), %rax
	cmpl	$1, 12(%rax)
	jle	.L3164
	movq	0(%rbp,%r14,8), %r12
.L3164:
	movq	48(%rsp), %rax
	movl	44(%rsp), %ecx
	movl	40(%rsp), %r14d
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movl	%ecx, 20(%rsp)
	movq	8(%rax), %rsi
	movq	16(%rax), %rdi
	call	__eval_assign_rhsexpr@PLT
	movq	%rax, %r15
	movq	8(%rsp), %rax
	cmpl	$-1, %ebx
	movl	$0, %edx
	movl	20(%rsp), %ecx
	cmove	%edx, %ebx
	testb	$4, 2(%rax)
	je	.L3189
	movq	__idp@GOTPCREL(%rip), %rdx
	cmpl	%r14d, %ecx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movslq	12(%rdx), %rdx
	jg	.L3167
	leaq	0(,%rdx,8), %r13
	leal	-1(%rcx), %eax
	subl	%ecx, %ebx
	subq	%rdx, %r13
	movl	%eax, 20(%rsp)
	salq	$3, %r13
	.p2align 4,,10
	.p2align 3
.L3171:
	leal	(%rbx,%r14), %ecx
	movq	16(%r15), %rsi
	movq	8(%r15), %rdi
	movq	%r12, %r9
	movq	%rbp, %r8
	movl	%ecx, %edx
	andl	$63, %ecx
	sarl	$6, %edx
	movslq	%edx, %rdx
	movq	(%rsi,%rdx,8), %rsi
	movq	(%rdi,%rdx,8), %rdx
	movq	8(%rsp), %rdi
	shrq	%cl, %rsi
	shrq	%cl, %rdx
	andl	$1, %esi
	andl	$1, %edx
	movq	%rsi, %rcx
	movl	%r14d, %esi
	call	asl_loc_do_qc_wire_intran_force
	testq	%r12, %r12
	je	.L3169
	cmpl	%r14d, 24(%r12)
	je	.L3170
	leaq	.LC1(%rip), %rdi
	movl	$3188, %esi
	call	__misc_terr@PLT
.L3170:
	addq	%r13, %r12
.L3169:
	subl	$1, %r14d
	cmpl	20(%rsp), %r14d
	jne	.L3171
.L3167:
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	movq	__num_vpi_force_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L3172
	movl	40(%rsp), %esi
	movq	48(%rsp), %rdi
	call	__find_call_force_cbs@PLT
.L3172:
	movq	__vpi_force_cb_always@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3190
.L3173:
	testq	%rbp, %rbp
	je	.L3163
	movq	__idp@GOTPCREL(%rip), %rax
	movq	24(%rsp), %rbx
	movq	%rbx, (%rax)
.L3163:
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3191
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3190:
	.cfi_restore_state
	movl	40(%rsp), %esi
	movq	48(%rsp), %rdi
	movl	$1, %edx
	call	__cb_all_rfs@PLT
	jmp	.L3173
	.p2align 4,,10
	.p2align 3
.L3189:
	movl	%ebx, %edx
	movq	16(%r15), %rsi
	movq	8(%r15), %rax
	sarl	$6, %edx
	andl	$63, %ebx
	movq	8(%rsp), %rdi
	movslq	%edx, %rdx
	movl	%ebx, %ecx
	movq	%r12, %r9
	movq	(%rsi,%rdx,8), %rsi
	movq	(%rax,%rdx,8), %rdx
	movq	%rbp, %r8
	shrq	%cl, %rsi
	shrq	%cl, %rdx
	andl	$1, %esi
	andl	$1, %edx
	movq	%rsi, %rcx
	movl	$-1, %esi
	call	asl_loc_do_qc_wire_intran_force
	jmp	.L3167
.L3191:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE170:
	.size	asl_loc_do_qc_tran_wireforce, .-asl_loc_do_qc_tran_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wireforce
	.type	__asl_exec_qc_tran_wireforce, @function
__asl_exec_qc_tran_wireforce:
.LFB166:
	.cfi_startproc
	movq	%rcx, %r8
	movq	16(%rdi), %rcx
	movl	%esi, %eax
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movl	%eax, %edx
	jmp	asl_loc_do_qc_tran_wireforce
	.cfi_endproc
.LFE166:
	.size	__asl_exec_qc_tran_wireforce, .-__asl_exec_qc_tran_wireforce
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wireforce_concat
	.type	__asl_exec_qc_tran_wireforce_concat, @function
__asl_exec_qc_tran_wireforce_concat:
.LFB168:
	.cfi_startproc
	jmp	asl_loc_do_qc_tran_wireforce
	.cfi_endproc
.LFE168:
	.size	__asl_exec_qc_tran_wireforce_concat, .-__asl_exec_qc_tran_wireforce_concat
	.p2align 4,,15
	.type	asl_loc_assign_1mdrwire, @function
asl_loc_assign_1mdrwire:
.LFB196:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpb	$0, 2(%rdi)
	js	.L3223
	call	__load_mdrwire@PLT
	testb	$32, 4(%rbx)
	movq	%rax, %r13
	jne	.L3224
.L3205:
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdi
	movq	%rbx, %rdx
	call	__ld_addr@PLT
	testq	%r12, %r12
	je	.L3206
	movl	8(%rbx), %eax
	movq	8(%rsp), %rsi
	movq	8(%r13), %r14
	movq	16(%r13), %r15
	cmpl	$64, %eax
	jle	.L3225
	leal	63(%rax), %ebp
	movq	%r14, %rdi
	sarl	$6, %ebp
	sall	$3, %ebp
	movslq	%ebp, %rbp
	movq	%rbp, %rdx
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L3208
	movq	16(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r15, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L3203
	.p2align 4,,10
	.p2align 3
.L3208:
	movl	0(%r13), %ecx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	__st_val@PLT
.L3204:
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	asl_loc_record_nchg
.L3203:
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3226
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3224:
	.cfi_restore_state
	movq	16(%rax), %rdx
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	call	__correct_forced_newwireval@PLT
	testl	%eax, %eax
	jne	.L3205
	jmp	.L3203
	.p2align 4,,10
	.p2align 3
.L3223:
	call	__stload_mdrwire@PLT
	testb	$32, 4(%rbx)
	movq	8(%rax), %r13
	jne	.L3227
.L3196:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rbx), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %r14
	movzbl	(%rbx), %eax
	movl	8(%rbx), %edx
	andl	$31, %eax
	cmpb	$6, %al
	je	.L3228
.L3198:
	movslq	%edx, %rbp
	testq	%r12, %r12
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%r14, %rdi
	je	.L3201
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L3203
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	memcpy@PLT
	jmp	.L3204
	.p2align 4,,10
	.p2align 3
.L3225:
	movq	(%r14), %rax
	cmpq	%rax, (%rsi)
	jne	.L3208
	movq	16(%rsp), %rax
	movq	(%r15), %rcx
	cmpq	%rcx, (%rax)
	jne	.L3208
	jmp	.L3203
	.p2align 4,,10
	.p2align 3
.L3228:
	testl	%edx, %edx
	jle	.L3198
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L3200:
	cmpb	$2, -1(%r13,%rax)
	jne	.L3199
	movzbl	3(%rbx), %ecx
	movzbl	-1(%r14,%rax), %edx
	movq	__cap_to_stren@GOTPCREL(%rip), %rsi
	shrb	%cl
	andl	$3, %edx
	andl	$3, %ecx
	orb	(%rsi,%rcx,8), %dl
	movb	%dl, -1(%r13,%rax)
	movl	8(%rbx), %edx
.L3199:
	movl	%eax, %ecx
	addq	$1, %rax
	cmpl	%ecx, %edx
	jg	.L3200
	jmp	.L3198
	.p2align 4,,10
	.p2align 3
.L3227:
	movq	16(%rax), %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	__correct_forced_newwireval@PLT
	testl	%eax, %eax
	jne	.L3196
	jmp	.L3203
	.p2align 4,,10
	.p2align 3
.L3206:
	movq	16(%r13), %rdx
	movq	8(%r13), %rsi
	movq	%rbx, %rdi
	movl	0(%r13), %ecx
	call	__st_val@PLT
	jmp	.L3203
	.p2align 4,,10
	.p2align 3
.L3201:
	call	memcpy@PLT
	jmp	.L3203
.L3226:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE196:
	.size	asl_loc_assign_1mdrwire, .-asl_loc_assign_1mdrwire
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"attempted release of %s in instance %s failed%s"
	.text
	.p2align 4,,15
	.type	asl_loc_do_qc_wirerelease, @function
asl_loc_do_qc_wirerelease:
.LFB184:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp
	subq	$4152, %rsp
	.cfi_def_cfa_offset 4208
	leaq	20(%rsp), %rcx
	leaq	16(%rsp), %rdx
	leaq	24(%rsp), %rsi
	movq	%fs:40, %rax
	movq	%rax, 4136(%rsp)
	xorl	%eax, %eax
	call	__get_qc_wirrng@PLT
	movq	__idp@GOTPCREL(%rip), %rbx
	testq	%rax, %rax
	movq	%rax, %r15
	movq	(%rbx), %rax
	je	.L3266
	testq	%r12, %r12
	movq	%rax, (%rsp)
	movq	%r15, (%rbx)
	movq	%r15, %rax
	je	.L3231
	movq	8(%r15), %rdx
	cmpl	$1, 12(%rdx)
	jle	.L3231
	movq	(%r15,%r14,8), %r12
.L3231:
	movq	24(%rsp), %rcx
	movl	(%rax), %esi
	movl	8(%rcx), %edx
	imull	%edx, %esi
	testl	%edx, %edx
	jle	.L3232
	movq	120(%rcx), %r14
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,4), %rax
	testb	$1, (%r14,%rax,8)
	jne	.L3233
	subl	$1, %edx
	leaq	5(%rsi,%rsi,4), %rax
	addq	%rsi, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r14,%rax,8), %rax
	leaq	40(%r14,%rdx,8), %rdi
	jmp	.L3234
	.p2align 4,,10
	.p2align 3
.L3235:
	movzbl	(%rax), %edx
	addq	$40, %rax
	andl	$1, %edx
	jne	.L3233
.L3234:
	cmpq	%rdi, %rax
	jne	.L3235
.L3232:
	movq	__xs@GOTPCREL(%rip), %rax
	movl	$100, %esi
	leaq	32(%rsp), %r14
	movdqa	.LC21(%rip), %xmm0
	movw	%si, 48(%rsp)
	movq	(%rax), %rdi
	movaps	%xmm0, 32(%rsp)
	call	__msg2_cur_blditree@PLT
	movq	%rax, %r12
	movq	%rbp, %rsi
	movq	__xs2@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	__msgexpr_tostr@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdx
	movq	%r14, %r8
	xorl	%eax, %eax
	movq	%r12, %rcx
	movl	$465, %edi
	call	__sgfinform@PLT
	testq	%r15, %r15
	je	.L3229
.L3265:
	movq	(%rsp), %rax
	movq	%rax, (%rbx)
.L3229:
	movq	4136(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3267
	addq	$4152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3233:
	.cfi_restore_state
	movl	16(%rsp), %edx
	cmpl	20(%rsp), %edx
	jl	.L3238
	movslq	%edx, %rax
	movl	$1, 12(%rsp)
	addq	%rax, %rsi
	leaq	(%rsi,%rsi,4), %rsi
	leaq	0(,%rsi,8), %r13
	jmp	.L3242
	.p2align 4,,10
	.p2align 3
.L3268:
	movq	32(%r14), %rdi
	andl	$-2, %eax
	movb	%al, (%r14)
	testq	%rdi, %rdi
	je	.L3240
	movl	%edx, 8(%rsp)
	call	__dcelst_off@PLT
	movq	24(%rsp), %rcx
	movl	8(%rsp), %edx
.L3240:
	subl	$1, %edx
	subq	$40, %r13
	cmpl	%edx, 20(%rsp)
	movq	$0, 32(%r14)
	jg	.L3241
.L3269:
	movq	120(%rcx), %r14
.L3242:
	addq	%r13, %r14
	movzbl	(%r14), %eax
	testb	$1, %al
	jne	.L3268
	subl	$1, %edx
	subq	$40, %r13
	cmpl	%edx, 20(%rsp)
	movl	$0, 12(%rsp)
	jle	.L3269
.L3241:
	movq	%rcx, %rdi
	movq	%r12, %rsi
	call	asl_loc_assign_1mdrwire
	movl	12(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L3270
.L3243:
	movl	20(%rsp), %ebp
	cmpl	%ebp, 16(%rsp)
	je	.L3244
	movl	$-1, %ebp
.L3244:
	movq	__num_vpi_rel_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L3245
	movq	24(%rsp), %rdi
	movl	%ebp, %esi
	call	__find_call_rel_cbs@PLT
.L3245:
	movq	__vpi_rel_cb_always@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3271
.L3246:
	testq	%r15, %r15
	jne	.L3265
	jmp	.L3229
	.p2align 4,,10
	.p2align 3
.L3266:
	movq	$0, (%rsp)
	jmp	.L3231
	.p2align 4,,10
	.p2align 3
.L3270:
	movq	__xs@GOTPCREL(%rip), %rax
	movl	$6579555, 48(%rsp)
	leaq	32(%rsp), %r14
	movdqa	.LC22(%rip), %xmm0
	movq	(%rax), %rdi
	movaps	%xmm0, 32(%rsp)
	call	__msg2_cur_blditree@PLT
	movq	%rax, %r12
	movq	%rbp, %rsi
	movq	__xs2@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	__msgexpr_tostr@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdx
	movq	%r14, %r8
	xorl	%eax, %eax
	movq	%r12, %rcx
	movl	$465, %edi
	call	__sgfinform@PLT
	testq	%r15, %r15
	je	.L3243
	movq	(%rbx), %rax
	movq	%r15, (%rbx)
	movq	%rax, (%rsp)
	jmp	.L3243
	.p2align 4,,10
	.p2align 3
.L3271:
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	movl	%ebp, %esi
	call	__cb_all_rfs@PLT
	jmp	.L3246
	.p2align 4,,10
	.p2align 3
.L3238:
	movq	%r12, %rsi
	movq	%rcx, %rdi
	call	asl_loc_assign_1mdrwire
	jmp	.L3243
.L3267:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE184:
	.size	asl_loc_do_qc_wirerelease, .-asl_loc_do_qc_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_wirerelease
	.type	__asl_exec_qc_wirerelease, @function
__asl_exec_qc_wirerelease:
.LFB180:
	.cfi_startproc
	movq	24(%rdi), %rdi
	jmp	asl_loc_do_qc_wirerelease
	.cfi_endproc
.LFE180:
	.size	__asl_exec_qc_wirerelease, .-__asl_exec_qc_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_wirerelease_concat
	.type	__asl_exec_qc_wirerelease_concat, @function
__asl_exec_qc_wirerelease_concat:
.LFB182:
	.cfi_startproc
	jmp	asl_loc_do_qc_wirerelease
	.cfi_endproc
.LFE182:
	.size	__asl_exec_qc_wirerelease_concat, .-__asl_exec_qc_wirerelease_concat
	.p2align 4,,15
	.type	asl_loc_do_qc_wire_intran_release, @function
asl_loc_do_qc_wire_intran_release:
.LFB187:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4136, %rsp
	.cfi_def_cfa_offset 4192
	movq	__idp@GOTPCREL(%rip), %r12
	movl	8(%rdi), %ecx
	movq	%fs:40, %rax
	movq	%rax, 4120(%rsp)
	xorl	%eax, %eax
	movq	(%r12), %rbp
	movl	0(%rbp), %r11d
	imull	%ecx, %r11d
	testl	%ecx, %ecx
	jle	.L3275
	movq	120(%rdi), %r10
	movslq	%r11d, %rdx
	movl	%esi, %r14d
	leaq	(%rdx,%rdx,4), %rax
	movq	%rdi, %rbx
	leaq	(%r10,%rax,8), %rsi
	movzbl	(%rsi), %r9d
	andl	$1, %r9d
	jne	.L3276
	subl	$1, %ecx
	leaq	5(%rdx,%rdx,4), %rax
	addq	%rcx, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r10,%rax,8), %rax
	leaq	40(%r10,%rdx,8), %rdi
	jmp	.L3277
	.p2align 4,,10
	.p2align 3
.L3278:
	movzbl	(%rax), %ecx
	addq	$40, %rax
	andl	$1, %ecx
	jne	.L3276
.L3277:
	cmpq	%rdi, %rax
	jne	.L3278
.L3275:
	movq	__xs@GOTPCREL(%rip), %rax
	movl	$100, %ecx
	leaq	16(%rsp), %rbp
	movdqa	.LC21(%rip), %xmm0
	movw	%cx, 32(%rsp)
	movq	(%rax), %rdi
	movaps	%xmm0, 16(%rsp)
	call	__msg2_cur_blditree@PLT
	movq	%rax, %rbx
	movq	%r13, %rsi
	movq	__xs2@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	__msgexpr_tostr@PLT
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdx
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movl	$465, %edi
	xorl	%eax, %eax
	call	__sgfinform@PLT
.L3274:
	movq	4120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3299
	addq	$4136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3276:
	.cfi_restore_state
	testq	%r15, %r15
	je	.L3290
	movq	%r15, (%r12)
.L3280:
	cmpl	$-1, %r14d
	je	.L3281
	addl	%r14d, %r11d
	movslq	%r11d, %r11
	leaq	(%r11,%r11,4), %rax
	leaq	(%r10,%rax,8), %rsi
	movzbl	(%rsi), %r9d
	andl	$1, %r9d
.L3281:
	testb	%r9b, %r9b
	jne	.L3282
	movq	%r8, %rsi
	movq	%rbx, %rdi
	call	asl_loc_assign_1mdrwire
	testq	%rbp, %rbp
	je	.L3300
	movq	__xs@GOTPCREL(%rip), %rax
	leaq	16(%rsp), %r8
	movq	%rbp, (%r12)
	movdqa	.LC22(%rip), %xmm0
	movq	%r8, 8(%rsp)
	movl	$6579555, 32(%rsp)
	movq	(%rax), %rdi
	movaps	%xmm0, 16(%rsp)
	call	__msg2_cur_blditree@PLT
	movq	%rax, %rbp
	movq	%r13, %rsi
	movq	__xs2@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	__msgexpr_tostr@PLT
	movq	8(%rsp), %r8
	leaq	.LC20(%rip), %rsi
	movq	%rbp, %rcx
	movq	%rax, %rdx
	movl	$465, %edi
	xorl	%eax, %eax
	call	__sgfinform@PLT
	movq	(%r12), %rbp
	movq	%r15, (%r12)
	jmp	.L3285
	.p2align 4,,10
	.p2align 3
.L3282:
	andb	$-2, (%rsi)
	movq	%rbx, %rdi
	movq	%r8, %rsi
	call	asl_loc_assign_1mdrwire
.L3285:
	movq	__num_vpi_rel_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L3286
	movl	%r14d, %esi
	movq	%rbx, %rdi
	call	__find_call_rel_cbs@PLT
.L3286:
	movq	__vpi_rel_cb_always@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3301
.L3287:
	testq	%rbp, %rbp
	je	.L3274
	movq	%rbp, (%r12)
	jmp	.L3274
	.p2align 4,,10
	.p2align 3
.L3300:
	movq	__xs@GOTPCREL(%rip), %rax
	leaq	16(%rsp), %r8
	movl	$6579555, 32(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movq	%r8, 8(%rsp)
	movq	(%rax), %rdi
	movaps	%xmm0, 16(%rsp)
	call	__msg2_cur_blditree@PLT
	movq	%rax, %r15
	movq	%r13, %rsi
	movq	__xs2@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	__msgexpr_tostr@PLT
	movq	8(%rsp), %r8
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdx
	movq	%r15, %rcx
	movl	$465, %edi
	xorl	%eax, %eax
	call	__sgfinform@PLT
	jmp	.L3285
	.p2align 4,,10
	.p2align 3
.L3301:
	xorl	%edx, %edx
	movl	%r14d, %esi
	movq	%rbx, %rdi
	call	__cb_all_rfs@PLT
	jmp	.L3287
	.p2align 4,,10
	.p2align 3
.L3290:
	xorl	%ebp, %ebp
	jmp	.L3280
.L3299:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE187:
	.size	asl_loc_do_qc_wire_intran_release, .-asl_loc_do_qc_wire_intran_release
	.p2align 4,,15
	.type	asl_loc_do_qc_tran_wirerelease, @function
asl_loc_do_qc_tran_wirerelease:
.LFB185:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbp
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rdi, (%rsp)
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	movq	$0, 8(%rsp)
	je	.L3303
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rbx, (%rax)
	movq	%rcx, 8(%rsp)
.L3303:
	testq	%r13, %r13
	je	.L3304
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	cmpl	$1, 12(%rdx)
	jle	.L3304
	movq	(%rax,%rbp,8), %r13
.L3304:
	movq	32(%rsp), %r12
	testb	$4, 2(%r12)
	je	.L3326
	movq	__idp@GOTPCREL(%rip), %rdx
	movl	28(%rsp), %ebp
	movl	24(%rsp), %r15d
	movq	(%rdx), %rdx
	cmpl	%r15d, %ebp
	movq	8(%rdx), %rdx
	movslq	12(%rdx), %rdx
	jg	.L3306
	leaq	0(,%rdx,8), %r14
	subl	$1, %ebp
	subq	%rdx, %r14
	salq	$3, %r14
	.p2align 4,,10
	.p2align 3
.L3310:
	movq	(%rsp), %rdx
	movq	%r13, %r8
	movq	%rbx, %rcx
	movl	%r15d, %esi
	movq	%r12, %rdi
	call	asl_loc_do_qc_wire_intran_release
	testq	%r13, %r13
	je	.L3308
	cmpl	%r15d, 24(%r13)
	je	.L3309
	leaq	.LC1(%rip), %rdi
	movl	$3871, %esi
	call	__misc_terr@PLT
.L3309:
	addq	%r14, %r13
.L3308:
	subl	$1, %r15d
	cmpl	%ebp, %r15d
	jne	.L3310
.L3306:
	testq	%rbx, %rbx
	je	.L3302
	movq	__idp@GOTPCREL(%rip), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
.L3302:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3327
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3326:
	.cfi_restore_state
	movq	(%rsp), %rdx
	movq	%r13, %r8
	movq	%rbx, %rcx
	movl	$-1, %esi
	movq	%r12, %rdi
	call	asl_loc_do_qc_wire_intran_release
	jmp	.L3306
.L3327:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE185:
	.size	asl_loc_do_qc_tran_wirerelease, .-asl_loc_do_qc_tran_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wirerelease
	.type	__asl_exec_qc_tran_wirerelease, @function
__asl_exec_qc_tran_wirerelease:
.LFB181:
	.cfi_startproc
	movq	24(%rdi), %rdi
	jmp	asl_loc_do_qc_tran_wirerelease
	.cfi_endproc
.LFE181:
	.size	__asl_exec_qc_tran_wirerelease, .-__asl_exec_qc_tran_wirerelease
	.p2align 4,,15
	.globl	__asl_exec_qc_tran_wirerelease_concat
	.type	__asl_exec_qc_tran_wirerelease_concat, @function
__asl_exec_qc_tran_wirerelease_concat:
.LFB183:
	.cfi_startproc
	jmp	asl_loc_do_qc_tran_wirerelease
	.cfi_endproc
.LFE183:
	.size	__asl_exec_qc_tran_wirerelease_concat, .-__asl_exec_qc_tran_wirerelease_concat
	.p2align 4,,15
	.type	asl_loc_do_qc2_regstore.isra.19, @function
asl_loc_do_qc2_regstore.isra.19:
.LFB509:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r15d, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r12
	movq	%rdx, %rbx
	movq	%r8, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	cmpl	$-1, (%rsi)
	je	.L3331
	movq	__xspi@GOTPCREL(%rip), %r15
	movq	__maxxnest@GOTPCREL(%rip), %rdx
	movq	%rsi, %r14
	movl	(%r15), %eax
	addl	$1, %eax
	cmpl	(%rdx), %eax
	movl	%eax, (%r15)
	jge	.L3374
.L3332:
	movq	__xstk@GOTPCREL(%rip), %rdx
	movl	8(%r12), %ecx
	cltq
	movq	(%rdx), %rdx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	movq	(%rdx,%rax,8), %r15
	cmpl	4(%r15), %esi
	jg	.L3375
.L3333:
	movq	8(%r15), %rdi
	movslq	%esi, %rsi
	movl	%ecx, (%r15)
	movl	(%r14), %edx
	leaq	(%rdi,%rsi,8), %rax
	movq	8(%r13), %rsi
	movq	%rax, 16(%r15)
	call	__rhspsel@PLT
	movq	16(%r13), %rsi
	movq	16(%r15), %rdi
	movq	%r15, %r13
	movl	8(%r12), %ecx
	movl	(%r14), %edx
	movl	$1, %r15d
	call	__rhspsel@PLT
.L3331:
	movq	(%rbx), %rax
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.L3334
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	(%rdx), %r14
	movq	%rax, (%rdx)
.L3334:
	movzbl	1(%r12), %eax
	andl	$126, %eax
	cmpb	$4, %al
	je	.L3376
	testb	%al, %al
	jne	.L3338
	testq	%rbp, %rbp
	movq	16(%r13), %r9
	movq	8(%r13), %r8
	je	.L3339
	movq	__idp@GOTPCREL(%rip), %rax
	movl	8(%r12), %r13d
	movq	32(%r12), %rdx
	movq	(%rax), %rax
	cmpl	$64, %r13d
	leaq	(%rax,%rdx,8), %rcx
	jg	.L3340
	movq	(%r8), %rax
	cmpq	%rax, (%rcx)
	je	.L3341
	movq	%rax, (%rcx)
	movq	(%r9), %rax
	movq	%rax, 8(%rcx)
.L3373:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	asl_loc_record_nchg
	.p2align 4,,10
	.p2align 3
.L3337:
	testl	%r15d, %r15d
	je	.L3350
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
.L3350:
	testq	%r14, %r14
	je	.L3330
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%r14, (%rax)
.L3330:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3338:
	.cfi_restore_state
	cmpb	$8, %al
	je	.L3377
	cmpb	$10, %al
	jne	.L3337
	movq	8(%r13), %rax
	movq	32(%r12), %rcx
	testq	%rbp, %rbp
	movq	(%rax), %rdx
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rax
	je	.L3349
	cmpq	(%rax), %rdx
	je	.L3337
	movq	%rdx, (%rax)
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3375:
	movq	%r15, %rdi
	call	__chg_xstk_width@PLT
	movl	8(%r12), %ecx
	leal	63(%rcx), %esi
	sarl	$6, %esi
	jmp	.L3333
	.p2align 4,,10
	.p2align 3
.L3374:
	call	__grow_xstk@PLT
	movl	(%r15), %eax
	jmp	.L3332
	.p2align 4,,10
	.p2align 3
.L3376:
	movq	16(%r13), %rax
	movq	8(%r13), %rdx
	movq	32(%r12), %rcx
	movq	(%rax), %rax
	addq	%rax, %rax
	orq	(%rdx), %rax
	movq	__idp@GOTPCREL(%rip), %rdx
	testq	%rbp, %rbp
	movq	(%rdx), %rdx
	leaq	(%rdx,%rcx,8), %rdx
	je	.L3336
	cmpq	(%rdx), %rax
	je	.L3337
	movq	%rax, (%rdx)
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	asl_loc_record_nchg
	jmp	.L3337
	.p2align 4,,10
	.p2align 3
.L3340:
	leal	63(%r13), %ebx
	movq	%r8, %rdi
	movq	%rcx, %rsi
	movq	%r9, 24(%rsp)
	movq	%rcx, 8(%rsp)
	sarl	$6, %ebx
	movq	%r8, 16(%rsp)
	sall	$3, %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %rdx
	call	memcmp@PLT
	movq	8(%rsp), %rcx
	testl	%eax, %eax
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	leaq	(%rcx,%rbx), %rdi
	movq	%rdi, 8(%rsp)
	jne	.L3378
	movq	8(%rsp), %rsi
	movq	%r9, %rdi
	movq	%rbx, %rdx
	movq	%r9, 16(%rsp)
	call	memcmp@PLT
	testl	%eax, %eax
	movq	16(%rsp), %r9
	je	.L3337
	movq	__masktab@GOTPCREL(%rip), %rax
	movl	%r13d, %r10d
	leaq	-8(%rbx), %r8
	andl	$63, %r10d
	movq	(%rax,%r10,8), %r13
	.p2align 4,,10
	.p2align 3
.L3352:
	movq	%rbx, %rdx
	movq	8(%rsp), %rbx
	movq	%r9, %rsi
	movq	%r8, 16(%rsp)
	movq	%rbx, %rdi
	call	memmove@PLT
	movq	16(%rsp), %r8
	andq	%r13, (%rbx,%r8)
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3377:
	testq	%rbp, %rbp
	movq	8(%r13), %r8
	je	.L3347
	movq	__idp@GOTPCREL(%rip), %rax
	movl	8(%r12), %ecx
	movq	32(%r12), %rdx
	movq	(%rax), %rax
	cmpl	$64, %ecx
	leaq	(%rax,%rdx,8), %r13
	jg	.L3348
	movq	(%r8), %rax
	cmpq	%rax, 0(%r13)
	je	.L3373
	movq	%rax, 0(%r13)
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3336:
	movq	%rax, (%rdx)
	jmp	.L3337
	.p2align 4,,10
	.p2align 3
.L3339:
	movl	0(%r13), %ecx
	movq	%r9, %rdx
	movq	%r8, %rsi
	movq	%r12, %rdi
	call	__st_val@PLT
	jmp	.L3337
	.p2align 4,,10
	.p2align 3
.L3348:
	leal	63(%rcx), %ebx
	movq	%r8, %rdi
	movq	%r13, %rsi
	movl	%ecx, 16(%rsp)
	movq	%r8, 8(%rsp)
	sarl	$6, %ebx
	sall	$3, %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %rdx
	call	memcmp@PLT
	testl	%eax, %eax
	movq	8(%rsp), %r8
	movl	16(%rsp), %ecx
	je	.L3337
	movq	%rbx, %rdx
	movq	%r8, %rsi
	movq	%r13, %rdi
	movl	%ecx, 8(%rsp)
	call	memmove@PLT
	movl	8(%rsp), %ecx
	movq	__masktab@GOTPCREL(%rip), %rdx
	movl	%ecx, %eax
	andl	$63, %eax
	movq	(%rdx,%rax,8), %rax
	andq	%rax, -8(%r13,%rbx)
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3341:
	movq	(%r9), %rax
	cmpq	%rax, 8(%rcx)
	je	.L3373
	movq	%rax, 8(%rcx)
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3378:
	movq	%r8, %rsi
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	movq	%r9, 16(%rsp)
	call	memmove@PLT
	movq	%rax, %rcx
	movq	__masktab@GOTPCREL(%rip), %rax
	leaq	-8(%rbx), %r8
	movl	%r13d, %r10d
	movq	16(%rsp), %r9
	movq	8(%rsp), %rsi
	andl	$63, %r10d
	movq	%rbx, %rdx
	movq	%r8, 24(%rsp)
	movq	(%rax,%r10,8), %r13
	andq	%r13, (%rcx,%r8)
	movq	%r9, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	movq	16(%rsp), %r9
	movq	24(%rsp), %r8
	jne	.L3352
	jmp	.L3373
	.p2align 4,,10
	.p2align 3
.L3347:
	movq	16(%r13), %rdx
	movl	0(%r13), %ecx
	movq	%r8, %rsi
	movq	%r12, %rdi
	call	__st_val@PLT
	jmp	.L3337
	.p2align 4,,10
	.p2align 3
.L3349:
	movq	%rdx, (%rax)
	jmp	.L3337
	.cfi_endproc
.LFE509:
	.size	asl_loc_do_qc2_regstore.isra.19, .-asl_loc_do_qc2_regstore.isra.19
	.p2align 4,,15
	.type	asl_loc_do_qc_store, @function
asl_loc_do_qc_store:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%r8, 8(%rsp)
	call	__eval_assign_rhsexpr@PLT
	movq	8(%rsp), %r8
	leaq	24(%rbx), %rdx
	leaq	4(%rbx), %rsi
	movq	%rax, %rcx
	movq	%rbp, %rdi
	call	asl_loc_do_qc2_regstore.isra.19
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE175:
	.size	asl_loc_do_qc_store, .-asl_loc_do_qc_store
	.p2align 4,,15
	.type	asl_loc_do_qc_assign.isra.20, @function
asl_loc_do_qc_assign.isra.20:
.LFB510:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r15d, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	__idp@GOTPCREL(%rip), %r12
	movzwl	(%rsi), %r10d
	movq	(%r12), %rax
	andw	$1023, %r10w
	cmpw	$85, %r10w
	movq	(%rax), %rbp
	movl	%ebp, %edi
	je	.L3404
.L3382:
	movq	16(%rsi), %rsi
	movslq	%ebp, %rbp
	movq	16(%rsi), %r14
	leal	(%rdi,%rdi), %esi
	movslq	%esi, %rsi
	movq	120(%r14), %r9
	leaq	5(%rsi,%rsi,4), %rdi
	leaq	(%rsi,%rsi,4), %rsi
	testb	$1, (%r9,%rsi,8)
	leaq	(%r9,%rdi,8), %rbx
	je	.L3384
	movq	%rax, 24(%rbx)
	movq	(%rcx), %rax
	orb	$2, (%rbx)
	testq	%r15, %r15
	movq	%r13, 16(%rbx)
	movl	%edx, 4(%rbx)
	movl	$-1, 8(%rbx)
	movq	(%rax,%rbp,8), %rax
	movq	%rax, 32(%rbx)
	je	.L3381
	movq	%r15, (%r12)
.L3381:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3384:
	.cfi_restore_state
	movzbl	(%rbx), %esi
	testb	$1, %sil
	je	.L3387
	movq	32(%rbx), %rdi
	andl	$-2, %esi
	movb	%sil, (%rbx)
	testq	%rdi, %rdi
	je	.L3387
	movq	%r8, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movl	%edx, 8(%rsp)
	call	__dcelst_off@PLT
	movq	(%r12), %rax
	movq	24(%rsp), %r8
	movq	16(%rsp), %rcx
	movl	8(%rsp), %edx
.L3387:
	movq	%rax, 24(%rbx)
	movq	(%rcx), %rax
	orb	$1, (%rbx)
	testq	%r15, %r15
	movq	%r13, 16(%rbx)
	movl	%edx, 4(%rbx)
	movl	$-1, 8(%rbx)
	movq	(%rax,%rbp,8), %rax
	movq	%rax, 32(%rbx)
	je	.L3388
	movq	%r15, (%r12)
.L3388:
	movq	16(%r13), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	call	asl_loc_do_qc_store
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L3381
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__dcelst_on@PLT
	.p2align 4,,10
	.p2align 3
.L3404:
	.cfi_restore_state
	movq	24(%rsi), %rdi
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	call	__xmrget_refgrp_to_targ@PLT
	movq	32(%rsp), %r8
	movq	(%r12), %r15
	movl	(%rax), %edi
	movq	%rax, (%r12)
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	testq	%r8, %r8
	movq	24(%rsp), %rcx
	movq	40(%rsp), %r9
	je	.L3382
	movq	8(%rax), %r10
	cmpl	$1, 12(%r10)
	jle	.L3382
	movq	(%rax,%r9,8), %r8
	jmp	.L3382
	.cfi_endproc
.LFE510:
	.size	asl_loc_do_qc_assign.isra.20, .-asl_loc_do_qc_assign.isra.20
	.p2align 4,,15
	.globl	__asl_exec_qc_assign
	.type	__asl_exec_qc_assign, @function
__asl_exec_qc_assign:
.LFB188:
	.cfi_startproc
	movq	16(%rdi), %rax
	movl	%esi, %r10d
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	%r10d, %edx
	movq	24(%rax), %rcx
	movq	8(%rax), %rsi
	jmp	asl_loc_do_qc_assign.isra.20
	.cfi_endproc
.LFE188:
	.size	__asl_exec_qc_assign, .-__asl_exec_qc_assign
	.p2align 4,,15
	.globl	__asl_exec_qc_assign_concat
	.type	__asl_exec_qc_assign_concat, @function
__asl_exec_qc_assign_concat:
.LFB190:
	.cfi_startproc
	movq	%rcx, %r9
	movq	16(%rdi), %rcx
	movl	%esi, %eax
	movq	%r8, %rsi
	movq	%rdx, %r8
	movl	%eax, %edx
	movq	24(%rcx), %rcx
	jmp	asl_loc_do_qc_assign.isra.20
	.cfi_endproc
.LFE190:
	.size	__asl_exec_qc_assign_concat, .-__asl_exec_qc_assign_concat
	.p2align 4,,15
	.type	asl_loc_do_qc_regforce.isra.21, @function
asl_loc_do_qc_regforce.isra.21:
.LFB511:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	__idp@GOTPCREL(%rip), %rbp
	movzwl	(%rsi), %eax
	movq	0(%rbp), %r14
	andw	$1023, %ax
	cmpw	$85, %ax
	movq	(%r14), %r10
	movl	%r10d, %edi
	je	.L3436
.L3408:
	movq	16(%rsi), %rax
	leal	(%rdi,%rdi), %esi
	movslq	%esi, %rsi
	movq	16(%rax), %r13
	leaq	(%rsi,%rsi,4), %rdi
	movq	120(%r13), %rax
	leaq	(%rax,%rdi,8), %rbx
	testb	$1, (%rbx)
	je	.L3410
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L3411
	movq	%r10, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movl	%edx, (%rsp)
	call	__dcelst_off@PLT
	movq	0(%rbp), %r14
	movq	24(%rsp), %r10
	movq	16(%rsp), %r8
	movq	8(%rsp), %rcx
	movl	(%rsp), %edx
.L3411:
	movq	$0, 32(%rbx)
.L3412:
	movq	(%rcx), %rax
	orb	$1, (%rbx)
	movslq	%r10d, %r10
	testq	%r12, %r12
	movl	%edx, 4(%rbx)
	movq	%r15, 16(%rbx)
	movl	$-1, 8(%rbx)
	movq	%r14, 24(%rbx)
	movq	(%rax,%r10,8), %rax
	movq	%rax, 32(%rbx)
	movq	16(%r15), %rax
	movq	16(%rax), %rcx
	movq	8(%rax), %rdx
	je	.L3414
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, 0(%rbp)
	call	asl_loc_do_qc_store
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L3415
.L3421:
	movq	0(%rbp), %r12
	movq	%r14, 0(%rbp)
.L3420:
	movq	__num_vpi_force_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L3416
	movl	$-1, %esi
	movq	%r13, %rdi
	call	__find_call_force_cbs@PLT
.L3416:
	movq	__vpi_force_cb_always@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3437
.L3417:
	testq	%r12, %r12
	je	.L3407
	movq	%r12, 0(%rbp)
.L3407:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3410:
	.cfi_restore_state
	leaq	5(%rsi,%rsi,4), %rsi
	leaq	(%rax,%rsi,8), %rax
	testb	$1, (%rax)
	je	.L3412
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	.L3413
	movq	%r10, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movq	%rax, (%rsp)
	call	__dcelst_off@PLT
	movq	0(%rbp), %r14
	movq	32(%rsp), %r10
	movq	24(%rsp), %r8
	movq	16(%rsp), %rcx
	movl	8(%rsp), %edx
	movq	(%rsp), %rax
.L3413:
	movzbl	(%rax), %esi
	andl	$-2, %esi
	orl	$2, %esi
	movb	%sil, (%rax)
	jmp	.L3412
	.p2align 4,,10
	.p2align 3
.L3415:
	call	__dcelst_on@PLT
	jmp	.L3421
	.p2align 4,,10
	.p2align 3
.L3437:
	movl	$1, %edx
	movl	$-1, %esi
	movq	%r13, %rdi
	call	__cb_all_rfs@PLT
	jmp	.L3417
	.p2align 4,,10
	.p2align 3
.L3414:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	asl_loc_do_qc_store
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L3420
	call	__dcelst_on@PLT
	jmp	.L3420
	.p2align 4,,10
	.p2align 3
.L3436:
	movq	24(%rsi), %rdi
	movq	%r10, 40(%rsp)
	movq	%r9, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movq	%rsi, (%rsp)
	call	__xmrget_refgrp_to_targ@PLT
	movq	24(%rsp), %r8
	movq	0(%rbp), %r12
	movq	%rax, %r14
	movq	%rax, 0(%rbp)
	movl	(%rax), %edi
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	testq	%r8, %r8
	movq	16(%rsp), %rcx
	movq	32(%rsp), %r9
	movq	40(%rsp), %r10
	je	.L3408
	movq	8(%rax), %rax
	cmpl	$1, 12(%rax)
	jle	.L3408
	movq	(%r14,%r9,8), %r8
	jmp	.L3408
	.cfi_endproc
.LFE511:
	.size	asl_loc_do_qc_regforce.isra.21, .-asl_loc_do_qc_regforce.isra.21
	.p2align 4,,15
	.globl	__asl_exec_qc_force
	.type	__asl_exec_qc_force, @function
__asl_exec_qc_force:
.LFB189:
	.cfi_startproc
	movq	16(%rdi), %rax
	movl	%esi, %r10d
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	%r10d, %edx
	movq	24(%rax), %rcx
	movq	8(%rax), %rsi
	jmp	asl_loc_do_qc_regforce.isra.21
	.cfi_endproc
.LFE189:
	.size	__asl_exec_qc_force, .-__asl_exec_qc_force
	.p2align 4,,15
	.globl	__asl_exec_qc_force_concat
	.type	__asl_exec_qc_force_concat, @function
__asl_exec_qc_force_concat:
.LFB191:
	.cfi_startproc
	movq	%rcx, %r9
	movq	16(%rdi), %rcx
	movl	%esi, %eax
	movq	%r8, %rsi
	movq	%rdx, %r8
	movl	%eax, %edx
	movq	24(%rcx), %rcx
	jmp	asl_loc_do_qc_regforce.isra.21
	.cfi_endproc
.LFE191:
	.size	__asl_exec_qc_force_concat, .-__asl_exec_qc_force_concat
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"attempted release of reg %s in instance %s failed - never forced"
	.text
	.p2align 4,,15
	.type	asl_loc_do_qc_regrelease, @function
asl_loc_do_qc_regrelease:
.LFB204:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movzwl	(%rdi), %eax
	andw	$1023, %ax
	cmpw	$85, %ax
	je	.L3441
	movq	__idp@GOTPCREL(%rip), %rbp
	xorl	%r13d, %r13d
	movq	0(%rbp), %rax
.L3442:
	movq	16(%r14), %rdx
	movq	(%rax), %rbx
	movq	16(%rdx), %r15
	addl	%ebx, %ebx
	movslq	%ebx, %rbx
	leaq	(%rbx,%rbx,4), %rax
	movq	120(%r15), %rdx
	leaq	(%rdx,%rax,8), %r12
	movzbl	(%r12), %eax
	testb	$1, %al
	je	.L3474
	movq	32(%r12), %rdi
	andl	$-2, %eax
	movb	%al, (%r12)
	testq	%rdi, %rdi
	je	.L3446
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	call	__dcelst_off@PLT
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
.L3446:
	leaq	5(%rbx,%rbx,4), %rax
	movq	$0, 32(%r12)
	leaq	(%rdx,%rax,8), %rbx
	movq	__force_active@GOTPCREL(%rip), %rax
	testb	$2, (%rbx)
	movl	$0, (%rax)
	jne	.L3475
	testq	%r13, %r13
	je	.L3452
	movq	0(%rbp), %r12
.L3456:
	movq	%r12, 0(%rbp)
.L3451:
	movq	__num_vpi_rel_cbs@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L3453
	movl	$-1, %esi
	movq	%r15, %rdi
	call	__find_call_rel_cbs@PLT
.L3453:
	movq	__vpi_rel_cb_always@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3476
.L3454:
	testq	%r13, %r13
	je	.L3440
.L3473:
	movq	%r13, 0(%rbp)
.L3440:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3475:
	.cfi_restore_state
	movq	16(%rbx), %rax
	testq	%r13, %r13
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	16(%rax), %rcx
	je	.L3448
	movq	%rsi, %r8
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	0(%rbp), %r12
	movq	%r13, 0(%rbp)
	call	asl_loc_do_qc_store
	movzbl	(%rbx), %eax
	movq	32(%rbx), %rdi
	orl	$1, %eax
	andl	$-3, %eax
	testq	%rdi, %rdi
	movb	%al, (%rbx)
	je	.L3472
	call	__dcelst_on@PLT
.L3472:
	movq	__assign_active@GOTPCREL(%rip), %rax
	movq	0(%rbp), %r13
	movl	$1, (%rax)
	jmp	.L3456
	.p2align 4,,10
	.p2align 3
.L3474:
	movq	__xs@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	__msg2_cur_blditree@PLT
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	__to_idnam@PLT
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	movl	$465, %edi
	call	__sgfinform@PLT
	testq	%r13, %r13
	jne	.L3473
	jmp	.L3440
	.p2align 4,,10
	.p2align 3
.L3476:
	xorl	%edx, %edx
	movl	$-1, %esi
	movq	%r15, %rdi
	call	__cb_all_rfs@PLT
	jmp	.L3454
	.p2align 4,,10
	.p2align 3
.L3441:
	movq	24(%rdi), %rdi
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	call	__xmrget_refgrp_to_targ@PLT
	movq	(%rsp), %rsi
	movq	__idp@GOTPCREL(%rip), %rbp
	testq	%rsi, %rsi
	movq	0(%rbp), %r13
	movq	%rax, 0(%rbp)
	je	.L3442
	movq	8(%rax), %rcx
	cmpl	$1, 12(%rcx)
	jle	.L3442
	movq	8(%rsp), %rdx
	movq	(%rax,%rdx,8), %rsi
	jmp	.L3442
	.p2align 4,,10
	.p2align 3
.L3448:
	movq	%rsi, %r8
	movq	%r15, %rdi
	movq	%rbx, %rsi
	call	asl_loc_do_qc_store
	movzbl	(%rbx), %eax
	movq	32(%rbx), %rdi
	orl	$1, %eax
	andl	$-3, %eax
	testq	%rdi, %rdi
	movb	%al, (%rbx)
	jne	.L3477
	movq	__assign_active@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	jmp	.L3451
.L3477:
	call	__dcelst_on@PLT
	movq	__assign_active@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	.p2align 4,,10
	.p2align 3
.L3452:
	xorl	%r13d, %r13d
	jmp	.L3451
	.cfi_endproc
.LFE204:
	.size	asl_loc_do_qc_regrelease, .-asl_loc_do_qc_regrelease
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign_force
	.type	__asl_exec_qc_deassign_force, @function
__asl_exec_qc_deassign_force:
.LFB200:
	.cfi_startproc
	movq	24(%rdi), %rdi
	jmp	asl_loc_do_qc_regrelease
	.cfi_endproc
.LFE200:
	.size	__asl_exec_qc_deassign_force, .-__asl_exec_qc_deassign_force
	.p2align 4,,15
	.globl	__asl_exec_qc_deassign_force_concat
	.type	__asl_exec_qc_deassign_force_concat, @function
__asl_exec_qc_deassign_force_concat:
.LFB202:
	.cfi_startproc
	jmp	asl_loc_do_qc_regrelease
	.cfi_endproc
.LFE202:
	.size	__asl_exec_qc_deassign_force_concat, .-__asl_exec_qc_deassign_force_concat
	.p2align 4,,15
	.globl	__asl_assign_qcaf_regform
	.type	__asl_assign_qcaf_regform, @function
__asl_assign_qcaf_regform:
.LFB199:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbp
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	testb	$4, 1(%rdi)
	je	.L3487
	movq	__idp@GOTPCREL(%rip), %r12
	movq	104(%rdi), %rax
	testq	%rsi, %rsi
	movq	(%r12), %r13
	movq	%rax, (%r12)
	je	.L3481
	movq	8(%rax), %rdx
	cmpl	$1, 12(%rdx)
	jle	.L3482
	movq	(%rax,%r14,8), %rbp
.L3481:
	movq	88(%rdi), %rbx
	movq	16(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %r12
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	call	__eval_assign_rhsexpr@PLT
	movq	%rax, %r15
	movq	16(%r12), %rax
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	movq	16(%rax), %rax
	movq	%rax, 32(%rsp)
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	je	.L3483
	testq	%rbp, %rbp
	je	.L3483
	movq	__idp@GOTPCREL(%rip), %r12
.L3485:
	movq	(%r12), %rdx
	movq	8(%rdx), %rdx
	cmpl	$1, 12(%rdx)
	jle	.L3483
	movq	(%rax,%r14,8), %rbp
.L3483:
	movq	32(%rsp), %rdi
	leaq	24(%rbx), %rdx
	leaq	4(%rbx), %rsi
	movq	%rbp, %r8
	movq	%r15, %rcx
	call	asl_loc_do_qc2_regstore.isra.19
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	testq	%r13, %r13
	je	.L3480
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%r13, (%rax)
.L3480:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3501
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3487:
	.cfi_restore_state
	xorl	%r13d, %r13d
	jmp	.L3481
	.p2align 4,,10
	.p2align 3
.L3482:
	movq	88(%rdi), %rbx
	movq	16(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %r8
	movq	16(%rax), %rdi
	movq	%r8, %rsi
	movq	%r8, 8(%rsp)
	call	__eval_assign_rhsexpr@PLT
	movq	8(%rsp), %r8
	movq	%rax, %r15
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	16(%r8), %rax
	movq	%r8, %rdi
	movq	16(%rax), %rax
	movq	%rax, 32(%rsp)
	call	__get_qc_wirrng@PLT
	testq	%rax, %rax
	jne	.L3485
	jmp	.L3483
.L3501:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE199:
	.size	__asl_assign_qcaf_regform, .-__asl_assign_qcaf_regform
	.p2align 4,,15
	.type	asl_loc_assign_chged_vtxs, @function
asl_loc_assign_chged_vtxs:
.LFB384:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	__chg_vtxlst_hdr@GOTPCREL(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	__idp@GOTPCREL(%rip), %r13
	movq	0(%rbp), %rbx
	movq	0(%r13), %r12
	testq	%rbx, %rbx
	je	.L3515
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L3510:
	movq	8(%rbx), %rax
	movq	8(%rax), %rcx
	movq	(%rbx), %rax
	movq	16(%rax), %rdi
	movslq	4(%rax), %rdx
	movq	%rcx, 0(%r13)
	movzbl	(%rax), %esi
	movq	32(%rdi), %r9
	cmpl	$-1, %edx
	cmove	%r14, %rdx
	movb	%sil, 1(%rax)
	leaq	(%rdx,%r9,8), %rdx
	addq	%rdx, %rcx
	movzbl	(%rdi), %edx
	andl	$31, %edx
	cmpb	$6, %dl
	movzbl	(%rcx), %edx
	jne	.L3507
	cmpq	$2, %rsi
	je	.L3505
.L3507:
	cmpq	%rsi, %rdx
	je	.L3508
	movb	%sil, (%rcx)
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.L3522
	call	asl_loc_record_nchg
.L3522:
	movq	(%rbx), %rax
.L3508:
	movq	16(%rbx), %rbx
	andb	$-2, 2(%rax)
	testq	%rbx, %rbx
	jne	.L3510
	movq	0(%rbp), %rdx
	movq	%r12, 0(%r13)
	movq	__chg_vtxlst_end@GOTPCREL(%rip), %rax
	testq	%rdx, %rdx
	je	.L3511
	movq	__vtxlst_freelst@GOTPCREL(%rip), %rcx
	movq	(%rax), %rsi
	movq	(%rcx), %rdi
	movq	%rdx, (%rcx)
	movq	%rdi, 16(%rsi)
.L3511:
	movq	$0, (%rax)
	movq	$0, 0(%rbp)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3505:
	.cfi_restore_state
	movzbl	3(%rdi), %r8d
	movq	__cap_to_stren@GOTPCREL(%rip), %r9
	movl	%edx, %esi
	andl	$3, %esi
	shrb	%r8b
	andl	$3, %r8d
	orb	(%r9,%r8,8), %sil
	movzbl	%sil, %esi
	jmp	.L3507
	.p2align 4,,10
	.p2align 3
.L3515:
	movq	__chg_vtxlst_end@GOTPCREL(%rip), %rax
	jmp	.L3511
	.cfi_endproc
.LFE384:
	.size	asl_loc_assign_chged_vtxs, .-asl_loc_assign_chged_vtxs
	.p2align 4,,15
	.globl	__asl_immed_eval_trifchan
	.type	__asl_immed_eval_trifchan, @function
__asl_immed_eval_trifchan:
.LFB372:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	__cvc_immed_eval_trifchan@PLT
	movq	__chg_vtxlst_hdr@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L3523
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_assign_chged_vtxs
	.p2align 4,,10
	.p2align 3
.L3523:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE372:
	.size	__asl_immed_eval_trifchan, .-__asl_immed_eval_trifchan
	.p2align 4,,15
	.globl	__asl_eval_tran_1bit
	.type	__asl_eval_tran_1bit, @function
__asl_eval_tran_1bit:
.LFB382:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	__idp@GOTPCREL(%rip), %rax
	movq	88(%rdi), %rdx
	movq	(%rax), %rcx
	movl	8(%rdi), %eax
	imull	(%rcx), %eax
	addl	%eax, %esi
	movq	8(%rdx), %rax
	movslq	%esi, %rsi
	movq	(%rax,%rsi,8), %rax
	movq	8(%rax), %rdi
	call	__cvc_eval_update_1w_tranchan@PLT
	movq	__chg_vtxlst_hdr@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.L3526
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	asl_loc_assign_chged_vtxs
	.p2align 4,,10
	.p2align 3
.L3526:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE382:
	.size	__asl_eval_tran_1bit, .-__asl_eval_tran_1bit
	.p2align 4,,15
	.globl	__asl_eval_tran_vector
	.type	__asl_eval_tran_vector, @function
__asl_eval_tran_vector:
.LFB383:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	__idp@GOTPCREL(%rip), %rdx
	movl	8(%rdi), %eax
	movq	88(%rdi), %rbp
	movq	(%rdx), %rdx
	movl	(%rdx), %ecx
	imull	%eax, %ecx
	subl	$1, %eax
	js	.L3529
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movl	%eax, %eax
	addq	%rcx, %rdx
	movq	__chg_vtxlst_hdr@GOTPCREL(%rip), %r12
	leaq	0(,%rdx,8), %rbx
	subq	%rax, %rdx
	leaq	-8(,%rdx,8), %r13
	.p2align 4,,10
	.p2align 3
.L3532:
	movq	8(%rbp), %rax
	movq	(%rax,%rbx), %rax
	movq	8(%rax), %rdi
	call	__cvc_eval_update_1w_tranchan@PLT
	cmpq	$0, (%r12)
	je	.L3531
	call	asl_loc_assign_chged_vtxs
.L3531:
	subq	$8, %rbx
	cmpq	%r13, %rbx
	jne	.L3532
.L3529:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE383:
	.size	__asl_eval_tran_vector, .-__asl_eval_tran_vector
	.p2align 4,,15
	.globl	__asl_eval_htran_wire_1bit_nchg
	.type	__asl_eval_htran_wire_1bit_nchg, @function
__asl_eval_htran_wire_1bit_nchg:
.LFB399:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	%edx, %ecx
	movl	%edx, %r12d
	movq	%rbx, %rdx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	asl_loc_ld_vtx_netbit
	testb	$32, 4(%rbx)
	movq	__idp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	je	.L3536
	movl	8(%rbx), %eax
	movq	120(%rbx), %rdx
	imull	(%rsi), %eax
	addl	%r12d, %eax
	cltq
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,8), %rax
	testb	$1, (%rax)
	je	.L3536
.L3535:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3549
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3536:
	.cfi_restore_state
	testb	$4, 2(%rbx)
	movq	32(%rbx), %rax
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdx
	leaq	(%rsi,%rax,8), %rdi
	jne	.L3538
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	cmpq	%rdx, (%rdi)
	je	.L3535
	movq	%rdx, (%rdi)
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	asl_loc_record_nchg
	jmp	.L3535
	.p2align 4,,10
	.p2align 3
.L3538:
	movl	8(%rbx), %r8d
	movl	%r12d, %esi
	call	asl_loc_chg_vec_lhsbsel
	testl	%eax, %eax
	je	.L3535
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	asl_loc_record_nchg
	jmp	.L3535
.L3549:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE399:
	.size	__asl_eval_htran_wire_1bit_nchg, .-__asl_eval_htran_wire_1bit_nchg
	.p2align 4,,15
	.globl	__asl_eval_htran_stwire_1bit_nchg
	.type	__asl_eval_htran_stwire_1bit_nchg, @function
__asl_eval_htran_stwire_1bit_nchg:
.LFB401:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	88(%rdi), %r8
	movq	(%rax), %rcx
	movl	8(%rdi), %eax
	movq	(%r8), %r8
	imull	(%rcx), %eax
	addl	%edx, %eax
	testb	$32, 4(%rdi)
	cltq
	movzbl	(%r8,%rax), %r8d
	je	.L3551
	movq	120(%rdi), %r9
	leaq	(%rax,%rax,4), %rax
	leaq	(%r9,%rax,8), %rax
	testb	$1, (%rax)
	jne	.L3550
.L3551:
	movq	32(%rdi), %rax
	movslq	%edx, %rdx
	leaq	(%rdx,%rax,8), %rax
	movzbl	(%rdi), %edx
	addq	%rax, %rcx
	movzbl	(%rcx), %eax
	andl	$31, %edx
	cmpb	$6, %dl
	jne	.L3553
	cmpq	$2, %r8
	je	.L3563
.L3553:
	cmpq	%r8, %rax
	je	.L3550
	movb	%r8b, (%rcx)
	jmp	asl_loc_record_nchg
	.p2align 4,,10
	.p2align 3
.L3550:
	rep ret
	.p2align 4,,10
	.p2align 3
.L3563:
	movzbl	3(%rdi), %edx
	movq	__cap_to_stren@GOTPCREL(%rip), %r9
	movl	%eax, %r8d
	andl	$3, %r8d
	shrb	%dl
	andl	$3, %edx
	orb	(%r9,%rdx,8), %r8b
	movzbl	%r8b, %r8d
	jmp	.L3553
	.cfi_endproc
.LFE401:
	.size	__asl_eval_htran_stwire_1bit_nchg, .-__asl_eval_htran_stwire_1bit_nchg
	.p2align 4,,15
	.globl	__asl_exec_cause
	.type	__asl_exec_cause, @function
__asl_exec_cause:
.LFB306:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	16(%rdi), %rbx
	movzwl	(%rbx), %eax
	andw	$1023, %ax
	cmpw	$85, %ax
	je	.L3587
	movq	__idp@GOTPCREL(%rip), %r12
	xorl	%r13d, %r13d
.L3565:
	movq	16(%rbx), %rax
	movq	16(%rax), %rbx
	movq	160(%rbx), %rax
	testq	%rax, %rax
	je	.L3566
	movq	__nchged_i2@GOTPCREL(%rip), %rcx
	movq	$-1, %rdx
	cmpl	$1, 12(%rbx)
	movq	%rdx, (%rcx)
	movq	__nchged_i1@GOTPCREL(%rip), %rcx
	movq	%rdx, (%rcx)
	jg	.L3588
.L3567:
#APP
# 8049 "v_aslib.c" 1
	movq __idp, %r15
# 0 "" 2
#NO_APP
	call	*%rax
.L3566:
	testq	%rbp, %rbp
	je	.L3568
	cmpq	$0, 0(%rbp)
	je	.L3589
.L3568:
	testb	$1, 6(%rbx)
	jne	.L3590
.L3569:
	movq	(%r12), %rax
	movq	96(%rbx), %rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, %rcx
	andl	$3, %ecx
	cmpq	$3, %rcx
	je	.L3591
.L3570:
	cmpb	$0, 4(%rbx)
	js	.L3592
.L3571:
	testq	%r13, %r13
	je	.L3564
	movq	%r13, (%r12)
.L3564:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3589:
	.cfi_restore_state
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	testb	$1, 6(%rbx)
	movq	$1, 0(%rbp)
	movq	$0, 16(%rbp)
	movq	$0, 48(%rbp)
	movq	(%rax), %rdx
	movq	%rbp, (%rax)
	movq	%rbp, 48(%rdx)
	je	.L3569
.L3590:
	movq	%rbx, %rdi
	call	__add_togglelst_el@PLT
	jmp	.L3569
	.p2align 4,,10
	.p2align 3
.L3588:
	movq	%rbx, %rdi
	call	__asl_chk_dce_cbvc@PLT
	movq	160(%rbx), %rax
	jmp	.L3567
	.p2align 4,,10
	.p2align 3
.L3592:
	movq	(%r12), %rax
	movq	96(%rbx), %rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, %rcx
	andl	$48, %ecx
	cmpq	$48, %rcx
	jne	.L3571
	andq	$-33, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdx)
	call	__asl_add_dmpp_chglst_el@PLT
	jmp	.L3571
	.p2align 4,,10
	.p2align 3
.L3587:
	movq	24(%rbx), %rdi
	call	__xmrget_refgrp_to_targ@PLT
	movq	__idp@GOTPCREL(%rip), %r12
	movq	(%r12), %r13
	movq	%rax, (%r12)
	jmp	.L3565
	.p2align 4,,10
	.p2align 3
.L3591:
	andq	$-3, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdx)
	call	__asl_add_dmpv_chglst_el@PLT
	jmp	.L3570
	.cfi_endproc
.LFE306:
	.size	__asl_exec_cause, .-__asl_exec_cause
	.p2align 4,,15
	.type	asl_loc_record_sel_nchg, @function
asl_loc_record_sel_nchg:
.LFB441:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	160(%rdi), %rax
	movq	%rdi, %rbx
	testq	%rax, %rax
	je	.L3594
	movq	__nchged_i1@GOTPCREL(%rip), %rcx
	movslq	%edx, %rdx
	cmpl	$1, 12(%rdi)
	movq	%rdx, (%rcx)
	movq	__nchged_i2@GOTPCREL(%rip), %rcx
	movq	%rdx, (%rcx)
	jg	.L3610
.L3595:
#APP
# 12580 "v_aslib.c" 1
	movq __idp, %r15
# 0 "" 2
#NO_APP
	call	*%rax
.L3594:
	testq	%rbp, %rbp
	je	.L3596
	cmpq	$0, 0(%rbp)
	je	.L3611
.L3596:
	testb	$1, 6(%rbx)
	jne	.L3612
.L3597:
	movq	__idp@GOTPCREL(%rip), %rbp
	movq	96(%rbx), %rdx
	movq	0(%rbp), %rax
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, %rcx
	andl	$3, %ecx
	cmpq	$3, %rcx
	je	.L3613
.L3598:
	cmpb	$0, 4(%rbx)
	js	.L3614
.L3593:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3611:
	.cfi_restore_state
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	testb	$1, 6(%rbx)
	movq	$1, 0(%rbp)
	movq	$0, 16(%rbp)
	movq	$0, 48(%rbp)
	movq	(%rax), %rdx
	movq	%rbp, (%rax)
	movq	%rbp, 48(%rdx)
	je	.L3597
.L3612:
	movq	%rbx, %rdi
	call	__add_togglelst_el@PLT
	jmp	.L3597
	.p2align 4,,10
	.p2align 3
.L3610:
	call	__asl_chk_dce_cbvc@PLT
	movq	160(%rbx), %rax
	jmp	.L3595
	.p2align 4,,10
	.p2align 3
.L3614:
	movq	0(%rbp), %rax
	movq	96(%rbx), %rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, %rcx
	andl	$48, %ecx
	cmpq	$48, %rcx
	jne	.L3593
	andq	$-33, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__asl_add_dmpp_chglst_el@PLT
	.p2align 4,,10
	.p2align 3
.L3613:
	.cfi_restore_state
	andq	$-3, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdx)
	call	__asl_add_dmpv_chglst_el@PLT
	jmp	.L3598
	.cfi_endproc
.LFE441:
	.size	asl_loc_record_sel_nchg, .-asl_loc_record_sel_nchg
	.p2align 4,,15
	.type	asl_loc_chg_st_bit, @function
asl_loc_chg_st_bit:
.LFB442:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%r8, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzbl	1(%rdi), %eax
	movq	%rdi, %rbx
	movl	%esi, %ebp
	shrb	%al
	andl	$63, %eax
	cmpb	$1, %al
	je	.L3617
	jb	.L3618
	cmpb	$2, %al
	je	.L3619
	cmpb	$3, %al
	jne	.L3615
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rdi), %rcx
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rax
	cmpb	%dl, (%rax)
	je	.L3615
.L3625:
	movb	%dl, (%rax)
.L3622:
	movl	%ebp, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	asl_loc_record_sel_nchg
	.p2align 4,,10
	.p2align 3
.L3619:
	.cfi_restore_state
	movq	__idp@GOTPCREL(%rip), %rax
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	32(%rdi), %rcx
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rax
	cmpq	%rdx, (%rax)
	je	.L3615
	movq	%rdx, (%rax)
	jmp	.L3622
	.p2align 4,,10
	.p2align 3
.L3618:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rdi), %rsi
	movl	8(%rbx), %r8d
	movq	(%rax), %rax
	leaq	(%rax,%rsi,8), %rdi
	movl	%ebp, %esi
	call	asl_loc_chg_vec_lhsbsel
	testl	%eax, %eax
	jne	.L3622
.L3615:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3617:
	.cfi_restore_state
	movq	32(%rdi), %rcx
	movslq	%esi, %rax
	leaq	(%rax,%rcx,8), %rax
	movq	__idp@GOTPCREL(%rip), %rcx
	addq	(%rcx), %rax
	cmpb	%dl, (%rax)
	jne	.L3625
	jmp	.L3615
	.cfi_endproc
.LFE442:
	.size	asl_loc_chg_st_bit, .-asl_loc_chg_st_bit
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"distributed longer or path destination driver unstable"
	.text
	.p2align 4,,15
	.globl	__asl_schd_1pthwirebit
	.type	__asl_schd_1pthwirebit, @function
__asl_schd_1pthwirebit:
.LFB429:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%r8, %r14
	movq	%r9, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpq	$0, 16(%r9)
	jne	.L3627
	cmpq	%rcx, %rdx
	je	.L3626
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
.L3653:
	movq	56(%r15), %rax
	leaq	16(%rsp), %rdx
	movl	%r13d, %esi
	movq	%rdx, (%rsp)
	movq	16(%rax), %rdi
	call	asl_loc_get_path_del.isra.7
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L3658
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx
	cmpq	(%rax), %rcx
	jbe	.L3659
	cmpq	$0, 16(%rbp)
	je	.L3660
	cmpq	%r12, %rbx
	je	.L3633
	cmpb	%bl, 2(%rbp)
	je	.L3626
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L3649
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L3661
.L3649:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3657
	movq	16(%rsp), %rsi
	cmpq	48(%rbp), %rsi
	movb	%bl, 2(%rbp)
	je	.L3626
	movq	%rbp, %rdi
	call	asl_loc_reschedule_1wev.part.6
	.p2align 4,,10
	.p2align 3
.L3626:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3662
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3627:
	.cfi_restore_state
	movq	__new_gateval@GOTPCREL(%rip), %rax
	cmpq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	jne	.L3653
	movq	$0, 16(%rsp)
.L3633:
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L3663
.L3644:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	je	.L3646
.L3657:
	movq	__showe_onevent@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L3647
	movb	$3, 2(%rbp)
	jmp	.L3626
	.p2align 4,,10
	.p2align 3
.L3659:
	movq	__no_informs@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L3664
.L3635:
	cmpq	$0, 16(%rbp)
	je	.L3636
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L3638
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	.L3665
.L3638:
	movq	%rbp, %rdi
	call	linkout_tevp
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	je	.L3636
.L3640:
	movq	%r14, %r8
	movl	$1, %ecx
	movl	$1, %edx
	movl	%r13d, %esi
	movq	%r15, %rdi
	call	asl_loc_chg_st_bit
	jmp	.L3626
	.p2align 4,,10
	.p2align 3
.L3663:
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L3644
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3644
	leaq	48(%rbp), %rcx
	leaq	.LC12(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdx
	movl	%r13d, %esi
	movq	%r15, %rdi
	call	__emit_path_samewarn@PLT
	jmp	.L3644
	.p2align 4,,10
	.p2align 3
.L3660:
	movq	__pdmindel@GOTPCREL(%rip), %rax
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movl	%r13d, %edi
	movq	(%rax), %rdx
	call	asl_loc_schedule_1wev
	jmp	.L3626
	.p2align 4,,10
	.p2align 3
.L3636:
	movq	%rbx, %rcx
	movq	%r14, %r8
	movq	%rbx, %rdx
	shrq	%rcx
	movl	%r13d, %esi
	movq	%r15, %rdi
	andl	$1, %ecx
	call	asl_loc_chg_st_bit
	jmp	.L3626
	.p2align 4,,10
	.p2align 3
.L3658:
	movq	%rbx, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	shrq	%rcx
	andl	$1, %edx
	movl	%r13d, %esi
	andl	$1, %ecx
	movq	%r15, %rdi
	call	asl_loc_chg_st_bit
	jmp	.L3626
	.p2align 4,,10
	.p2align 3
.L3647:
	movq	%rbp, %rdi
	call	linkout_tevp
	jmp	.L3640
	.p2align 4,,10
	.p2align 3
.L3664:
	movq	__pdmindel@GOTPCREL(%rip), %rdx
	movq	%r11, %rsi
	movq	%r15, %rdi
	movq	%r11, (%rsp)
	call	__emit_path_distinform@PLT
	movq	(%rsp), %r11
	jmp	.L3635
	.p2align 4,,10
	.p2align 3
.L3665:
	movl	$592, %edi
	movq	%r11, (%rsp)
	call	__em_suppr@PLT
	testl	%eax, %eax
	movq	(%rsp), %r11
	jne	.L3638
	leaq	48(%rbp), %rdx
	leaq	.LC24(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movq	%r11, %rdi
	call	__emit_path_pulsewarn@PLT
	jmp	.L3638
	.p2align 4,,10
	.p2align 3
.L3646:
	movq	%rbp, %rdi
	call	linkout_tevp
	jmp	.L3626
	.p2align 4,,10
	.p2align 3
.L3661:
	movl	$592, %edi
	movq	%r11, 8(%rsp)
	call	__em_suppr@PLT
	testl	%eax, %eax
	movq	8(%rsp), %r11
	jne	.L3649
	movq	(%rsp), %rcx
	leaq	48(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rsi
	movq	%r11, %rdi
	call	__emit_path_pulsewarn@PLT
	jmp	.L3649
.L3662:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE429:
	.size	__asl_schd_1pthwirebit, .-__asl_schd_1pthwirebit
	.p2align 4,,15
	.globl	__asl_schd_1pthwirebit_nomsg
	.type	__asl_schd_1pthwirebit_nomsg, @function
__asl_schd_1pthwirebit_nomsg:
.LFB430:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %r12d
	movq	%rdx, %rbx
	movq	%rcx, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpq	$0, 16(%r9)
	jne	.L3667
	cmpq	%rcx, %rdx
	je	.L3666
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
.L3678:
	movq	56(%r13), %rax
	leaq	16(%rsp), %rdx
	movl	%r12d, %esi
	movq	%r9, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rax), %rdi
	call	asl_loc_get_path_del.isra.7
	testq	%rax, %rax
	movq	(%rsp), %r8
	movq	8(%rsp), %r9
	je	.L3685
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx
	movq	16(%r9), %rdx
	cmpq	(%rax), %rcx
	jbe	.L3686
	testq	%rdx, %rdx
	je	.L3687
	cmpq	%rbp, %rbx
	je	.L3673
	cmpb	%bl, 2(%r9)
	je	.L3666
	cmpq	48(%r9), %rcx
	movb	%bl, 2(%r9)
	je	.L3666
	movq	%rcx, %rsi
	movq	%r9, %rdi
	call	asl_loc_reschedule_1wev.part.6
	.p2align 4,,10
	.p2align 3
.L3666:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3688
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3667:
	.cfi_restore_state
	movq	__new_gateval@GOTPCREL(%rip), %rax
	cmpq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	jne	.L3678
	movq	$0, 16(%rsp)
.L3673:
	movq	%r9, %rdi
	call	linkout_tevp
	jmp	.L3666
	.p2align 4,,10
	.p2align 3
.L3686:
	testq	%rdx, %rdx
	jne	.L3689
.L3675:
	movq	%rbx, %rcx
	movq	%rbx, %rdx
	movl	%r12d, %esi
	shrq	%rcx
	movq	%r13, %rdi
	andl	$1, %ecx
	call	asl_loc_chg_st_bit
	jmp	.L3666
.L3687:
	movq	__pdmindel@GOTPCREL(%rip), %rax
	movq	%rbx, %r8
	movq	%r9, %rsi
	movl	%r12d, %edi
	movq	(%rax), %rdx
	call	asl_loc_schedule_1wev
	jmp	.L3666
	.p2align 4,,10
	.p2align 3
.L3685:
	movq	%rbx, %rcx
	movq	%rbx, %rdx
	movl	%r12d, %esi
	shrq	%rcx
	andl	$1, %edx
	movq	%r13, %rdi
	andl	$1, %ecx
	call	asl_loc_chg_st_bit
	jmp	.L3666
	.p2align 4,,10
	.p2align 3
.L3689:
	movq	%r9, %rdi
	movq	%r8, (%rsp)
	call	linkout_tevp
	movq	(%rsp), %r8
	jmp	.L3675
.L3688:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE430:
	.size	__asl_schd_1pthwirebit_nomsg, .-__asl_schd_1pthwirebit_nomsg
	.p2align 4,,15
	.globl	__asl_schd_st_1pthwirebit
	.type	__asl_schd_st_1pthwirebit, @function
__asl_schd_st_1pthwirebit:
.LFB431:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%r8, %r14
	movq	%r9, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpq	$0, 16(%r9)
	jne	.L3691
	cmpq	%rcx, %rdx
	je	.L3690
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
.L3718:
	movq	56(%r15), %rax
	leaq	16(%rsp), %rdx
	movl	%r13d, %esi
	movq	%rdx, (%rsp)
	movq	16(%rax), %rdi
	call	asl_loc_get_path_del.isra.7
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L3705
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rcx
	cmpq	(%rax), %rcx
	jbe	.L3723
	cmpq	$0, 16(%rbp)
	je	.L3724
	cmpq	%r12, %rbx
	je	.L3697
	cmpb	%bl, 2(%rbp)
	je	.L3690
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L3714
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L3725
.L3714:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3722
	movq	16(%rsp), %rsi
	cmpq	48(%rbp), %rsi
	movb	%bl, 2(%rbp)
	je	.L3690
	movq	%rbp, %rdi
	call	asl_loc_reschedule_1wev.part.6
	.p2align 4,,10
	.p2align 3
.L3690:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3726
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3691:
	.cfi_restore_state
	movq	__new_gateval@GOTPCREL(%rip), %rax
	cmpq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	jne	.L3718
	movq	$0, 16(%rsp)
.L3697:
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L3727
.L3709:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	je	.L3711
.L3722:
	movq	__showe_onevent@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L3712
	movb	$-37, 2(%rbp)
	jmp	.L3690
	.p2align 4,,10
	.p2align 3
.L3723:
	movq	__no_informs@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L3728
.L3699:
	cmpq	$0, 16(%rbp)
	je	.L3705
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L3702
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	.L3729
.L3702:
	movq	%rbp, %rdi
	call	linkout_tevp
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	je	.L3705
.L3704:
	movq	%r14, %r8
	xorl	%ecx, %ecx
	movl	$219, %edx
	movl	%r13d, %esi
	movq	%r15, %rdi
	call	asl_loc_chg_st_bit
	jmp	.L3690
	.p2align 4,,10
	.p2align 3
.L3727:
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L3709
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3709
	leaq	48(%rbp), %rcx
	leaq	.LC12(%rip), %r8
	movl	$1, %r9d
	movq	%rbp, %rdx
	movl	%r13d, %esi
	movq	%r15, %rdi
	call	__emit_path_samewarn@PLT
	jmp	.L3709
	.p2align 4,,10
	.p2align 3
.L3724:
	movq	__pdmindel@GOTPCREL(%rip), %rax
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movl	%r13d, %edi
	movq	(%rax), %rdx
	call	asl_loc_schedule_1wev
	jmp	.L3690
	.p2align 4,,10
	.p2align 3
.L3705:
	movq	%r14, %r8
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movl	%r13d, %esi
	movq	%r15, %rdi
	call	asl_loc_chg_st_bit
	jmp	.L3690
	.p2align 4,,10
	.p2align 3
.L3712:
	movq	%rbp, %rdi
	call	linkout_tevp
	jmp	.L3704
	.p2align 4,,10
	.p2align 3
.L3728:
	movq	__pdmindel@GOTPCREL(%rip), %rdx
	movq	%r11, %rsi
	movq	%r15, %rdi
	movq	%r11, (%rsp)
	call	__emit_path_distinform@PLT
	movq	(%rsp), %r11
	jmp	.L3699
	.p2align 4,,10
	.p2align 3
.L3729:
	movl	$592, %edi
	movq	%r11, (%rsp)
	call	__em_suppr@PLT
	testl	%eax, %eax
	movq	(%rsp), %r11
	jne	.L3702
	leaq	48(%rbp), %rdx
	leaq	.LC24(%rip), %r8
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movq	%r11, %rdi
	call	__emit_path_pulsewarn@PLT
	jmp	.L3702
	.p2align 4,,10
	.p2align 3
.L3711:
	movq	%rbp, %rdi
	call	linkout_tevp
	jmp	.L3690
	.p2align 4,,10
	.p2align 3
.L3725:
	movl	$592, %edi
	movq	%r11, 8(%rsp)
	call	__em_suppr@PLT
	testl	%eax, %eax
	movq	8(%rsp), %r11
	jne	.L3714
	movq	(%rsp), %rcx
	leaq	48(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	movl	$1, %r9d
	movq	%rbp, %rsi
	movq	%r11, %rdi
	call	__emit_path_pulsewarn@PLT
	jmp	.L3714
.L3726:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE431:
	.size	__asl_schd_st_1pthwirebit, .-__asl_schd_st_1pthwirebit
	.p2align 4,,15
	.globl	__asl_stren_sched_unknown_bit
	.type	__asl_stren_sched_unknown_bit, @function
__asl_stren_sched_unknown_bit:
.LFB410:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC1(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	movl	$11089, %esi
	movq	%rdx, %r13
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	call	__misc_terr@PLT
	movl	8(%r14), %edx
	movq	__lhs_changed@GOTPCREL(%rip), %rax
	testl	%edx, %edx
	movl	$0, (%rax)
	jle	.L3730
	movl	%ebx, %r12d
	xorl	%r15d, %r15d
	movl	$219, %ebp
	jmp	.L3736
	.p2align 4,,10
	.p2align 3
.L3735:
	movq	(%rsp), %r8
	movl	%r15d, %esi
	movq	%r14, %rdi
	call	__asl_wdel_schd_1wirebit@PLT
.L3734:
	addl	$1, %r15d
	addq	$1, %r13
	cmpl	%r15d, 8(%r14)
	jle	.L3741
.L3736:
	movzbl	0(%r13), %ecx
	movq	%rbp, %rdx
	cmpb	%r12b, %cl
	cmove	%rbx, %rdx
	cmpq	%rdx, %rcx
	je	.L3734
	movq	56(%r14), %rsi
	movzbl	8(%rsi), %esi
	andl	$31, %esi
	cmpb	$15, %sil
	jne	.L3735
	movq	(%rsp), %r9
	movq	8(%rsp), %r8
	movl	%r15d, %esi
	movq	%r14, %rdi
	addl	$1, %r15d
	addq	$1, %r13
	call	__asl_schd_st_1pthwirebit@PLT
	cmpl	%r15d, 8(%r14)
	jg	.L3736
.L3741:
	movq	__lhs_changed@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3742
.L3730:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3742:
	.cfi_restore_state
	movq	8(%rsp), %rsi
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movq	%r14, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	asl_loc_record_nchg
	.cfi_endproc
.LFE410:
	.size	__asl_stren_sched_unknown_bit, .-__asl_stren_sched_unknown_bit
	.p2align 4,,15
	.globl	__asl_schd_scalar_1pthwirebit
	.type	__asl_schd_scalar_1pthwirebit, @function
__asl_schd_scalar_1pthwirebit:
.LFB432:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%r8, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	cmpq	$0, 16(%r8)
	jne	.L3744
	cmpq	%rdx, %rsi
	je	.L3743
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rsi, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
.L3771:
	movq	56(%r13), %rdi
	movq	%rsp, %r15
	movq	%r15, %rsi
	call	asl_loc_get_path_del_scalar.isra.8
	testq	%rax, %rax
	je	.L3748
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rsp), %rcx
	cmpq	(%rax), %rcx
	jbe	.L3749
	cmpq	$0, 16(%rbp)
	je	.L3777
	cmpq	%r12, %rbx
	je	.L3752
	cmpb	%bl, 2(%rbp)
	je	.L3743
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L3767
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L3778
.L3767:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3776
	movq	(%rsp), %rsi
	cmpq	48(%rbp), %rsi
	movb	%bl, 2(%rbp)
	je	.L3743
	movq	%rbp, %rdi
	call	asl_loc_reschedule_1wev.part.6
	.p2align 4,,10
	.p2align 3
.L3743:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3779
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3744:
	.cfi_restore_state
	movq	__new_gateval@GOTPCREL(%rip), %rax
	cmpq	%rdx, %rsi
	movq	%rsi, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	jne	.L3771
	movq	$0, (%rsp)
.L3752:
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L3780
.L3762:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	je	.L3764
.L3776:
	movq	__showe_onevent@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L3765
	movb	$3, 2(%rbp)
	jmp	.L3743
	.p2align 4,,10
	.p2align 3
.L3749:
	movq	__no_informs@GOTPCREL(%rip), %rax
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	je	.L3781
.L3753:
	cmpq	$0, 16(%rbp)
	je	.L3754
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	.L3756
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r11d
	testl	%r11d, %r11d
	jne	.L3756
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3756
	leaq	48(%rbp), %rdx
	leaq	.LC24(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$4294967295, %edi
	call	__emit_path_pulsewarn@PLT
	.p2align 4,,10
	.p2align 3
.L3756:
	movq	%rbp, %rdi
	call	linkout_tevp
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	jne	.L3758
.L3754:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%r13), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	movzbl	(%rax), %edx
	cmpq	%rbx, %rdx
	je	.L3743
	movb	%bl, (%rax)
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	asl_loc_record_nchg
	jmp	.L3743
	.p2align 4,,10
	.p2align 3
.L3780:
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L3762
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3762
	leaq	48(%rbp), %rcx
	leaq	.LC12(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	__emit_path_samewarn@PLT
	jmp	.L3762
	.p2align 4,,10
	.p2align 3
.L3765:
	movq	%rbp, %rdi
	call	linkout_tevp
.L3758:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%r13), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	cmpb	$3, (%rax)
	je	.L3743
	movb	$3, (%rax)
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	asl_loc_record_nchg
	jmp	.L3743
.L3777:
	movq	__pdmindel@GOTPCREL(%rip), %rax
	movq	%rbx, %r8
	movq	%rbp, %rsi
	xorl	%edi, %edi
	movq	(%rax), %rdx
	call	asl_loc_schedule_1wev
	jmp	.L3743
	.p2align 4,,10
	.p2align 3
.L3748:
	movq	%rbx, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	shrq	%rcx
	andl	$1, %edx
	movl	$-1, %esi
	andl	$1, %ecx
	movq	%r13, %rdi
	call	asl_loc_chg_st_bit
	jmp	.L3743
	.p2align 4,,10
	.p2align 3
.L3781:
	movq	__pdmindel@GOTPCREL(%rip), %rdx
	movl	$4294967295, %esi
	movq	%r13, %rdi
	call	__emit_path_distinform@PLT
	jmp	.L3753
	.p2align 4,,10
	.p2align 3
.L3764:
	movq	%rbp, %rdi
	call	linkout_tevp
	jmp	.L3743
	.p2align 4,,10
	.p2align 3
.L3778:
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3767
	leaq	48(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movq	%rbp, %rsi
	movl	$4294967295, %edi
	call	__emit_path_pulsewarn@PLT
	jmp	.L3767
.L3779:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE432:
	.size	__asl_schd_scalar_1pthwirebit, .-__asl_schd_scalar_1pthwirebit
	.p2align 4,,15
	.globl	__asl_schd_st_scalar_1pthwirebit
	.type	__asl_schd_st_scalar_1pthwirebit, @function
__asl_schd_st_scalar_1pthwirebit:
.LFB433:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%r8, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	cmpq	$0, 16(%r8)
	jne	.L3783
	cmpq	%rdx, %rsi
	je	.L3782
	movq	__new_gateval@GOTPCREL(%rip), %rax
	movq	%rsi, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
.L3810:
	movq	56(%r13), %rdi
	movq	%rsp, %r15
	movq	%r15, %rsi
	call	asl_loc_get_path_del_scalar.isra.8
	testq	%rax, %rax
	je	.L3787
	movq	__simtime@GOTPCREL(%rip), %rax
	movq	(%rsp), %rcx
	cmpq	(%rax), %rcx
	jbe	.L3788
	cmpq	$0, 16(%rbp)
	je	.L3816
	cmpq	%r12, %rbx
	je	.L3791
	cmpb	%bl, 2(%rbp)
	je	.L3782
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L3806
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L3817
.L3806:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3815
	movq	(%rsp), %rsi
	cmpq	48(%rbp), %rsi
	movb	%bl, 2(%rbp)
	je	.L3782
	movq	%rbp, %rdi
	call	asl_loc_reschedule_1wev.part.6
	.p2align 4,,10
	.p2align 3
.L3782:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L3818
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3783:
	.cfi_restore_state
	movq	__new_gateval@GOTPCREL(%rip), %rax
	cmpq	%rdx, %rsi
	movq	%rsi, (%rax)
	movq	__old_gateval@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	jne	.L3810
	movq	$0, (%rsp)
.L3791:
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L3819
.L3801:
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	je	.L3803
.L3815:
	movq	__showe_onevent@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.L3804
	movb	$-37, 2(%rbp)
	jmp	.L3782
	.p2align 4,,10
	.p2align 3
.L3788:
	movq	__no_informs@GOTPCREL(%rip), %rax
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	je	.L3820
.L3792:
	cmpq	$0, 16(%rbp)
	je	.L3793
	movq	__warn_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	.L3795
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r11d
	testl	%r11d, %r11d
	jne	.L3795
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3795
	leaq	48(%rbp), %rdx
	leaq	.LC24(%rip), %r8
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movl	$4294967295, %edi
	call	__emit_path_pulsewarn@PLT
	.p2align 4,,10
	.p2align 3
.L3795:
	movq	%rbp, %rdi
	call	linkout_tevp
	movq	__show_cancel_e@GOTPCREL(%rip), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	jne	.L3797
.L3793:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%r13), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	cmpb	%bl, (%rax)
	je	.L3782
	movb	%bl, (%rax)
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	asl_loc_record_nchg
	jmp	.L3782
	.p2align 4,,10
	.p2align 3
.L3819:
	movq	__no_warns@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L3801
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3801
	leaq	48(%rbp), %rcx
	leaq	.LC12(%rip), %r8
	movl	$1, %r9d
	movq	%rbp, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	__emit_path_samewarn@PLT
	jmp	.L3801
	.p2align 4,,10
	.p2align 3
.L3804:
	movq	%rbp, %rdi
	call	linkout_tevp
.L3797:
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%r13), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	cmpb	$-37, (%rax)
	je	.L3782
	movb	$-37, (%rax)
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	asl_loc_record_nchg
	jmp	.L3782
.L3816:
	movq	__pdmindel@GOTPCREL(%rip), %rax
	movq	%rbx, %r8
	movq	%rbp, %rsi
	xorl	%edi, %edi
	movq	(%rax), %rdx
	call	asl_loc_schedule_1wev
	jmp	.L3782
	.p2align 4,,10
	.p2align 3
.L3787:
	movq	%rbx, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	shrq	%rcx
	andl	$1, %edx
	movl	$-1, %esi
	andl	$1, %ecx
	movq	%r13, %rdi
	call	asl_loc_chg_st_bit
	jmp	.L3782
	.p2align 4,,10
	.p2align 3
.L3820:
	movq	__pdmindel@GOTPCREL(%rip), %rdx
	movl	$4294967295, %esi
	movq	%r13, %rdi
	call	__emit_path_distinform@PLT
	jmp	.L3792
	.p2align 4,,10
	.p2align 3
.L3803:
	movq	%rbp, %rdi
	call	linkout_tevp
	jmp	.L3782
	.p2align 4,,10
	.p2align 3
.L3817:
	movl	$592, %edi
	call	__em_suppr@PLT
	testl	%eax, %eax
	jne	.L3806
	leaq	48(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	movl	$1, %r9d
	movq	%r15, %rcx
	movq	%rbp, %rsi
	movl	$4294967295, %edi
	call	__emit_path_pulsewarn@PLT
	jmp	.L3806
.L3818:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE433:
	.size	__asl_schd_st_scalar_1pthwirebit, .-__asl_schd_st_scalar_1pthwirebit
	.p2align 4,,15
	.globl	__asl_chg_vec_lhsbsel
	.type	__asl_chg_vec_lhsbsel, @function
__asl_chg_vec_lhsbsel:
.LFB443:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	32(%rdi), %rsi
	movq	%rdi, %rbx
	movq	(%rax), %rax
	movl	8(%rbx), %r8d
	leaq	(%rax,%rsi,8), %rdi
	movl	%ebp, %esi
	call	asl_loc_chg_vec_lhsbsel
	testl	%eax, %eax
	jne	.L3824
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3824:
	.cfi_restore_state
	movl	%ebp, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	asl_loc_record_sel_nchg
	.cfi_endproc
.LFE443:
	.size	__asl_chg_vec_lhsbsel, .-__asl_chg_vec_lhsbsel
	.p2align 4,,15
	.globl	__asl_chg_vec_lhsbsel_2state
	.type	__asl_chg_vec_lhsbsel_2state, @function
__asl_chg_vec_lhsbsel_2state:
.LFB444:
	.cfi_startproc
	movq	%rcx, %r8
	movl	%esi, %ecx
	andl	$1, %edx
	andl	$63, %ecx
	movl	$1, %eax
	movq	__idp@GOTPCREL(%rip), %r9
	salq	%cl, %rax
	salq	%cl, %rdx
	movl	%esi, %ecx
	sarl	$6, %ecx
	movq	%rax, %r10
	movslq	%ecx, %rcx
	addq	32(%rdi), %rcx
	movq	(%r9), %r9
	leaq	(%r9,%rcx,8), %rcx
	movq	(%rcx), %r9
	andq	%r9, %r10
	cmpq	%r10, %rdx
	je	.L3825
	notq	%rax
	andq	%r9, %rax
	orq	%rax, %rdx
	movq	%rdx, (%rcx)
	movl	%esi, %edx
	movq	%r8, %rsi
	jmp	asl_loc_record_sel_nchg
	.p2align 4,,10
	.p2align 3
.L3825:
	rep ret
	.cfi_endproc
.LFE444:
	.size	__asl_chg_vec_lhsbsel_2state, .-__asl_chg_vec_lhsbsel_2state
	.p2align 4,,15
	.globl	__asl_record_array_net_change
	.type	__asl_record_array_net_change, @function
__asl_record_array_net_change:
.LFB445:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	je	.L3829
	movq	160(%rdi), %rcx
	movq	%rsi, %rbp
	testq	%rcx, %rcx
	je	.L3830
	movslq	%edx, %rax
	movq	__nchged_i1@GOTPCREL(%rip), %rdx
	cmpl	$1, 12(%rdi)
	movq	%rax, (%rdx)
	movq	__nchged_i2@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	jle	.L3831
	call	__asl_chk_dce_cbvc@PLT
	movq	160(%rbx), %rcx
.L3831:
#APP
# 12731 "v_aslib.c" 1
	movq __idp, %r15
# 0 "" 2
#NO_APP
	call	*%rcx
.L3830:
	cmpq	$0, 0(%rbp)
	je	.L3839
.L3829:
	movq	__idp@GOTPCREL(%rip), %rbp
	movq	96(%rbx), %rcx
	movq	0(%rbp), %rax
	leaq	(%rax,%rcx,8), %rcx
	movq	(%rcx), %rax
	movq	%rax, %rdi
	andl	$3, %edi
	cmpq	$3, %rdi
	je	.L3840
.L3833:
	cmpb	$0, 4(%rbx)
	js	.L3841
.L3827:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3839:
	.cfi_restore_state
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, 0(%rbp)
	movq	$0, 16(%rbp)
	movq	$0, 48(%rbp)
	movq	(%rax), %rdx
	movq	%rbp, (%rax)
	movq	%rbp, 48(%rdx)
	jmp	.L3829
	.p2align 4,,10
	.p2align 3
.L3841:
	movq	0(%rbp), %rax
	movq	96(%rbx), %rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, %rcx
	andl	$48, %ecx
	cmpq	$48, %rcx
	jne	.L3827
	andq	$-33, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__asl_add_dmpp_chglst_el@PLT
	.p2align 4,,10
	.p2align 3
.L3840:
	.cfi_restore_state
	andq	$-3, %rax
	movl	%r12d, %esi
	movq	%rbx, %rdi
	movq	%rax, (%rcx)
	call	__asl_add_dmpv_chglst_el_array@PLT
	jmp	.L3833
	.cfi_endproc
.LFE445:
	.size	__asl_record_array_net_change, .-__asl_record_array_net_change
	.p2align 4,,15
	.globl	__asl_add_dmpp_chglst_el_mdprt
	.type	__asl_add_dmpp_chglst_el_mdprt, @function
__asl_add_dmpp_chglst_el_mdprt:
.LFB453:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	96(%rdi), %rdx
	movq	(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$3, %eax
	cmpq	$3, %rax
	je	.L3844
	rep ret
	.p2align 4,,10
	.p2align 3
.L3844:
	jmp	__add_dp_chglst_el@PLT
	.cfi_endproc
.LFE453:
	.size	__asl_add_dmpp_chglst_el_mdprt, .-__asl_add_dmpp_chglst_el_mdprt
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_dmpp
	.type	__asl_mdprt_bsel_dmpp, @function
__asl_mdprt_bsel_dmpp:
.LFB286:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	16(%rdi), %rax
	movq	%rdx, %r10
	movq	$-2, %r9
	andl	$1, %r10d
	shrq	%rdx
	andl	$1, %edx
	movq	16(%rax), %rax
	movq	16(%rax), %rbx
	movq	24(%rdi), %rax
	movslq	24(%rax), %rcx
	movq	__contab@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	movl	%eax, %ecx
	sarl	$6, %eax
	cltq
	andl	$63, %ecx
	salq	$3, %rax
	rolq	%cl, %r9
	salq	%cl, %r10
	leaq	(%rsi,%rax), %rdi
	salq	%cl, %rdx
	movq	(%rdi), %r11
	movq	%r11, %r8
	andq	%r9, %r8
	orq	%r8, %r10
	movl	8(%rbx), %r8d
	addl	$63, %r8d
	sarl	$6, %r8d
	movslq	%r8d, %r8
	leaq	(%rax,%r8,8), %rax
	addq	%rax, %rsi
	cmpq	%r10, %r11
	jne	.L3849
	movq	(%rsi), %rax
	andq	%rax, %r9
	orq	%r9, %rdx
	cmpq	%rdx, %rax
	je	.L3845
	movq	%rdx, (%rsi)
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	__asl_add_dmpp_chglst_el_mdprt@PLT
	.p2align 4,,10
	.p2align 3
.L3845:
	.cfi_restore_state
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3849:
	.cfi_restore_state
	movq	%r10, (%rdi)
	andq	(%rsi), %r9
	movq	%rbx, %rdi
	orq	%r9, %rdx
	movq	%rdx, (%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__asl_add_dmpp_chglst_el_mdprt@PLT
	.cfi_endproc
.LFE286:
	.size	__asl_mdprt_bsel_dmpp, .-__asl_mdprt_bsel_dmpp
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_1w_dmpp
	.type	__asl_mdprt_bsel_1w_dmpp, @function
__asl_mdprt_bsel_1w_dmpp:
.LFB287:
	.cfi_startproc
	movq	(%rsi), %r9
	movl	%edi, %r10d
	movq	%rdx, %r8
	movq	%rcx, %rdi
	movq	$-2, %rax
	movl	%r10d, %ecx
	rolq	%cl, %rax
	andl	$1, %r8d
	shrq	%rdx
	movq	%r9, %r11
	salq	%cl, %r8
	andl	$1, %edx
	andq	%rax, %r11
	salq	%cl, %rdx
	orq	%r11, %r8
	movq	8(%rsi), %r11
	andq	%r11, %rax
	orq	%rax, %rdx
	cmpq	%r8, %r9
	jne	.L3853
	cmpq	%rdx, %r11
	je	.L3850
	movq	%rdx, 8(%rsi)
	jmp	__asl_add_dmpp_chglst_el_mdprt@PLT
	.p2align 4,,10
	.p2align 3
.L3850:
	rep ret
	.p2align 4,,10
	.p2align 3
.L3853:
	movq	%r8, (%rsi)
	movq	%rdx, 8(%rsi)
	jmp	__asl_add_dmpp_chglst_el_mdprt@PLT
	.cfi_endproc
.LFE287:
	.size	__asl_mdprt_bsel_1w_dmpp, .-__asl_mdprt_bsel_1w_dmpp
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_dmpp
	.type	__asl_mdprt_bsel_nchg_dmpp, @function
__asl_mdprt_bsel_nchg_dmpp:
.LFB288:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rcx, %rbx
	movq	%rdx, %r10
	movq	$-2, %r9
	shrq	%rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rax
	andl	$1, %r10d
	andl	$1, %edx
	movq	16(%rax), %rax
	movq	16(%rax), %rbp
	movq	24(%rdi), %rax
	movslq	24(%rax), %rcx
	movq	__contab@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	movl	%eax, %ecx
	sarl	$6, %eax
	cltq
	andl	$63, %ecx
	salq	$3, %rax
	rolq	%cl, %r9
	salq	%cl, %r10
	leaq	(%rsi,%rax), %rdi
	salq	%cl, %rdx
	movq	(%rdi), %r11
	movq	%r11, %r8
	andq	%r9, %r8
	orq	%r8, %r10
	movl	8(%rbp), %r8d
	addl	$63, %r8d
	sarl	$6, %r8d
	movslq	%r8d, %r8
	leaq	(%rax,%r8,8), %rax
	addq	%rax, %rsi
	cmpq	%r10, %r11
	jne	.L3859
	movq	(%rsi), %rax
	andq	%rax, %r9
	orq	%r9, %rdx
	cmpq	%rdx, %rax
	je	.L3854
.L3858:
	movq	%rdx, (%rsi)
	movq	%rbp, %rdi
	call	__asl_add_dmpp_chglst_el_mdprt@PLT
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, (%rbx)
	movq	$0, 48(%rbx)
	movq	(%rax), %rdx
	movq	%rbx, 48(%rdx)
	movq	%rbx, (%rax)
.L3854:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3859:
	.cfi_restore_state
	movq	%r10, (%rdi)
	andq	(%rsi), %r9
	orq	%r9, %rdx
	jmp	.L3858
	.cfi_endproc
.LFE288:
	.size	__asl_mdprt_bsel_nchg_dmpp, .-__asl_mdprt_bsel_nchg_dmpp
	.p2align 4,,15
	.globl	__asl_mdprt_bsel_nchg_1w_dmpp
	.type	__asl_mdprt_bsel_nchg_1w_dmpp, @function
__asl_mdprt_bsel_nchg_1w_dmpp:
.LFB289:
	.cfi_startproc
	movq	(%rsi), %r11
	movq	%rdx, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	$-2, %rax
	movq	%rcx, %rbx
	movl	%edi, %ecx
	rolq	%cl, %rax
	andl	$1, %r9d
	shrq	%rdx
	movq	%r11, %rdi
	salq	%cl, %r9
	andl	$1, %edx
	andq	%rax, %rdi
	salq	%cl, %rdx
	orq	%rdi, %r9
	movq	8(%rsi), %rdi
	andq	%rdi, %rax
	orq	%rax, %rdx
	cmpq	%r9, %r11
	jne	.L3865
	cmpq	%rdi, %rdx
	je	.L3860
.L3864:
	movq	%rdx, 8(%rsi)
	movq	%r8, %rdi
	call	__asl_add_dmpp_chglst_el_mdprt@PLT
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, (%rbx)
	movq	$0, 48(%rbx)
	movq	(%rax), %rdx
	movq	%rbx, 48(%rdx)
	movq	%rbx, (%rax)
.L3860:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3865:
	.cfi_restore_state
	movq	%r9, (%rsi)
	jmp	.L3864
	.cfi_endproc
.LFE289:
	.size	__asl_mdprt_bsel_nchg_1w_dmpp, .-__asl_mdprt_bsel_nchg_1w_dmpp
	.p2align 4,,15
	.globl	__asl_add_togglelst_el_port
	.type	__asl_add_togglelst_el_port, @function
__asl_add_togglelst_el_port:
.LFB454:
	.cfi_startproc
	movq	__tgl_record_on@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	je	.L3866
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.L3866
	movq	8(%rax), %rdx
	testq	%rdx, %rdx
	je	.L3866
	movq	__idp@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movslq	(%rcx), %rsi
	leaq	(%rdx,%rsi,4), %rdx
	movl	(%rdx), %esi
	testl	%esi, %esi
	jne	.L3866
	movq	(%rax), %rax
	movl	$1, (%rdx)
	movq	(%rcx,%rax,8), %rdx
	movq	__toggle_chghdr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rdx, (%rax)
	movq	__slotend_action@GOTPCREL(%rip), %rax
	movq	%rcx, 48(%rdx)
	orq	$65536, (%rax)
.L3866:
	rep ret
	.cfi_endproc
.LFE454:
	.size	__asl_add_togglelst_el_port, .-__asl_add_togglelst_el_port
	.p2align 4,,15
	.globl	__asl_process_mipd_nchg_ev
	.type	__asl_process_mipd_nchg_ev, @function
__asl_process_mipd_nchg_ev:
.LFB455:
	.cfi_startproc
	movq	__cur_tevp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	xorl	%eax, %eax
	cmpl	$-1, %esi
	je	.L3875
	movslq	%esi, %rax
	leaq	(%rax,%rax,4), %rax
	salq	$3, %rax
.L3875:
	movq	__idp@GOTPCREL(%rip), %rdx
	movq	80(%rdi), %rcx
	movq	(%rdx), %rdx
	movq	16(%rcx), %r8
	movslq	(%rdx), %rcx
	movq	24(%r8,%rax), %rax
	movq	$0, (%rax,%rcx,8)
	movq	96(%rdi), %rax
	testb	$8, (%rdx,%rax,8)
	je	.L3883
	rep ret
	.p2align 4,,10
	.p2align 3
.L3883:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	%esi, %edx
	call	__add_select_nchglst_el@PLT
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	$1, 16(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE455:
	.size	__asl_process_mipd_nchg_ev, .-__asl_process_mipd_nchg_ev
	.p2align 4,,15
	.globl	__asl_process_mipd_scalar_nchg_ev
	.type	__asl_process_mipd_scalar_nchg_ev, @function
__asl_process_mipd_scalar_nchg_ev:
.LFB456:
	.cfi_startproc
	cmpq	$0, (%rdi)
	jne	.L3884
	movq	__nchg_futend@GOTPCREL(%rip), %rax
	movq	$1, (%rdi)
	movq	$0, 48(%rdi)
	movq	(%rax), %rdx
	movq	%rdi, (%rax)
	movq	%rdi, 48(%rdx)
	movq	$1, 16(%rdi)
.L3884:
	rep ret
	.cfi_endproc
.LFE456:
	.size	__asl_process_mipd_scalar_nchg_ev, .-__asl_process_mipd_scalar_nchg_ev
	.p2align 4,,15
	.globl	__asl_force_active
	.type	__asl_force_active, @function
__asl_force_active:
.LFB529:
	.cfi_startproc
	jmp	__asl_qc_active.localalias.29
	.cfi_endproc
.LFE529:
	.size	__asl_force_active, .-__asl_force_active
	.p2align 4,,15
	.globl	__asl_rhs_psel
	.type	__asl_rhs_psel, @function
__asl_rhs_psel:
.LFB458:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movslq	%ecx, %rbx
	movq	%rsi, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leal	(%rdx,%rbx), %eax
	cmpl	$64, %eax
	jle	.L3889
	movl	%edx, %eax
	andl	$63, %edx
	sarl	$6, %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdi
	addq	%rax, %rbp
	leal	(%rbx,%rdx), %eax
	cmpl	$64, %eax
	jle	.L3889
	testl	%edx, %edx
	je	.L3894
	movq	__masktab@GOTPCREL(%rip), %rax
	movl	$64, %esi
	movl	%edx, %ecx
	subl	%edx, %esi
	movq	(%rax,%rbx,8), %r8
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	movq	0(%rbp), %rbx
	shrq	%cl, %rax
	movl	%esi, %ecx
	salq	%cl, %rdi
	movl	%edx, %ecx
	orq	%rdi, %rax
	movq	8(%rbp), %rdi
	shrq	%cl, %rbx
	movl	%esi, %ecx
	movq	%rbx, %rdx
	andq	%r8, %rax
	salq	%cl, %rdi
	orq	%rdi, %rdx
	andq	%r8, %rdx
#APP
# 13109 "v_aslib.c" 1
	movq %rdx, %rcx
# 0 "" 2
#NO_APP
	jmp	.L3887
	.p2align 4,,10
	.p2align 3
.L3889:
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	0(%rbp), %rsi
	movl	%edx, %ecx
	movq	(%rax,%rbx,8), %r8
	movq	(%rdi), %rax
	shrq	%cl, %rsi
	shrq	%cl, %rax
	andq	%r8, %rsi
	andq	%r8, %rax
#APP
# 13072 "v_aslib.c" 1
	movq %rsi, %rcx
# 0 "" 2
#NO_APP
.L3887:
	movq	24(%rsp), %rdi
	xorq	%fs:40, %rdi
	jne	.L3895
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3894:
	.cfi_restore_state
	leal	63(%rbx), %r12d
	leaq	8(%rsp), %r8
	movq	%rdi, %rsi
	movl	$8, %ecx
	andl	$63, %ebx
	sarl	$6, %r12d
	movq	%r8, %rdi
	sall	$3, %r12d
	movslq	%r12d, %r12
	movq	%r12, %rdx
	leaq	-8(%r12), %r13
	call	__memmove_chk@PLT
	movq	%rax, %r8
	movq	__masktab@GOTPCREL(%rip), %rax
	movl	$8, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	(%rax,%rbx,8), %rbx
	andq	%rbx, (%r8,%r13)
	leaq	16(%rsp), %r8
	movq	%r8, %rdi
	call	__memmove_chk@PLT
	andq	%rbx, (%rax,%r13)
#APP
# 13094 "v_aslib.c" 1
	movq 16(%rsp), %rcx
# 0 "" 2
#NO_APP
	movq	8(%rsp), %rax
	jmp	.L3887
.L3895:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE458:
	.size	__asl_rhs_psel, .-__asl_rhs_psel
	.p2align 4,,15
	.globl	__asl_rhs_psel_2state
	.type	__asl_rhs_psel_2state, @function
__asl_rhs_psel_2state:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%edx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leal	(%rsi,%rbx), %eax
	cmpl	$64, %eax
	jle	.L3898
	movl	%esi, %eax
	andl	$63, %esi
	sarl	$6, %eax
	cltq
	leaq	(%rdi,%rax,8), %rdi
	leal	(%rbx,%rsi), %eax
	cmpl	$64, %eax
	jle	.L3898
	testl	%esi, %esi
	je	.L3903
	movq	8(%rdi), %rax
	movl	$64, %ecx
	movq	(%rdi), %rdx
	subl	%esi, %ecx
	salq	%cl, %rax
	movl	%esi, %ecx
	shrq	%cl, %rdx
	orq	%rdx, %rax
	movq	__masktab@GOTPCREL(%rip), %rdx
	andq	(%rdx,%rbx,8), %rax
	jmp	.L3896
	.p2align 4,,10
	.p2align 3
.L3898:
	movq	(%rdi), %rax
	movq	__masktab@GOTPCREL(%rip), %rdx
	movl	%esi, %ecx
	shrq	%cl, %rax
	andq	(%rdx,%rbx,8), %rax
.L3896:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L3904
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3903:
	.cfi_restore_state
	leal	63(%rbx), %ebp
	movq	%rsp, %r8
	movq	%rdi, %rsi
	movl	$8, %ecx
	movq	%r8, %rdi
	andl	$63, %ebx
	sarl	$6, %ebp
	sall	$3, %ebp
	movslq	%ebp, %rbp
	movq	%rbp, %rdx
	call	__memmove_chk@PLT
	movq	%rax, %r8
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	(%rax,%rbx,8), %rax
	andq	%rax, -8(%r8,%rbp)
	movq	(%rsp), %rax
	jmp	.L3896
.L3904:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE459:
	.size	__asl_rhs_psel_2state, .-__asl_rhs_psel_2state
	.p2align 4,,15
	.globl	__asl_rhs_st_psel
	.type	__asl_rhs_st_psel, @function
__asl_rhs_st_psel:
.LFB525:
	.cfi_startproc
	jmp	__asl_movabw_fr_svec.localalias.27
	.cfi_endproc
.LFE525:
	.size	__asl_rhs_st_psel, .-__asl_rhs_st_psel
	.p2align 4,,15
	.globl	__asl_rhs_psel_wide
	.type	__asl_rhs_psel_wide, @function
__asl_rhs_psel_wide:
.LFB461:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leal	(%r8,%r9), %eax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %r10
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rcx, %rbp
	movq	%rsi, %rbx
	movq	%rdx, %rsi
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	cmpl	$64, %eax
	jle	.L3908
	movl	%r8d, %eax
	andl	$63, %r8d
	sarl	$6, %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rsi
	addq	%rax, %rbp
	leal	(%r9,%r8), %eax
	cmpl	$64, %eax
	jle	.L3908
	testl	%r8d, %r8d
	je	.L3915
	movl	$64, %r11d
	movq	(%rsi), %rdx
	subl	%r8d, %r11d
	cmpl	$64, %r9d
	jle	.L3911
	movq	%rbx, %rax
	addq	$8, %rsi
	addq	$8, %rbp
	movl	%r11d, %r10d
	jmp	.L3912
	.p2align 4,,10
	.p2align 3
.L3916:
	movq	(%rsi), %rdx
	movl	%r11d, %ecx
	addl	$64, %r10d
	addq	$8, %rbp
	salq	%cl, %rdx
	orq	%rdx, (%rdi)
	addq	$8, %rdi
	movq	-8(%rbp), %rdx
	salq	%cl, %rdx
	orq	%rdx, (%rax)
	movl	%r10d, %edx
	subl	%r11d, %edx
	addq	$8, %rax
	cmpl	%edx, %r9d
	jle	.L3913
	movq	(%rsi), %rdx
	addq	$8, %rsi
.L3912:
	movl	%r8d, %ecx
	movq	%rdi, %rbx
	movq	%rax, %r12
	shrq	%cl, %rdx
	movq	%rdx, (%rdi)
	movq	-8(%rbp), %rdx
	shrq	%cl, %rdx
	cmpl	%r10d, %r9d
	movq	%rdx, (%rax)
	jg	.L3916
.L3913:
	movq	__masktab@GOTPCREL(%rip), %rax
	andl	$63, %r9d
	movq	(%rax,%r9,8), %rax
	andq	%rax, (%rbx)
	andq	%rax, (%r12)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3908:
	.cfi_restore_state
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	(%rsi), %rdx
	movslq	%r9d, %r9
	movl	%r8d, %ecx
	movq	(%rax,%r9,8), %rdi
	shrq	%cl, %rdx
	andq	%rdi, %rdx
	movq	%rdx, (%r10)
	movq	0(%rbp), %rax
	shrq	%cl, %rax
	andq	%rdi, %rax
	movq	%rax, (%rbx)
.L3906:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3911:
	.cfi_restore_state
	movl	%r8d, %ecx
	movq	__masktab@GOTPCREL(%rip), %rax
	movslq	%r9d, %r9
	shrq	%cl, %rdx
	movl	%r11d, %ecx
	movq	%rdx, (%rdi)
	movq	8(%rsi), %rsi
	movq	(%rax,%r9,8), %rdi
	salq	%cl, %rsi
	movl	%r8d, %ecx
	orq	%rsi, %rdx
	andq	%rdi, %rdx
	movq	%rdx, (%r10)
	movq	0(%rbp), %rdx
	shrq	%cl, %rdx
	movl	%r11d, %ecx
	movq	%rdx, (%rbx)
	movq	8(%rbp), %rax
	salq	%cl, %rax
	orq	%rdx, %rax
	andq	%rdi, %rax
	movq	%rax, (%rbx)
	jmp	.L3906
	.p2align 4,,10
	.p2align 3
.L3915:
	leal	63(%r9), %r12d
	movl	%r9d, 12(%rsp)
	sarl	$6, %r12d
	sall	$3, %r12d
	movslq	%r12d, %r12
	movq	%r12, %rdx
	leaq	-8(%r12), %r13
	call	memmove@PLT
	movl	12(%rsp), %r9d
	movq	%rax, %r10
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	andl	$63, %r9d
	movq	(%rax,%r9,8), %r14
	andq	%r14, (%r10,%r13)
	call	memmove@PLT
	andq	%r14, (%rbx,%r13)
	jmp	.L3906
	.cfi_endproc
.LFE461:
	.size	__asl_rhs_psel_wide, .-__asl_rhs_psel_wide
	.p2align 4,,15
	.globl	__asl_rhs_psel_wide_2state
	.type	__asl_rhs_psel_wide_2state, @function
__asl_rhs_psel_wide_2state:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movslq	%ecx, %rbx
	leal	(%rdx,%rbx), %eax
	movq	%rdi, %r8
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$64, %eax
	jle	.L3919
	movl	%edx, %eax
	andl	$63, %edx
	sarl	$6, %eax
	cltq
	leaq	(%rsi,%rax,8), %rsi
	leal	(%rbx,%rdx), %eax
	cmpl	$64, %eax
	jle	.L3919
	testl	%edx, %edx
	je	.L3926
	movl	$64, %r9d
	movq	(%rsi), %rax
	subl	%edx, %r9d
	cmpl	$64, %ebx
	jle	.L3922
	addq	$8, %rsi
	movl	%r9d, %r8d
	jmp	.L3923
	.p2align 4,,10
	.p2align 3
.L3927:
	movq	(%rsi), %r11
	movl	%r9d, %ecx
	addl	$64, %r8d
	addq	$8, %rdi
	salq	%cl, %r11
	movl	%r8d, %ecx
	orq	%r11, %rax
	subl	%r9d, %ecx
	movq	%rax, -8(%rdi)
	cmpl	%ecx, %ebx
	jle	.L3924
	movq	(%rsi), %rax
	addq	$8, %rsi
.L3923:
	movl	%edx, %ecx
	movq	%rdi, %r10
	shrq	%cl, %rax
	cmpl	%r8d, %ebx
	movq	%rax, (%rdi)
	jg	.L3927
.L3924:
	movq	__masktab@GOTPCREL(%rip), %rdx
	andl	$63, %ebx
	andq	(%rdx,%rbx,8), %rax
	movq	%rax, (%r10)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3919:
	.cfi_restore_state
	movq	(%rsi), %rax
	movl	%edx, %ecx
	movq	__masktab@GOTPCREL(%rip), %rdx
	shrq	%cl, %rax
	andq	(%rdx,%rbx,8), %rax
	movq	%rax, (%r8)
.L3917:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3922:
	.cfi_restore_state
	movl	%edx, %ecx
	shrq	%cl, %rax
	movl	%r9d, %ecx
	movq	%rax, (%rdi)
	movq	8(%rsi), %rdx
	salq	%cl, %rdx
	orq	%rdx, %rax
	movq	__masktab@GOTPCREL(%rip), %rdx
	andq	(%rdx,%rbx,8), %rax
	movq	%rax, (%rdi)
	jmp	.L3917
	.p2align 4,,10
	.p2align 3
.L3926:
	leal	63(%rbx), %ebp
	andl	$63, %ebx
	sarl	$6, %ebp
	sall	$3, %ebp
	movslq	%ebp, %rbp
	movq	%rbp, %rdx
	call	memmove@PLT
	movq	%rax, %r8
	movq	__masktab@GOTPCREL(%rip), %rax
	movq	(%rax,%rbx,8), %rax
	andq	%rax, -8(%r8,%rbp)
	jmp	.L3917
	.cfi_endproc
.LFE462:
	.size	__asl_rhs_psel_wide_2state, .-__asl_rhs_psel_wide_2state
	.p2align 4,,15
	.globl	__asl_random_with_seed
	.type	__asl_random_with_seed, @function
__asl_random_with_seed:
.LFB463:
	.cfi_startproc
	jmp	asl_loc_rtl_dist_uniform.part.1.constprop.30
	.cfi_endproc
.LFE463:
	.size	__asl_random_with_seed, .-__asl_random_with_seed
	.p2align 4,,15
	.globl	__asl_random
	.type	__asl_random, @function
__asl_random:
.LFB464:
	.cfi_startproc
	movq	__seed@GOTPCREL(%rip), %rdi
	jmp	asl_loc_rtl_dist_uniform.part.1.constprop.30
	.cfi_endproc
.LFE464:
	.size	__asl_random, .-__asl_random
	.p2align 4,,15
	.globl	__asl_free_next_event
	.type	__asl_free_next_event, @function
__asl_free_next_event:
.LFB467:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	__free_tev_ndx@GOTPCREL(%rip), %r13
	movq	__free_tev_size@GOTPCREL(%rip), %rdi
	movq	__cur_tevp@GOTPCREL(%rip), %rbp
	movq	__free_tevs@GOTPCREL(%rip), %r12
	movslq	0(%r13), %rsi
	movq	0(%rbp), %rcx
	movq	(%r12), %rax
	movq	%rsi, %rdx
	salq	$3, %rsi
	cmpl	(%rdi), %edx
	movq	72(%rcx), %rbx
	je	.L3933
.L3931:
	addl	$1, %edx
	movl	%edx, 0(%r13)
	movq	%rcx, (%rax,%rsi)
	movq	56(%rbx), %rdx
	movq	__idp@GOTPCREL(%rip), %rax
	movq	%rbx, 0(%rbp)
	movq	%rdx, (%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3933:
	.cfi_restore_state
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%ecx, %edx
	movl	%edx, (%rdi)
	movslq	%edx, %rdx
	movq	%rax, %rdi
	salq	$3, %rdx
	call	__my_realloc@PLT
	movslq	0(%r13), %rsi
	movq	%rax, (%r12)
	movq	0(%rbp), %rcx
	movq	%rsi, %rdx
	salq	$3, %rsi
	jmp	.L3931
	.cfi_endproc
.LFE467:
	.size	__asl_free_next_event, .-__asl_free_next_event
	.p2align 4,,15
	.globl	__garbage_calls
	.type	__garbage_calls, @function
__garbage_calls:
.LFB472:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	asl_loc_nb_conflict_list
	xorl	%esi, %esi
	xorl	%edi, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	asl_loc_conflict_list
	.cfi_endproc
.LFE472:
	.size	__garbage_calls, .-__garbage_calls
	.p2align 4,,15
	.globl	__asl_misc_terr
	.type	__asl_misc_terr, @function
__asl_misc_terr:
.LFB477:
	.cfi_startproc
	leaq	.LC1(%rip), %rdi
	movl	$14212, %esi
	jmp	__misc_terr@PLT
	.cfi_endproc
.LFE477:
	.size	__asl_misc_terr, .-__asl_misc_terr
	.p2align 4,,15
	.globl	__asl_st_string_const
	.type	__asl_st_string_const, @function
__asl_st_string_const:
.LFB478:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	movslq	%edx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testb	$16, 2(%rdi)
	jne	.L3945
.L3938:
	testl	%ebx, %ebx
	jle	.L3937
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rbp), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rbp
	movq	16(%rbp), %rsi
	movq	0(%rbp), %rdi
	cmpl	%esi, %ebx
	jg	.L3946
.L3940:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	strncpy@PLT
	movq	%rbx, 8(%rbp)
.L3937:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3946:
	.cfi_restore_state
	leal	(%rbx,%rbx), %r13d
	movslq	%esi, %rsi
	movslq	%r13d, %r13
	movq	%r13, %rdx
	call	__my_realloc@PLT
	movq	%r13, 16(%rbp)
	movq	%rax, %rdi
	movq	%rax, 0(%rbp)
	jmp	.L3940
	.p2align 4,,10
	.p2align 3
.L3945:
	leaq	.LC1(%rip), %rdi
	movl	$14510, %esi
	call	__misc_terr@PLT
	jmp	.L3938
	.cfi_endproc
.LFE478:
	.size	__asl_st_string_const, .-__asl_st_string_const
	.p2align 4,,15
	.globl	__asl_st_string_var
	.type	__asl_st_string_var, @function
__asl_st_string_var:
.LFB479:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rsi), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	movl	8(%rax), %edx
	movq	(%rax), %rsi
	jmp	__asl_st_string_const@PLT
	.cfi_endproc
.LFE479:
	.size	__asl_st_string_var, .-__asl_st_string_var
	.p2align 4,,15
	.globl	__asl_st_string_rhsx
	.type	__asl_st_string_rhsx, @function
__asl_st_string_rhsx:
.LFB480:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	call	__eval2_xpr@PLT
	movl	(%rax), %ecx
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	leal	14(%rcx), %edx
	addl	$7, %ecx
	cmovns	%ecx, %edx
	sarl	$3, %edx
	call	__asl_st_string_const@PLT
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE480:
	.size	__asl_st_string_rhsx, .-__asl_st_string_rhsx
	.p2align 4,,15
	.globl	__asl_st_string_byte
	.type	__asl_st_string_byte, @function
__asl_st_string_byte:
.LFB481:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rdi), %rcx
	movq	(%rax), %rax
	leaq	(%rax,%rcx,8), %rcx
	movq	8(%rcx), %rax
	cmpl	%esi, %eax
	jl	.L3950
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	subl	%esi, %eax
	cltq
	movb	%dl, -1(%rax,%rcx)
.L3950:
	rep ret
	.cfi_endproc
.LFE481:
	.size	__asl_st_string_byte, .-__asl_st_string_byte
	.p2align 4,,15
	.globl	__asl_st_string_array_const
	.type	__asl_st_string_array_const, @function
__asl_st_string_array_const:
.LFB482:
	.cfi_startproc
	cmpl	$-1, %esi
	je	.L3959
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leal	(%rsi,%rsi,2), %eax
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %r12
	cltq
	movslq	%ecx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	__idp@GOTPCREL(%rip), %rdx
	addq	32(%rdi), %rax
	movq	(%rdx), %rdx
	leaq	(%rdx,%rax,8), %rbp
	movq	16(%rbp), %rsi
	movq	0(%rbp), %rdi
	cmpl	%esi, %ebx
	jg	.L3962
.L3954:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	strncpy@PLT
	movq	%rbx, 8(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3962:
	.cfi_restore_state
	leal	(%rbx,%rbx), %r13d
	movslq	%esi, %rsi
	movslq	%r13d, %r13
	movq	%r13, %rdx
	call	__my_realloc@PLT
	movq	%r13, 16(%rbp)
	movq	%rax, %rdi
	movq	%rax, 0(%rbp)
	jmp	.L3954
	.p2align 4,,10
	.p2align 3
.L3959:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	rep ret
	.cfi_endproc
.LFE482:
	.size	__asl_st_string_array_const, .-__asl_st_string_array_const
	.p2align 4,,15
	.globl	__asl_st_string_array_var
	.type	__asl_st_string_array_var, @function
__asl_st_string_array_var:
.LFB483:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movl	%edx, %r8d
	movq	32(%rsi), %rdx
	movl	%r8d, %esi
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rax
	movl	8(%rax), %ecx
	movq	(%rax), %rdx
	jmp	__asl_st_string_array_const@PLT
	.cfi_endproc
.LFE483:
	.size	__asl_st_string_array_var, .-__asl_st_string_array_var
	.p2align 4,,15
	.globl	__asl_st_string_array_rhsx
	.type	__asl_st_string_array_rhsx, @function
__asl_st_string_array_rhsx:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movl	%edx, %ebp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	__eval2_xpr@PLT
	movl	(%rax), %edx
	movl	%ebp, %esi
	movq	%rbx, %rdi
	leal	14(%rdx), %ecx
	addl	$7, %edx
	cmovns	%edx, %ecx
	movq	8(%rax), %rdx
	sarl	$3, %ecx
	call	__asl_st_string_array_const@PLT
	movq	__xspi@GOTPCREL(%rip), %rax
	subl	$1, (%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE484:
	.size	__asl_st_string_array_rhsx, .-__asl_st_string_array_rhsx
	.p2align 4,,15
	.globl	__asl_get_string_byte
	.type	__asl_get_string_byte, @function
__asl_get_string_byte:
.LFB485:
	.cfi_startproc
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%rdi), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %rcx
	xorl	%eax, %eax
	movq	8(%rcx), %rdx
	cmpl	%esi, %edx
	jl	.L3966
	movq	(%rcx), %rax
	subl	%esi, %edx
	movslq	%edx, %rdx
	movsbq	-1(%rdx,%rax), %rax
.L3966:
	rep ret
	.cfi_endproc
.LFE485:
	.size	__asl_get_string_byte, .-__asl_get_string_byte
	.p2align 4,,15
	.globl	__asl_sv_dpi_string
	.type	__asl_sv_dpi_string, @function
__asl_sv_dpi_string:
.LFB486:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	__eval2_xpr@PLT
	movq	8(%rax), %rdi
	movl	(%rax), %esi
	leaq	4(%rsp), %rdx
	call	__vval_to_vstr@PLT
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L3972
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L3972:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE486:
	.size	__asl_sv_dpi_string, .-__asl_sv_dpi_string
	.p2align 4,,15
	.globl	__asl_sv_dpi_string_store
	.type	__asl_sv_dpi_string_store, @function
__asl_sv_dpi_string_store:
.LFB487:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rsi), %rbx
	movq	%rbx, %rdi
	call	strlen@PLT
	testl	%eax, %eax
	jle	.L3973
	movq	%rax, %rbp
	movq	__idp@GOTPCREL(%rip), %rax
	movq	32(%r12), %rdx
	movq	(%rax), %rax
	leaq	(%rax,%rdx,8), %r12
	movq	16(%r12), %rsi
	movq	(%r12), %rax
	cmpl	%esi, %ebp
	jg	.L3979
.L3975:
	movslq	%ebp, %rsi
	leal	-1(%rbp), %ecx
	movq	%rbx, %rdi
	movb	$0, (%rax,%rsi)
	leaq	-1(%rax,%rsi), %rax
	notq	%rcx
	addq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L3976:
	movzbl	(%rdi), %edx
	subq	$1, %rax
	addq	$1, %rdi
	movb	%dl, 1(%rax)
	cmpq	%rcx, %rax
	jne	.L3976
	movq	%rsi, 8(%r12)
.L3973:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3979:
	.cfi_restore_state
	leal	(%rbp,%rbp), %r13d
	movslq	%esi, %rsi
	movq	%rax, %rdi
	movslq	%r13d, %r13
	movq	%r13, %rdx
	call	__my_realloc@PLT
	movq	%r13, 16(%r12)
	movq	%rax, (%r12)
	jmp	.L3975
	.cfi_endproc
.LFE487:
	.size	__asl_sv_dpi_string_store, .-__asl_sv_dpi_string_store
	.p2align 4,,15
	.globl	__asl_string_binop
	.type	__asl_string_binop, @function
__asl_string_binop:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rdi
	call	__eval2_xpr@PLT
	movq	24(%rbx), %rdi
	movq	%rax, %rbp
	call	__eval2_xpr@PLT
	movzwl	(%rbx), %edx
	movl	0(%rbp), %ecx
	addw	$921, %dx
	andw	$1023, %dx
	cmpw	$5, %dx
	ja	.L4017
	leaq	.L3983(%rip), %rsi
	movzwl	%dx, %edx
	movq	%rax, %rdi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rsi, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L3983:
	.long	.L3982-.L3983
	.long	.L3984-.L3983
	.long	.L3985-.L3983
	.long	.L3986-.L3983
	.long	.L3987-.L3983
	.long	.L3988-.L3983
	.text
	.p2align 4,,10
	.p2align 3
.L3987:
	xorl	%eax, %eax
	cmpl	%ecx, (%rdi)
	je	.L4045
.L3981:
	movq	__xspi@GOTPCREL(%rip), %rdx
	subl	$2, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3988:
	.cfi_restore_state
	cmpl	%ecx, (%rdi)
	movl	$1, %eax
	jne	.L3981
	addl	$63, %ecx
	movq	8(%rdi), %rdi
	movq	8(%rbp), %r8
	sarl	$6, %ecx
	subl	$1, %ecx
	js	.L4017
	movslq	%ecx, %rsi
	movq	(%r8,%rsi,8), %rbx
	cmpq	%rbx, (%rdi,%rsi,8)
	leaq	0(,%rsi,8), %rdx
	jne	.L3981
	movl	%ecx, %ecx
	subq	%rcx, %rsi
	leaq	0(,%rsi,8), %rax
	jmp	.L4015
	.p2align 4,,10
	.p2align 3
.L4016:
	movq	-8(%r8,%rdx), %rcx
	subq	$8, %rdx
	cmpq	(%rdi,%rdx), %rcx
	jne	.L4033
.L4015:
	cmpq	%rax, %rdx
	jne	.L4016
	.p2align 4,,10
	.p2align 3
.L4017:
	xorl	%eax, %eax
	jmp	.L3981
	.p2align 4,,10
	.p2align 3
.L3982:
	cmpl	%ecx, (%rdi)
	movl	$1, %eax
	jl	.L3981
	addl	$63, %ecx
	movq	8(%rdi), %r8
	movq	8(%rbp), %r9
	sarl	$6, %ecx
	subl	$1, %ecx
	movl	%ecx, %edi
	js	.L4017
	movslq	%ecx, %rcx
	movl	%edi, %edi
	movq	(%r9,%rcx,8), %rdx
	movq	(%r8,%rcx,8), %rsi
	leaq	0(,%rcx,8), %rax
	subq	%rdi, %rcx
	salq	$3, %rcx
	cmpq	%rdx, %rsi
	je	.L3992
	jmp	.L3990
	.p2align 4,,10
	.p2align 3
.L3993:
	movq	-8(%r9,%rax), %rdx
	subq	$8, %rax
	movq	(%r8,%rax), %rsi
	cmpq	%rsi, %rdx
	jne	.L3990
.L3992:
	cmpq	%rax, %rcx
	jne	.L3993
	xorl	%eax, %eax
	jmp	.L3981
	.p2align 4,,10
	.p2align 3
.L3984:
	cmpl	%ecx, (%rdi)
	movl	$1, %eax
	jle	.L3981
	addl	$63, %ecx
	movq	8(%rdi), %r8
	movq	8(%rbp), %r9
	sarl	$6, %ecx
	subl	$1, %ecx
	movl	%ecx, %edi
	js	.L3981
	movslq	%ecx, %rcx
	movl	%edi, %edi
	movq	(%r9,%rcx,8), %rsi
	movq	(%r8,%rcx,8), %rdx
	leaq	0(,%rcx,8), %rax
	subq	%rdi, %rcx
	salq	$3, %rcx
	cmpq	%rdx, %rsi
	je	.L3997
	jmp	.L3995
	.p2align 4,,10
	.p2align 3
.L3998:
	movq	-8(%r9,%rax), %rsi
	subq	$8, %rax
	movq	(%r8,%rax), %rdx
	cmpq	%rdx, %rsi
	jne	.L3995
.L3997:
	cmpq	%rax, %rcx
	jne	.L3998
.L4033:
	movl	$1, %eax
	jmp	.L3981
	.p2align 4,,10
	.p2align 3
.L3985:
	cmpl	%ecx, (%rdi)
	movl	$1, %eax
	jg	.L3981
	addl	$63, %ecx
	movq	8(%rdi), %r8
	movq	8(%rbp), %r9
	sarl	$6, %ecx
	subl	$1, %ecx
	movl	%ecx, %edi
	js	.L4017
	movslq	%ecx, %rcx
	movl	%edi, %edi
	movq	(%r9,%rcx,8), %rsi
	movq	(%r8,%rcx,8), %rdx
	leaq	0(,%rcx,8), %rax
	subq	%rdi, %rcx
	salq	$3, %rcx
	cmpq	%rsi, %rdx
	je	.L4002
	jmp	.L4005
	.p2align 4,,10
	.p2align 3
.L4003:
	movq	-8(%r9,%rax), %rsi
	subq	$8, %rax
	movq	(%r8,%rax), %rdx
	cmpq	%rdx, %rsi
	jne	.L4005
.L4002:
	cmpq	%rcx, %rax
	jne	.L4003
	xorl	%eax, %eax
	jmp	.L3981
	.p2align 4,,10
	.p2align 3
.L3986:
	cmpl	%ecx, (%rdi)
	movl	$1, %eax
	jge	.L3981
	addl	$63, %ecx
	movq	8(%rdi), %r8
	movq	8(%rbp), %r9
	sarl	$6, %ecx
	subl	$1, %ecx
	movl	%ecx, %edi
	js	.L3981
	movslq	%ecx, %rcx
	movl	%edi, %edi
	movq	(%r9,%rcx,8), %rsi
	movq	(%r8,%rcx,8), %rdx
	leaq	0(,%rcx,8), %rax
	subq	%rdi, %rcx
	salq	$3, %rcx
	cmpq	%rsi, %rdx
	je	.L4007
	jmp	.L4005
	.p2align 4,,10
	.p2align 3
.L4008:
	movq	-8(%r9,%rax), %rsi
	subq	$8, %rax
	movq	(%r8,%rax), %rdx
	cmpq	%rdx, %rsi
	jne	.L4005
.L4007:
	cmpq	%rcx, %rax
	jne	.L4008
	jmp	.L4033
	.p2align 4,,10
	.p2align 3
.L4005:
	xorl	%eax, %eax
	cmpq	%rdx, %rsi
	setb	%al
	jmp	.L3981
	.p2align 4,,10
	.p2align 3
.L4045:
	addl	$63, %ecx
	movq	8(%rdi), %rdi
	movq	8(%rbp), %r8
	sarl	$6, %ecx
	movl	%ecx, %esi
	subl	$1, %esi
	js	.L4033
	movslq	%esi, %rcx
	movq	(%rdi,%rcx,8), %rbx
	cmpq	%rbx, (%r8,%rcx,8)
	leaq	0(,%rcx,8), %rdx
	jne	.L3981
	movl	%esi, %esi
	subq	%rsi, %rcx
	leaq	0(,%rcx,8), %rax
	jmp	.L4011
	.p2align 4,,10
	.p2align 3
.L4012:
	movq	-8(%r8,%rdx), %rcx
	subq	$8, %rdx
	cmpq	(%rdi,%rdx), %rcx
	jne	.L4017
.L4011:
	cmpq	%rax, %rdx
	jne	.L4012
	jmp	.L4033
	.p2align 4,,10
	.p2align 3
.L3995:
	xorl	%eax, %eax
	cmpq	%rdx, %rsi
	setnb	%al
	jmp	.L3981
	.p2align 4,,10
	.p2align 3
.L3990:
	xorl	%eax, %eax
	cmpq	%rdx, %rsi
	setbe	%al
	jmp	.L3981
	.cfi_endproc
.LFE488:
	.size	__asl_string_binop, .-__asl_string_binop
	.globl	__asl_popcount_tab
	.section	.rodata
	.align 32
	.type	__asl_popcount_tab, @object
	.size	__asl_popcount_tab, 2048
__asl_popcount_tab:
	.quad	0
	.quad	1
	.quad	1
	.quad	2
	.quad	1
	.quad	2
	.quad	2
	.quad	3
	.quad	1
	.quad	2
	.quad	2
	.quad	3
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	1
	.quad	2
	.quad	2
	.quad	3
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	1
	.quad	2
	.quad	2
	.quad	3
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	1
	.quad	2
	.quad	2
	.quad	3
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	5
	.quad	6
	.quad	6
	.quad	7
	.quad	1
	.quad	2
	.quad	2
	.quad	3
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	5
	.quad	6
	.quad	6
	.quad	7
	.quad	2
	.quad	3
	.quad	3
	.quad	4
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	5
	.quad	6
	.quad	6
	.quad	7
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	5
	.quad	6
	.quad	6
	.quad	7
	.quad	4
	.quad	5
	.quad	5
	.quad	6
	.quad	5
	.quad	6
	.quad	6
	.quad	7
	.quad	5
	.quad	6
	.quad	6
	.quad	7
	.quad	6
	.quad	7
	.quad	7
	.quad	8
	.globl	__asl_stren_map_tab
	.align 32
	.type	__asl_stren_map_tab, @object
	.size	__asl_stren_map_tab, 2048
__asl_stren_map_tab:
	.quad	0
	.quad	0
	.quad	2
	.quad	0
	.quad	2
	.quad	37
	.quad	0
	.quad	7
	.quad	2
	.quad	73
	.quad	0
	.quad	11
	.quad	2
	.quad	109
	.quad	0
	.quad	15
	.quad	2
	.quad	145
	.quad	0
	.quad	19
	.quad	2
	.quad	181
	.quad	0
	.quad	23
	.quad	2
	.quad	217
	.quad	0
	.quad	27
	.quad	2
	.quad	253
	.quad	0
	.quad	31
	.quad	36
	.quad	2
	.quad	0
	.quad	35
	.quad	36
	.quad	37
	.quad	0
	.quad	39
	.quad	36
	.quad	73
	.quad	0
	.quad	43
	.quad	36
	.quad	109
	.quad	0
	.quad	47
	.quad	36
	.quad	145
	.quad	0
	.quad	51
	.quad	36
	.quad	181
	.quad	0
	.quad	55
	.quad	36
	.quad	217
	.quad	0
	.quad	59
	.quad	36
	.quad	253
	.quad	0
	.quad	63
	.quad	72
	.quad	2
	.quad	0
	.quad	67
	.quad	72
	.quad	37
	.quad	0
	.quad	71
	.quad	72
	.quad	73
	.quad	0
	.quad	75
	.quad	72
	.quad	109
	.quad	0
	.quad	79
	.quad	72
	.quad	145
	.quad	0
	.quad	83
	.quad	72
	.quad	181
	.quad	0
	.quad	87
	.quad	72
	.quad	217
	.quad	0
	.quad	91
	.quad	73
	.quad	253
	.quad	0
	.quad	95
	.quad	108
	.quad	2
	.quad	0
	.quad	99
	.quad	108
	.quad	37
	.quad	0
	.quad	103
	.quad	108
	.quad	73
	.quad	0
	.quad	107
	.quad	108
	.quad	109
	.quad	0
	.quad	111
	.quad	108
	.quad	145
	.quad	0
	.quad	115
	.quad	108
	.quad	181
	.quad	0
	.quad	119
	.quad	108
	.quad	217
	.quad	0
	.quad	123
	.quad	108
	.quad	253
	.quad	0
	.quad	127
	.quad	144
	.quad	2
	.quad	0
	.quad	131
	.quad	144
	.quad	37
	.quad	0
	.quad	135
	.quad	144
	.quad	73
	.quad	0
	.quad	139
	.quad	144
	.quad	109
	.quad	0
	.quad	143
	.quad	144
	.quad	145
	.quad	0
	.quad	147
	.quad	144
	.quad	181
	.quad	0
	.quad	151
	.quad	144
	.quad	217
	.quad	0
	.quad	155
	.quad	144
	.quad	253
	.quad	0
	.quad	159
	.quad	180
	.quad	2
	.quad	0
	.quad	163
	.quad	180
	.quad	37
	.quad	0
	.quad	167
	.quad	180
	.quad	73
	.quad	0
	.quad	171
	.quad	180
	.quad	109
	.quad	0
	.quad	175
	.quad	180
	.quad	145
	.quad	0
	.quad	179
	.quad	180
	.quad	181
	.quad	0
	.quad	183
	.quad	180
	.quad	185
	.quad	0
	.quad	187
	.quad	180
	.quad	253
	.quad	0
	.quad	191
	.quad	216
	.quad	2
	.quad	0
	.quad	195
	.quad	216
	.quad	37
	.quad	0
	.quad	199
	.quad	216
	.quad	73
	.quad	0
	.quad	203
	.quad	216
	.quad	109
	.quad	0
	.quad	207
	.quad	216
	.quad	145
	.quad	0
	.quad	211
	.quad	216
	.quad	181
	.quad	0
	.quad	215
	.quad	216
	.quad	217
	.quad	0
	.quad	219
	.quad	216
	.quad	253
	.quad	0
	.quad	223
	.quad	252
	.quad	2
	.quad	0
	.quad	227
	.quad	252
	.quad	37
	.quad	0
	.quad	231
	.quad	252
	.quad	73
	.quad	0
	.quad	235
	.quad	252
	.quad	109
	.quad	0
	.quad	239
	.quad	252
	.quad	145
	.quad	0
	.quad	243
	.quad	252
	.quad	181
	.quad	0
	.quad	247
	.quad	252
	.quad	217
	.quad	0
	.quad	251
	.quad	252
	.quad	253
	.quad	0
	.quad	255
	.globl	__asl_is_xedge_tab
	.align 32
	.type	__asl_is_xedge_tab, @object
	.size	__asl_is_xedge_tab, 128
__asl_is_xedge_tab:
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	0
	.globl	__asl_epair_tab
	.align 32
	.type	__asl_epair_tab, @object
	.size	__asl_epair_tab, 128
__asl_epair_tab:
	.quad	0
	.quad	1
	.quad	4
	.quad	4
	.quad	2
	.quad	0
	.quad	16
	.quad	16
	.quad	32
	.quad	8
	.quad	0
	.quad	0
	.quad	32
	.quad	8
	.quad	0
	.quad	0
	.globl	__epair_neg_tab
	.align 32
	.type	__epair_neg_tab, @object
	.size	__epair_neg_tab, 128
__epair_neg_tab:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.globl	__epair_pos_tab
	.align 32
	.type	__epair_pos_tab, @object
	.size	__epair_pos_tab, 128
__epair_pos_tab:
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.globl	__xnor_g4
	.align 32
	.type	__xnor_g4, @object
	.size	__xnor_g4, 2048
__xnor_g4:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__xor_g4
	.align 32
	.type	__xor_g4, @object
	.size	__xor_g4, 2048
__xor_g4:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__nor_g4
	.align 32
	.type	__nor_g4, @object
	.size	__nor_g4, 2048
__nor_g4:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.globl	__or_g4
	.align 32
	.type	__or_g4, @object
	.size	__or_g4, 2048
__or_g4:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.globl	__nand_g4
	.align 32
	.type	__nand_g4, @object
	.size	__nand_g4, 2048
__nand_g4:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.globl	__and_g4
	.align 32
	.type	__and_g4, @object
	.size	__and_g4, 2048
__and_g4:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.globl	__xnor_g3
	.align 32
	.type	__xnor_g3, @object
	.size	__xnor_g3, 512
__xnor_g3:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__xor_g3
	.align 32
	.type	__xor_g3, @object
	.size	__xor_g3, 512
__xor_g3:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__nor_g3
	.align 32
	.type	__nor_g3, @object
	.size	__nor_g3, 512
__nor_g3:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.globl	__or_g3
	.align 32
	.type	__or_g3, @object
	.size	__or_g3, 512
__or_g3:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.globl	__nand_g3
	.align 32
	.type	__nand_g3, @object
	.size	__nand_g3, 512
__nand_g3:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.globl	__and_g3
	.align 32
	.type	__and_g3, @object
	.size	__and_g3, 512
__and_g3:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.globl	__nor_svals
	.align 32
	.type	__nor_svals, @object
	.size	__nor_svals, 128
__nor_svals:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.globl	__nand_svals
	.align 32
	.type	__nand_svals, @object
	.size	__nand_svals, 128
__nand_svals:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.globl	__qcol_comb_svals
	.align 32
	.type	__qcol_comb_svals, @object
	.size	__qcol_comb_svals, 128
__qcol_comb_svals:
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__un_p2_svals
	.align 32
	.type	__un_p2_svals, @object
	.size	__un_p2_svals, 32
__un_p2_svals:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.globl	__un_p1_svals
	.align 32
	.type	__un_p1_svals, @object
	.size	__un_p1_svals, 32
__un_p1_svals:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.globl	__bitor_x_svals
	.align 32
	.type	__bitor_x_svals, @object
	.size	__bitor_x_svals, 128
__bitor_x_svals:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__relceq_svals
	.align 32
	.type	__relceq_svals, @object
	.size	__relceq_svals, 128
__relceq_svals:
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.globl	__relcneq_svals
	.align 32
	.type	__relcneq_svals, @object
	.size	__relcneq_svals, 128
__relcneq_svals:
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.globl	__rellt_svals
	.align 32
	.type	__rellt_svals, @object
	.size	__rellt_svals, 128
__rellt_svals:
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__relle_svals
	.align 32
	.type	__relle_svals, @object
	.size	__relle_svals, 128
__relle_svals:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__relgt_svals
	.align 32
	.type	__relgt_svals, @object
	.size	__relgt_svals, 128
__relgt_svals:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__bitand_svals
	.align 32
	.type	__bitand_svals, @object
	.size	__bitand_svals, 128
__bitand_svals:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.globl	__mod_svals
	.align 32
	.type	__mod_svals, @object
	.size	__mod_svals, 128
__mod_svals:
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__div_svals
	.align 32
	.type	__div_svals, @object
	.size	__div_svals, 128
__div_svals:
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__times_svals
	.align 32
	.type	__times_svals, @object
	.size	__times_svals, 128
__times_svals:
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__shift_svals
	.align 32
	.type	__shift_svals, @object
	.size	__shift_svals, 128
__shift_svals:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__p4_svals
	.align 32
	.type	__p4_svals, @object
	.size	__p4_svals, 128
__p4_svals:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.globl	__p3_svals
	.align 32
	.type	__p3_svals, @object
	.size	__p3_svals, 128
__p3_svals:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__p2_svals
	.align 32
	.type	__p2_svals, @object
	.size	__p2_svals, 128
__p2_svals:
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__p1_svals
	.align 32
	.type	__p1_svals, @object
	.size	__p1_svals, 128
__p1_svals:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__notif1_supply1_tab
	.align 32
	.type	__notif1_supply1_tab, @object
	.size	__notif1_supply1_tab, 128
__notif1_supply1_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	181
	.quad	252
	.quad	247
	.quad	247
	.quad	23
	.quad	227
	.quad	247
	.quad	247
	.quad	23
	.quad	227
	.quad	247
	.quad	247
	.globl	__notif0_supply1_tab
	.align 32
	.type	__notif0_supply1_tab, @object
	.size	__notif0_supply1_tab, 128
__notif0_supply1_tab:
	.quad	181
	.quad	252
	.quad	247
	.quad	247
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	23
	.quad	227
	.quad	247
	.quad	247
	.quad	23
	.quad	227
	.quad	247
	.quad	247
	.globl	__bufif1_supply1_tab
	.align 32
	.type	__bufif1_supply1_tab, @object
	.size	__bufif1_supply1_tab, 128
__bufif1_supply1_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	252
	.quad	181
	.quad	247
	.quad	247
	.quad	227
	.quad	23
	.quad	247
	.quad	247
	.quad	227
	.quad	23
	.quad	247
	.quad	247
	.globl	__bufif0_supply1_tab
	.align 32
	.type	__bufif0_supply1_tab, @object
	.size	__bufif0_supply1_tab, 128
__bufif0_supply1_tab:
	.quad	252
	.quad	181
	.quad	247
	.quad	247
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	227
	.quad	23
	.quad	247
	.quad	247
	.quad	227
	.quad	23
	.quad	247
	.quad	247
	.globl	__notif1_supply0_tab
	.align 32
	.type	__notif1_supply0_tab, @object
	.size	__notif1_supply0_tab, 128
__notif1_supply0_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	145
	.quad	252
	.quad	243
	.quad	243
	.quad	19
	.quad	227
	.quad	243
	.quad	243
	.quad	19
	.quad	227
	.quad	243
	.quad	243
	.globl	__notif0_supply0_tab
	.align 32
	.type	__notif0_supply0_tab, @object
	.size	__notif0_supply0_tab, 128
__notif0_supply0_tab:
	.quad	145
	.quad	252
	.quad	243
	.quad	243
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	19
	.quad	227
	.quad	243
	.quad	243
	.quad	19
	.quad	227
	.quad	243
	.quad	243
	.globl	__bufif1_supply0_tab
	.align 32
	.type	__bufif1_supply0_tab, @object
	.size	__bufif1_supply0_tab, 128
__bufif1_supply0_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	252
	.quad	145
	.quad	243
	.quad	243
	.quad	227
	.quad	19
	.quad	243
	.quad	243
	.quad	227
	.quad	19
	.quad	243
	.quad	243
	.globl	__bufif0_supply0_tab
	.align 32
	.type	__bufif0_supply0_tab, @object
	.size	__bufif0_supply0_tab, 128
__bufif0_supply0_tab:
	.quad	252
	.quad	145
	.quad	243
	.quad	243
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	227
	.quad	19
	.quad	243
	.quad	243
	.quad	227
	.quad	19
	.quad	243
	.quad	243
	.globl	__notif1_pull1_tab
	.align 32
	.type	__notif1_pull1_tab, @object
	.size	__notif1_pull1_tab, 128
__notif1_pull1_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	181
	.quad	216
	.quad	215
	.quad	215
	.quad	23
	.quad	195
	.quad	215
	.quad	215
	.quad	23
	.quad	195
	.quad	215
	.quad	215
	.globl	__notif0_pull1_tab
	.align 32
	.type	__notif0_pull1_tab, @object
	.size	__notif0_pull1_tab, 128
__notif0_pull1_tab:
	.quad	181
	.quad	216
	.quad	215
	.quad	215
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	23
	.quad	195
	.quad	215
	.quad	215
	.quad	23
	.quad	195
	.quad	215
	.quad	215
	.globl	__bufif1_pull1_tab
	.align 32
	.type	__bufif1_pull1_tab, @object
	.size	__bufif1_pull1_tab, 128
__bufif1_pull1_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	216
	.quad	181
	.quad	215
	.quad	215
	.quad	195
	.quad	23
	.quad	215
	.quad	215
	.quad	195
	.quad	23
	.quad	215
	.quad	215
	.globl	__bufif0_pull1_tab
	.align 32
	.type	__bufif0_pull1_tab, @object
	.size	__bufif0_pull1_tab, 128
__bufif0_pull1_tab:
	.quad	216
	.quad	181
	.quad	215
	.quad	215
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	195
	.quad	23
	.quad	215
	.quad	215
	.quad	195
	.quad	23
	.quad	215
	.quad	215
	.globl	__notif1_pull0_tab
	.align 32
	.type	__notif1_pull0_tab, @object
	.size	__notif1_pull0_tab, 128
__notif1_pull0_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	145
	.quad	216
	.quad	211
	.quad	211
	.quad	19
	.quad	195
	.quad	211
	.quad	211
	.quad	19
	.quad	195
	.quad	211
	.quad	211
	.globl	__notif0_pull0_tab
	.align 32
	.type	__notif0_pull0_tab, @object
	.size	__notif0_pull0_tab, 128
__notif0_pull0_tab:
	.quad	145
	.quad	216
	.quad	211
	.quad	211
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	19
	.quad	195
	.quad	211
	.quad	211
	.quad	19
	.quad	195
	.quad	211
	.quad	211
	.globl	__bufif1_pull0_tab
	.align 32
	.type	__bufif1_pull0_tab, @object
	.size	__bufif1_pull0_tab, 128
__bufif1_pull0_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	216
	.quad	145
	.quad	211
	.quad	211
	.quad	195
	.quad	19
	.quad	211
	.quad	211
	.quad	195
	.quad	19
	.quad	211
	.quad	211
	.globl	__bufif0_pull0_tab
	.align 32
	.type	__bufif0_pull0_tab, @object
	.size	__bufif0_pull0_tab, 128
__bufif0_pull0_tab:
	.quad	216
	.quad	145
	.quad	211
	.quad	211
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	195
	.quad	19
	.quad	211
	.quad	211
	.quad	195
	.quad	19
	.quad	211
	.quad	211
	.globl	__notif1_hiz_tab
	.align 32
	.type	__notif1_hiz_tab, @object
	.size	__notif1_hiz_tab, 128
__notif1_hiz_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	73
	.quad	2
	.quad	11
	.quad	11
	.quad	11
	.quad	0
	.quad	11
	.quad	11
	.quad	11
	.quad	0
	.quad	11
	.quad	11
	.globl	__notif0_hiz_tab
	.align 32
	.type	__notif0_hiz_tab, @object
	.size	__notif0_hiz_tab, 128
__notif0_hiz_tab:
	.quad	73
	.quad	2
	.quad	11
	.quad	11
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	11
	.quad	0
	.quad	11
	.quad	11
	.quad	11
	.quad	0
	.quad	11
	.quad	11
	.globl	__bufif1_hiz_tab
	.align 32
	.type	__bufif1_hiz_tab, @object
	.size	__bufif1_hiz_tab, 128
__bufif1_hiz_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	73
	.quad	11
	.quad	11
	.quad	0
	.quad	11
	.quad	11
	.quad	11
	.quad	0
	.quad	11
	.quad	11
	.quad	11
	.globl	__bufif0_hiz_tab
	.align 32
	.type	__bufif0_hiz_tab, @object
	.size	__bufif0_hiz_tab, 128
__bufif0_hiz_tab:
	.quad	2
	.quad	73
	.quad	11
	.quad	11
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	0
	.quad	11
	.quad	11
	.quad	11
	.quad	0
	.quad	11
	.quad	11
	.quad	11
	.globl	__notif1_strongx_tab
	.align 32
	.type	__notif1_strongx_tab, @object
	.size	__notif1_strongx_tab, 128
__notif1_strongx_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	109
	.quad	108
	.quad	111
	.quad	111
	.quad	15
	.quad	99
	.quad	111
	.quad	111
	.quad	15
	.quad	99
	.quad	111
	.quad	111
	.globl	__notif0_strongx_tab
	.align 32
	.type	__notif0_strongx_tab, @object
	.size	__notif0_strongx_tab, 128
__notif0_strongx_tab:
	.quad	109
	.quad	108
	.quad	111
	.quad	111
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	15
	.quad	99
	.quad	111
	.quad	111
	.quad	15
	.quad	99
	.quad	111
	.quad	111
	.globl	__bufif1_strongx_tab
	.align 32
	.type	__bufif1_strongx_tab, @object
	.size	__bufif1_strongx_tab, 128
__bufif1_strongx_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	108
	.quad	109
	.quad	111
	.quad	111
	.quad	99
	.quad	15
	.quad	111
	.quad	111
	.quad	99
	.quad	15
	.quad	111
	.quad	111
	.globl	__bufif0_strongx_tab
	.align 32
	.type	__bufif0_strongx_tab, @object
	.size	__bufif0_strongx_tab, 128
__bufif0_strongx_tab:
	.quad	108
	.quad	109
	.quad	111
	.quad	111
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	99
	.quad	15
	.quad	111
	.quad	111
	.quad	99
	.quad	15
	.quad	111
	.quad	111
	.globl	__notif1_strval_tab
	.align 32
	.type	__notif1_strval_tab, @object
	.size	__notif1_strval_tab, 128
__notif1_strval_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	217
	.quad	216
	.quad	219
	.quad	219
	.quad	27
	.quad	195
	.quad	219
	.quad	219
	.quad	27
	.quad	195
	.quad	219
	.quad	219
	.globl	__notif0_strval_tab
	.align 32
	.type	__notif0_strval_tab, @object
	.size	__notif0_strval_tab, 128
__notif0_strval_tab:
	.quad	217
	.quad	216
	.quad	219
	.quad	219
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	27
	.quad	195
	.quad	219
	.quad	219
	.quad	27
	.quad	195
	.quad	219
	.quad	219
	.globl	__bufif1_strval_tab
	.align 32
	.type	__bufif1_strval_tab, @object
	.size	__bufif1_strval_tab, 128
__bufif1_strval_tab:
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	216
	.quad	217
	.quad	219
	.quad	219
	.quad	195
	.quad	27
	.quad	219
	.quad	219
	.quad	195
	.quad	27
	.quad	219
	.quad	219
	.globl	__bufif0_strval_tab
	.align 32
	.type	__bufif0_strval_tab, @object
	.size	__bufif0_strval_tab, 128
__bufif0_strval_tab:
	.quad	216
	.quad	217
	.quad	219
	.quad	219
	.quad	2
	.quad	2
	.quad	2
	.quad	2
	.quad	195
	.quad	27
	.quad	219
	.quad	219
	.quad	195
	.quad	27
	.quad	219
	.quad	219
	.globl	__gate_ormask_4_3
	.align 32
	.type	__gate_ormask_4_3, @object
	.size	__gate_ormask_4_3, 32
__gate_ormask_4_3:
	.quad	0
	.quad	8
	.quad	128
	.quad	136
	.globl	__gate_ormask_4_2
	.align 32
	.type	__gate_ormask_4_2, @object
	.size	__gate_ormask_4_2, 32
__gate_ormask_4_2:
	.quad	0
	.quad	4
	.quad	64
	.quad	68
	.globl	__gate_ormask_4_1
	.align 32
	.type	__gate_ormask_4_1, @object
	.size	__gate_ormask_4_1, 32
__gate_ormask_4_1:
	.quad	0
	.quad	2
	.quad	32
	.quad	34
	.globl	__gate_ormask_4_0
	.align 32
	.type	__gate_ormask_4_0, @object
	.size	__gate_ormask_4_0, 32
__gate_ormask_4_0:
	.quad	0
	.quad	1
	.quad	16
	.quad	17
	.globl	__gate_ormask_3_3
	.align 32
	.type	__gate_ormask_3_3, @object
	.size	__gate_ormask_3_3, 32
__gate_ormask_3_3:
	.quad	0
	.quad	8
	.quad	64
	.quad	72
	.globl	__gate_ormask_3_2
	.align 32
	.type	__gate_ormask_3_2, @object
	.size	__gate_ormask_3_2, 32
__gate_ormask_3_2:
	.quad	0
	.quad	4
	.quad	32
	.quad	36
	.globl	__gate_ormask_3_1
	.align 32
	.type	__gate_ormask_3_1, @object
	.size	__gate_ormask_3_1, 32
__gate_ormask_3_1:
	.quad	0
	.quad	2
	.quad	16
	.quad	18
	.globl	__gate_ormask_3_0
	.align 32
	.type	__gate_ormask_3_0, @object
	.size	__gate_ormask_3_0, 32
__gate_ormask_3_0:
	.quad	0
	.quad	1
	.quad	8
	.quad	9
	.globl	__gate_ormask_2_3
	.align 32
	.type	__gate_ormask_2_3, @object
	.size	__gate_ormask_2_3, 32
__gate_ormask_2_3:
	.quad	0
	.quad	8
	.quad	32
	.quad	40
	.globl	__gate_ormask_2_2
	.align 32
	.type	__gate_ormask_2_2, @object
	.size	__gate_ormask_2_2, 32
__gate_ormask_2_2:
	.quad	0
	.quad	4
	.quad	16
	.quad	20
	.globl	__gate_ormask_2_1
	.align 32
	.type	__gate_ormask_2_1, @object
	.size	__gate_ormask_2_1, 32
__gate_ormask_2_1:
	.quad	0
	.quad	2
	.quad	8
	.quad	10
	.globl	__gate_ormask_2_0
	.align 32
	.type	__gate_ormask_2_0, @object
	.size	__gate_ormask_2_0, 32
__gate_ormask_2_0:
	.quad	0
	.quad	1
	.quad	4
	.quad	5
	.globl	__gnot
	.align 32
	.type	__gnot, @object
	.size	__gnot, 32
__gnot:
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.globl	__gbuf
	.align 32
	.type	__gbuf, @object
	.size	__gbuf, 32
__gbuf:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.globl	__redxnor
	.align 32
	.type	__redxnor, @object
	.size	__redxnor, 2048
__redxnor:
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__redxor
	.align 32
	.type	__redxor, @object
	.size	__redxor, 2048
__redxor:
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__nor
	.align 32
	.type	__nor, @object
	.size	__nor, 2048
__nor:
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__redor
	.align 32
	.type	__redor, @object
	.size	__redor, 2048
__redor:
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__nand
	.align 32
	.type	__nand, @object
	.size	__nand, 2048
__nand:
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	0
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	0
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	1
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	1
	.quad	3
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__redand
	.align 32
	.type	__redand, @object
	.size	__redand, 2048
__redand:
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	1
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	0
	.quad	3
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	0
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.globl	__asl_to_noztab
	.align 32
	.type	__asl_to_noztab, @object
	.size	__asl_to_noztab, 32
__asl_to_noztab:
	.quad	0
	.quad	1
	.quad	3
	.quad	3
	.globl	__asl_to_uvaltab
	.align 32
	.type	__asl_to_uvaltab, @object
	.size	__asl_to_uvaltab, 32
__asl_to_uvaltab:
	.quad	0
	.quad	1
	.quad	2
	.quad	2
	.globl	__asl_4to2
	.align 32
	.type	__asl_4to2, @object
	.size	__asl_4to2, 32
__asl_4to2:
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.globl	__nchglst_template
	.data
	.align 32
	.type	__nchglst_template, @object
	.size	__nchglst_template, 56
__nchglst_template:
	.quad	0
	.quad	0
	.quad	0
	.long	-1
	.long	-1
	.quad	0
	.quad	0
	.quad	0
	.globl	__tevdat_template
	.bss
	.align 32
	.type	__tevdat_template, @object
	.size	__tevdat_template, 104
__tevdat_template:
	.zero	104
	.comm	__edge_freelst,8,8
	.comm	__nxt_ofs,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	606757888
	.long	1102189877
	.align 8
.LC5:
	.long	0
	.long	1048576000
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 8
.LC7:
	.long	4292870144
	.long	1106247679
	.align 8
.LC8:
	.long	0
	.long	1105199104
	.align 8
.LC9:
	.long	0
	.long	1106247680
	.align 8
.LC10:
	.long	0
	.long	0
	.align 8
.LC15:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC21:
	.quad	7593667584661138720
	.quad	7305808843305415540
	.align 16
.LC22:
	.quad	2334392307301756192
	.quad	8245921732300663138
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
