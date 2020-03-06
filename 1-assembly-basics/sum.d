
sum:     file format elf64-x86-64


Disassembly of section .init:

0000000000400418 <_init>:
  400418:	48 83 ec 08          	sub    $0x8,%rsp
  40041c:	48 8b 05 d5 0b 20 00 	mov    0x200bd5(%rip),%rax        # 600ff8 <__gmon_start__>
  400423:	48 85 c0             	test   %rax,%rax
  400426:	74 05                	je     40042d <_init+0x15>
  400428:	e8 43 00 00 00       	callq  400470 <__gmon_start__@plt>
  40042d:	48 83 c4 08          	add    $0x8,%rsp
  400431:	c3                   	retq   

Disassembly of section .plt:

0000000000400440 <.plt>:
  400440:	ff 35 c2 0b 20 00    	pushq  0x200bc2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 c4 0b 20 00    	jmpq   *0x200bc4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400450 <printf@plt>:
  400450:	ff 25 c2 0b 20 00    	jmpq   *0x200bc2(%rip)        # 601018 <printf@GLIBC_2.2.5>
  400456:	68 00 00 00 00       	pushq  $0x0
  40045b:	e9 e0 ff ff ff       	jmpq   400440 <.plt>

0000000000400460 <__libc_start_main@plt>:
  400460:	ff 25 ba 0b 20 00    	jmpq   *0x200bba(%rip)        # 601020 <__libc_start_main@GLIBC_2.2.5>
  400466:	68 01 00 00 00       	pushq  $0x1
  40046b:	e9 d0 ff ff ff       	jmpq   400440 <.plt>

0000000000400470 <__gmon_start__@plt>:
  400470:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 601028 <__gmon_start__>
  400476:	68 02 00 00 00       	pushq  $0x2
  40047b:	e9 c0 ff ff ff       	jmpq   400440 <.plt>

0000000000400480 <strtol@plt>:
  400480:	ff 25 aa 0b 20 00    	jmpq   *0x200baa(%rip)        # 601030 <strtol@GLIBC_2.2.5>
  400486:	68 03 00 00 00       	pushq  $0x3
  40048b:	e9 b0 ff ff ff       	jmpq   400440 <.plt>

Disassembly of section .text:

0000000000400490 <_start>:
  400490:	31 ed                	xor    %ebp,%ebp
  400492:	49 89 d1             	mov    %rdx,%r9
  400495:	5e                   	pop    %rsi
  400496:	48 89 e2             	mov    %rsp,%rdx
  400499:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40049d:	50                   	push   %rax
  40049e:	54                   	push   %rsp
  40049f:	49 c7 c0 50 06 40 00 	mov    $0x400650,%r8
  4004a6:	48 c7 c1 e0 05 40 00 	mov    $0x4005e0,%rcx
  4004ad:	48 c7 c7 75 05 40 00 	mov    $0x400575,%rdi
  4004b4:	e8 a7 ff ff ff       	callq  400460 <__libc_start_main@plt>
  4004b9:	f4                   	hlt    
  4004ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004c0 <deregister_tm_clones>:
  4004c0:	b8 40 10 60 00       	mov    $0x601040,%eax
  4004c5:	48 3d 40 10 60 00    	cmp    $0x601040,%rax
  4004cb:	74 13                	je     4004e0 <deregister_tm_clones+0x20>
  4004cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4004d2:	48 85 c0             	test   %rax,%rax
  4004d5:	74 09                	je     4004e0 <deregister_tm_clones+0x20>
  4004d7:	bf 40 10 60 00       	mov    $0x601040,%edi
  4004dc:	ff e0                	jmpq   *%rax
  4004de:	66 90                	xchg   %ax,%ax
  4004e0:	c3                   	retq   
  4004e1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4004e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4004ed:	00 00 00 

00000000004004f0 <register_tm_clones>:
  4004f0:	be 40 10 60 00       	mov    $0x601040,%esi
  4004f5:	48 81 ee 40 10 60 00 	sub    $0x601040,%rsi
  4004fc:	48 c1 fe 03          	sar    $0x3,%rsi
  400500:	48 89 f0             	mov    %rsi,%rax
  400503:	48 c1 e8 3f          	shr    $0x3f,%rax
  400507:	48 01 c6             	add    %rax,%rsi
  40050a:	48 d1 fe             	sar    %rsi
  40050d:	74 11                	je     400520 <register_tm_clones+0x30>
  40050f:	b8 00 00 00 00       	mov    $0x0,%eax
  400514:	48 85 c0             	test   %rax,%rax
  400517:	74 07                	je     400520 <register_tm_clones+0x30>
  400519:	bf 40 10 60 00       	mov    $0x601040,%edi
  40051e:	ff e0                	jmpq   *%rax
  400520:	c3                   	retq   
  400521:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400526:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40052d:	00 00 00 

0000000000400530 <__do_global_dtors_aux>:
  400530:	80 3d 05 0b 20 00 00 	cmpb   $0x0,0x200b05(%rip)        # 60103c <_edata>
  400537:	75 17                	jne    400550 <__do_global_dtors_aux+0x20>
  400539:	55                   	push   %rbp
  40053a:	48 89 e5             	mov    %rsp,%rbp
  40053d:	e8 7e ff ff ff       	callq  4004c0 <deregister_tm_clones>
  400542:	c6 05 f3 0a 20 00 01 	movb   $0x1,0x200af3(%rip)        # 60103c <_edata>
  400549:	5d                   	pop    %rbp
  40054a:	c3                   	retq   
  40054b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400550:	c3                   	retq   
  400551:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40055d:	00 00 00 

0000000000400560 <frame_dummy>:
  400560:	eb 8e                	jmp    4004f0 <register_tm_clones>

0000000000400562 <plus>:
  400562:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  400566:	c3                   	retq   

0000000000400567 <sumstore>:
  400567:	53                   	push   %rbx
  400568:	48 89 d3             	mov    %rdx,%rbx
  40056b:	e8 f2 ff ff ff       	callq  400562 <plus>
  400570:	48 89 03             	mov    %rax,(%rbx)
  400573:	5b                   	pop    %rbx
  400574:	c3                   	retq   

0000000000400575 <main>:
  400575:	55                   	push   %rbp
  400576:	53                   	push   %rbx
  400577:	48 83 ec 18          	sub    $0x18,%rsp
  40057b:	48 89 f5             	mov    %rsi,%rbp
  40057e:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400582:	ba 0a 00 00 00       	mov    $0xa,%edx
  400587:	be 00 00 00 00       	mov    $0x0,%esi
  40058c:	e8 ef fe ff ff       	callq  400480 <strtol@plt>
  400591:	48 63 d8             	movslq %eax,%rbx
  400594:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  400598:	ba 0a 00 00 00       	mov    $0xa,%edx
  40059d:	be 00 00 00 00       	mov    $0x0,%esi
  4005a2:	e8 d9 fe ff ff       	callq  400480 <strtol@plt>
  4005a7:	48 63 e8             	movslq %eax,%rbp
  4005aa:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4005af:	48 89 ee             	mov    %rbp,%rsi
  4005b2:	48 89 df             	mov    %rbx,%rdi
  4005b5:	e8 ad ff ff ff       	callq  400567 <sumstore>
  4005ba:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4005bf:	48 89 ea             	mov    %rbp,%rdx
  4005c2:	48 89 de             	mov    %rbx,%rsi
  4005c5:	bf 70 06 40 00       	mov    $0x400670,%edi
  4005ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4005cf:	e8 7c fe ff ff       	callq  400450 <printf@plt>
  4005d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d9:	48 83 c4 18          	add    $0x18,%rsp
  4005dd:	5b                   	pop    %rbx
  4005de:	5d                   	pop    %rbp
  4005df:	c3                   	retq   

00000000004005e0 <__libc_csu_init>:
  4005e0:	41 57                	push   %r15
  4005e2:	41 89 ff             	mov    %edi,%r15d
  4005e5:	41 56                	push   %r14
  4005e7:	49 89 f6             	mov    %rsi,%r14
  4005ea:	41 55                	push   %r13
  4005ec:	49 89 d5             	mov    %rdx,%r13
  4005ef:	41 54                	push   %r12
  4005f1:	4c 8d 25 20 08 20 00 	lea    0x200820(%rip),%r12        # 600e18 <__frame_dummy_init_array_entry>
  4005f8:	55                   	push   %rbp
  4005f9:	48 8d 2d 20 08 20 00 	lea    0x200820(%rip),%rbp        # 600e20 <__init_array_end>
  400600:	53                   	push   %rbx
  400601:	4c 29 e5             	sub    %r12,%rbp
  400604:	31 db                	xor    %ebx,%ebx
  400606:	48 c1 fd 03          	sar    $0x3,%rbp
  40060a:	48 83 ec 08          	sub    $0x8,%rsp
  40060e:	e8 05 fe ff ff       	callq  400418 <_init>
  400613:	48 85 ed             	test   %rbp,%rbp
  400616:	74 1e                	je     400636 <__libc_csu_init+0x56>
  400618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40061f:	00 
  400620:	4c 89 ea             	mov    %r13,%rdx
  400623:	4c 89 f6             	mov    %r14,%rsi
  400626:	44 89 ff             	mov    %r15d,%edi
  400629:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40062d:	48 83 c3 01          	add    $0x1,%rbx
  400631:	48 39 eb             	cmp    %rbp,%rbx
  400634:	75 ea                	jne    400620 <__libc_csu_init+0x40>
  400636:	48 83 c4 08          	add    $0x8,%rsp
  40063a:	5b                   	pop    %rbx
  40063b:	5d                   	pop    %rbp
  40063c:	41 5c                	pop    %r12
  40063e:	41 5d                	pop    %r13
  400640:	41 5e                	pop    %r14
  400642:	41 5f                	pop    %r15
  400644:	c3                   	retq   
  400645:	90                   	nop
  400646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40064d:	00 00 00 

0000000000400650 <__libc_csu_fini>:
  400650:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400654 <_fini>:
  400654:	48 83 ec 08          	sub    $0x8,%rsp
  400658:	48 83 c4 08          	add    $0x8,%rsp
  40065c:	c3                   	retq   
