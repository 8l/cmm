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
.align 8
success:
.byte 115
.byte 117
.byte 99
.byte 99
.byte 101
.byte 115
.byte 115
.byte 10
.byte 0
.align 8
failed:
.byte 102
.byte 97
.byte 105
.byte 108
.byte 101
.byte 100
.byte 10
.byte 0
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $-1420500317,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call callee
.Lcall_successor_l8:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l15:
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l16
.section .pcmap_data
.Lframe_l16:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l15
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .text
callee:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
.Linitialize_continuations_l18:
.Lproc_body_start_l17:
.Lbranch_target_l32:
	movl $-1420500317,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l28
.Lbranch_target_l23:
	leal success,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l22:
	leal 8(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
.Lbranch_target_l28:
	leal failed,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l27:
	leal 8(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l36:
.long 0
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l36
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l27
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l36
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
