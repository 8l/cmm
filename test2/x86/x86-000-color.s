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
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $1,%esi
	movl $2,%eax
	movl $3,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movl %eax,(%ecx)
	movl %eax,%edx
	leal playground,%ecx
	addl %esi,%ecx
	movb %al,(%ecx)
	leal playground,%ecx
	addl %esi,%ecx
	movsbl (%ecx),%ecx
	leal playground,%edi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal playground,%ecx
	addl %eax,%ecx
	movzbl (%ecx),%ecx
	leal playground,%edi
	addl %eax,%edi
	movl %ecx,(%edi)
	movl %esi,%ecx
	addl %eax,%ecx
	addl %edx,%ecx
	leal playground,%edx
	addl %esi,%edx
	movl (%edx),%edx
	addl %edx,%ecx
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %eax,%ecx
	movl %ecx,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 12(%esp), %esp
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
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l14:
.Lproc_body_start_l13:
	call p
.Lcall_successor_l21:
	leal fmt,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l18:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
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
.long 0xfffffffc
.long .Lstackdata_l27
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
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
.long 0xfffffffc
.long .Lstackdata_l27
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
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
