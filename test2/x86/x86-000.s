.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
playground:
.skip 48, 0
.section .text
p:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $1,%ecx
	movl $2,%edx
	movl %eax,(%esp)
	movl $3,%eax
	leal playground,%eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl %edx,%eax
	movl %eax,4(%esp)
	leal playground,%eax
	addl %ecx,%eax
	movl %eax,8(%esp)
	movl %edx,%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movb %al,(%ecx)
	leal playground,%eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	movl %eax,16(%esp)
	leal playground,%eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal playground,%eax
	addl %edx,%eax
	movzbl (%eax),%eax
	leal playground,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl 12(%esp),%eax
	movl %eax,%ecx
	addl %edx,%ecx
	movl 4(%esp),%eax
	addl %eax,%ecx
	leal playground,%eax
	movl %ecx,20(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	addl %eax,%ecx
	movl %ecx,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	movl %eax,8(%esp)
	call p
.Lcall_successor_l21:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l18:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l27
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l27
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 116
.byte 111
.byte 116
.byte 97
.byte 108
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
