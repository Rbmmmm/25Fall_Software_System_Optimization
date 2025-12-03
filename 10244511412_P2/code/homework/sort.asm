
sort:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 b1 3f 00 00 	mov    0x3fb1(%rip),%rax        # 4fc0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5000 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <putchar@plt>:
    1040:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 5008 <putchar@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <puts@plt>:
    1050:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 5010 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <clock_gettime@plt>:
    1060:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 5018 <clock_gettime@GLIBC_2.17>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <rand_r@plt>:
    1070:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 5020 <rand_r@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <printf@plt>:
    1080:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 5028 <printf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <memset@plt>:
    1090:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 5030 <memset@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <fputc@plt>:
    10a0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 5038 <fputc@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <srand@plt>:
    10b0:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 5040 <srand@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <fprintf@plt>:
    10c0:	ff 25 82 3f 00 00    	jmp    *0x3f82(%rip)        # 5048 <fprintf@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <strtol@plt>:
    10d0:	ff 25 7a 3f 00 00    	jmp    *0x3f7a(%rip)        # 5050 <strtol@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <memcpy@plt>:
    10e0:	ff 25 72 3f 00 00    	jmp    *0x3f72(%rip)        # 5058 <memcpy@GLIBC_2.14>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <malloc@plt>:
    10f0:	ff 25 6a 3f 00 00    	jmp    *0x3f6a(%rip)        # 5060 <malloc@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <getopt@plt>:
    1100:	ff 25 62 3f 00 00    	jmp    *0x3f62(%rip)        # 5068 <getopt@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001110 <exit@plt>:
    1110:	ff 25 5a 3f 00 00    	jmp    *0x3f5a(%rip)        # 5070 <exit@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001120 <fwrite@plt>:
    1120:	ff 25 52 3f 00 00    	jmp    *0x3f52(%rip)        # 5078 <fwrite@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001130 <__cxa_finalize@plt>:
    1130:	ff 25 9a 3e 00 00    	jmp    *0x3e9a(%rip)        # 4fd0 <__cxa_finalize@GLIBC_2.2.5>
    1136:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	45 31 c0             	xor    %r8d,%r8d
    1156:	31 c9                	xor    %ecx,%ecx
    1158:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1230 <main>
    115f:	ff 15 3b 3e 00 00    	call   *0x3e3b(%rip)        # 4fa0 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt
    1166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    116d:	00 00 00 

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 69 3f 00 00 	lea    0x3f69(%rip),%rdi        # 50e0 <__TMC_END__>
    1177:	48 8d 05 62 3f 00 00 	lea    0x3f62(%rip),%rax        # 50e0 <__TMC_END__>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 1e 3e 00 00 	mov    0x3e1e(%rip),%rax        # 4fa8 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	ret
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 39 3f 00 00 	lea    0x3f39(%rip),%rdi        # 50e0 <__TMC_END__>
    11a7:	48 8d 35 32 3f 00 00 	lea    0x3f32(%rip),%rsi        # 50e0 <__TMC_END__>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    $1,%rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 fd 3d 00 00 	mov    0x3dfd(%rip),%rax        # 4fc8 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	ret
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	80 3d f5 3e 00 00 00 	cmpb   $0x0,0x3ef5(%rip)        # 50e0 <__TMC_END__>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d da 3d 00 00 	cmpq   $0x0,0x3dda(%rip)        # 4fd0 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 86 3e 00 00 	mov    0x3e86(%rip),%rdi        # 5088 <__dso_handle>
    1202:	e8 29 ff ff ff       	call   1130 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 cd 3e 00 00 01 	movb   $0x1,0x3ecd(%rip)        # 50e0 <__TMC_END__>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	ret
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	ret
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <main>:
extern void sort_p(data_t*, int, int);
extern void sort_c(data_t*, int, int);
extern void sort_m(data_t*, int, int);
extern void sort_f(data_t*, int, int);

int main(int argc, char** argv) {
    1230:	55                   	push   %rbp
    1231:	41 57                	push   %r15
    1233:	41 56                	push   %r14
    1235:	41 55                	push   %r13
    1237:	41 54                	push   %r12
    1239:	53                   	push   %rbx
    123a:	48 83 ec 18          	sub    $0x18,%rsp
    123e:	49 89 f6             	mov    %rsi,%r14
    1241:	41 89 ff             	mov    %edi,%r15d
  unsigned int seed = 0;

  // an array of struct testFunc_t indicating the sort functions to test
  // the struct contains two fields --- the function pointer to the sort function
  // and its name (for printing)
  struct testFunc_t testFunc[] = {
    1244:	0f 28 05 55 3b 00 00 	movaps 0x3b55(%rip),%xmm0        # 4da0 <__do_global_dtors_aux_fini_array_entry+0x8>
    124b:	0f 29 04 24          	movaps %xmm0,(%rsp)
    124f:	4c 8d 25 b7 1d 00 00 	lea    0x1db7(%rip),%r12        # 300d <_IO_stdin_used+0xd>
    1256:	48 8d 2d d2 1d 00 00 	lea    0x1dd2(%rip),%rbp        # 302f <_IO_stdin_used+0x2f>
    125d:	31 db                	xor    %ebx,%ebx
    125f:	eb 3f                	jmp    12a0 <main+0x70>

  // process command line options
  while ((optchar = getopt(argc, argv, "s:p")) != -1) {
    switch (optchar) {
    case 's':
      seed = (unsigned int) atoi(optarg);
    1261:	48 8b 05 50 3d 00 00 	mov    0x3d50(%rip),%rax        # 4fb8 <optarg@GLIBC_2.2.5>
    1268:	48 8b 38             	mov    (%rax),%rdi

#ifdef __USE_EXTERN_INLINES
__extern_inline int
__NTH (atoi (const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
    126b:	31 f6                	xor    %esi,%esi
    126d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1272:	e8 59 fe ff ff       	call   10d0 <strtol@plt>
    1277:	49 89 c5             	mov    %rax,%r13
      printf("Using user-provided seed: %u\n", seed);
    127a:	48 8d 3d 90 1d 00 00 	lea    0x1d90(%rip),%rdi        # 3011 <_IO_stdin_used+0x11>
    1281:	44 89 ee             	mov    %r13d,%esi
    1284:	31 c0                	xor    %eax,%eax
    1286:	e8 f5 fd ff ff       	call   1080 <printf@plt>
      srand(seed);
    128b:	44 89 ef             	mov    %r13d,%edi
    128e:	e8 1d fe ff ff       	call   10b0 <srand@plt>
    1293:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    129a:	84 00 00 00 00 00 
  while ((optchar = getopt(argc, argv, "s:p")) != -1) {
    12a0:	44 89 ff             	mov    %r15d,%edi
    12a3:	4c 89 f6             	mov    %r14,%rsi
    12a6:	4c 89 e2             	mov    %r12,%rdx
    12a9:	e8 52 fe ff ff       	call   1100 <getopt@plt>
    12ae:	83 f8 70             	cmp    $0x70,%eax
    12b1:	74 18                	je     12cb <main+0x9b>
    12b3:	83 f8 73             	cmp    $0x73,%eax
    12b6:	74 a9                	je     1261 <main+0x31>
    12b8:	83 f8 ff             	cmp    $0xffffffff,%eax
    12bb:	74 15                	je     12d2 <main+0xa2>
      break;
    case 'p':
      printFlag = 1;
      break;
    default:
      printf("Ignoring unrecognized option: %c\n", optchar);
    12bd:	48 89 ef             	mov    %rbp,%rdi
    12c0:	89 c6                	mov    %eax,%esi
    12c2:	31 c0                	xor    %eax,%eax
    12c4:	e8 b7 fd ff ff       	call   1080 <printf@plt>
    12c9:	eb d5                	jmp    12a0 <main+0x70>
    12cb:	bb 01 00 00 00       	mov    $0x1,%ebx
    12d0:	eb ce                	jmp    12a0 <main+0x70>
      continue;
    }
  }

  // shift remaining arguments over
  int remaining_args = argc - optind;
    12d2:	48 8b 05 d7 3c 00 00 	mov    0x3cd7(%rip),%rax        # 4fb0 <optind@GLIBC_2.2.5>
    12d9:	48 63 08             	movslq (%rax),%rcx
  for (int i = 1; i <= remaining_args; ++i) {
    12dc:	44 89 f8             	mov    %r15d,%eax
    12df:	29 c8                	sub    %ecx,%eax
    12e1:	0f 8e a5 01 00 00    	jle    148c <main+0x25c>
    12e7:	41 29 cf             	sub    %ecx,%r15d
    12ea:	41 ff c7             	inc    %r15d
    12ed:	49 8d 77 ff          	lea    -0x1(%r15),%rsi
    12f1:	ba 01 00 00 00       	mov    $0x1,%edx
    12f6:	48 83 fe 08          	cmp    $0x8,%rsi
    12fa:	72 59                	jb     1355 <main+0x125>
    12fc:	48 8d 3c cd 17 00 00 	lea    0x17(,%rcx,8),%rdi
    1303:	00 
    1304:	48 83 ff 20          	cmp    $0x20,%rdi
    1308:	72 4b                	jb     1355 <main+0x125>
    130a:	4c 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%r8
    1311:	00 
    1312:	48 89 f7             	mov    %rsi,%rdi
    1315:	48 83 e7 fc          	and    $0xfffffffffffffffc,%rdi
    1319:	48 8d 57 01          	lea    0x1(%rdi),%rdx
    131d:	4d 01 f0             	add    %r14,%r8
    1320:	49 83 c0 10          	add    $0x10,%r8
    1324:	45 31 c9             	xor    %r9d,%r9d
    1327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    132e:	00 00 
    argv[i] = argv[i + optind - 1];
    1330:	43 0f 10 44 c8 f0    	movups -0x10(%r8,%r9,8),%xmm0
    1336:	43 0f 10 0c c8       	movups (%r8,%r9,8),%xmm1
    133b:	43 0f 11 44 ce 08    	movups %xmm0,0x8(%r14,%r9,8)
    1341:	43 0f 11 4c ce 18    	movups %xmm1,0x18(%r14,%r9,8)
    1347:	49 83 c1 04          	add    $0x4,%r9
    134b:	4c 39 cf             	cmp    %r9,%rdi
    134e:	75 e0                	jne    1330 <main+0x100>
  for (int i = 1; i <= remaining_args; ++i) {
    1350:	48 39 fe             	cmp    %rdi,%rsi
    1353:	74 7a                	je     13cf <main+0x19f>
    1355:	44 89 ff             	mov    %r15d,%edi
    1358:	29 d7                	sub    %edx,%edi
    135a:	48 89 d6             	mov    %rdx,%rsi
    135d:	83 e7 03             	and    $0x3,%edi
    1360:	74 28                	je     138a <main+0x15a>
    1362:	49 8d 34 d6          	lea    (%r14,%rdx,8),%rsi
    1366:	48 f7 df             	neg    %rdi
    1369:	45 31 c0             	xor    %r8d,%r8d
    136c:	0f 1f 40 00          	nopl   0x0(%rax)
    argv[i] = argv[i + optind - 1];
    1370:	4c 8b 4c ce f8       	mov    -0x8(%rsi,%rcx,8),%r9
    1375:	4c 89 0e             	mov    %r9,(%rsi)
  for (int i = 1; i <= remaining_args; ++i) {
    1378:	49 ff c8             	dec    %r8
    137b:	48 83 c6 08          	add    $0x8,%rsi
    137f:	4c 39 c7             	cmp    %r8,%rdi
    1382:	75 ec                	jne    1370 <main+0x140>
    1384:	48 89 d6             	mov    %rdx,%rsi
    1387:	4c 29 c6             	sub    %r8,%rsi
    138a:	4c 29 fa             	sub    %r15,%rdx
    138d:	48 83 fa fc          	cmp    $0xfffffffffffffffc,%rdx
    1391:	77 3c                	ja     13cf <main+0x19f>
    1393:	49 8d 0c ce          	lea    (%r14,%rcx,8),%rcx
    1397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    139e:	00 00 
    argv[i] = argv[i + optind - 1];
    13a0:	48 8b 54 f1 f8       	mov    -0x8(%rcx,%rsi,8),%rdx
    13a5:	49 89 14 f6          	mov    %rdx,(%r14,%rsi,8)
    13a9:	48 8b 14 f1          	mov    (%rcx,%rsi,8),%rdx
    13ad:	49 89 54 f6 08       	mov    %rdx,0x8(%r14,%rsi,8)
    13b2:	48 8b 54 f1 08       	mov    0x8(%rcx,%rsi,8),%rdx
    13b7:	49 89 54 f6 10       	mov    %rdx,0x10(%r14,%rsi,8)
    13bc:	48 8b 54 f1 10       	mov    0x10(%rcx,%rsi,8),%rdx
    13c1:	49 89 54 f6 18       	mov    %rdx,0x18(%r14,%rsi,8)
  for (int i = 1; i <= remaining_args; ++i) {
    13c6:	48 83 c6 04          	add    $0x4,%rsi
    13ca:	49 39 f7             	cmp    %rsi,%r15
    13cd:	75 d1                	jne    13a0 <main+0x170>
  }

  // check to make sure number of arguments is correct
  if (remaining_args != 2) {
    13cf:	83 f8 02             	cmp    $0x2,%eax
    13d2:	0f 85 b4 00 00 00    	jne    148c <main+0x25c>
    printf("Usage: %s [-p] <num_elements> <num_repeats>\n", argv[0]);
    printf("-p : print before/after arrays\n");
    exit(-1);
  }

  N = atoi(argv[1]);
    13d8:	49 8b 7e 08          	mov    0x8(%r14),%rdi
    13dc:	31 f6                	xor    %esi,%esi
    13de:	ba 0a 00 00 00       	mov    $0xa,%edx
    13e3:	e8 e8 fc ff ff       	call   10d0 <strtol@plt>
    13e8:	49 89 c7             	mov    %rax,%r15
  R = atoi(argv[2]);
    13eb:	49 8b 7e 10          	mov    0x10(%r14),%rdi
    13ef:	31 f6                	xor    %esi,%esi
    13f1:	ba 0a 00 00 00       	mov    $0xa,%edx
    13f6:	e8 d5 fc ff ff       	call   10d0 <strtol@plt>
    13fb:	41 89 dc             	mov    %ebx,%r12d
  for (int i = 0; test_cases[i] != NULL; i++) {
    13fe:	48 8d 1d bb 3c 00 00 	lea    0x3cbb(%rip),%rbx        # 50c0 <test_cases>
    1405:	48 83 3b 00          	cmpq   $0x0,(%rbx)
    1409:	74 50                	je     145b <main+0x22b>
    140b:	49 89 c6             	mov    %rax,%r14
    140e:	49 89 e5             	mov    %rsp,%r13
    1411:	31 ed                	xor    %ebp,%ebp
    1413:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    141a:	84 00 00 00 00 00 
    fprintf(stderr, "\nRunning test #%d...\n", i);
    1420:	48 8b 05 b1 3b 00 00 	mov    0x3bb1(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    1427:	48 8b 38             	mov    (%rax),%rdi
    142a:	48 8d 35 4d 1c 00 00 	lea    0x1c4d(%rip),%rsi        # 307e <_IO_stdin_used+0x7e>
    1431:	89 ea                	mov    %ebp,%edx
    1433:	31 c0                	xor    %eax,%eax
    1435:	e8 86 fc ff ff       	call   10c0 <fprintf@plt>
    (*test_cases[i])(printFlag, N, R, testFunc, numFunc);
    143a:	44 89 e7             	mov    %r12d,%edi
    143d:	44 89 fe             	mov    %r15d,%esi
    1440:	44 89 f2             	mov    %r14d,%edx
    1443:	4c 89 e9             	mov    %r13,%rcx
    1446:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    144c:	ff 14 eb             	call   *(%rbx,%rbp,8)
  for (int i = 0; test_cases[i] != NULL; i++) {
    144f:	48 83 7c eb 08 00    	cmpq   $0x0,0x8(%rbx,%rbp,8)
    1455:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    1459:	75 c5                	jne    1420 <main+0x1f0>
  fprintf(stderr, "Done testing.\n");
    145b:	48 8b 05 76 3b 00 00 	mov    0x3b76(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    1462:	48 8b 08             	mov    (%rax),%rcx
    1465:	48 8d 3d 28 1c 00 00 	lea    0x1c28(%rip),%rdi        # 3094 <_IO_stdin_used+0x94>
    146c:	be 0e 00 00 00       	mov    $0xe,%esi
    1471:	ba 01 00 00 00       	mov    $0x1,%edx
    1476:	e8 a5 fc ff ff       	call   1120 <fwrite@plt>

  run_test_suite(0, printFlag, N, R, testFunc, kNumOfFunc);

  return 0;
    147b:	31 c0                	xor    %eax,%eax
    147d:	48 83 c4 18          	add    $0x18,%rsp
    1481:	5b                   	pop    %rbx
    1482:	41 5c                	pop    %r12
    1484:	41 5d                	pop    %r13
    1486:	41 5e                	pop    %r14
    1488:	41 5f                	pop    %r15
    148a:	5d                   	pop    %rbp
    148b:	c3                   	ret
    printf("Usage: %s [-p] <num_elements> <num_repeats>\n", argv[0]);
    148c:	49 8b 36             	mov    (%r14),%rsi
    148f:	48 8d 3d bb 1b 00 00 	lea    0x1bbb(%rip),%rdi        # 3051 <_IO_stdin_used+0x51>
    1496:	31 c0                	xor    %eax,%eax
    1498:	e8 e3 fb ff ff       	call   1080 <printf@plt>
    printf("-p : print before/after arrays\n");
    149d:	48 8d 3d ff 1b 00 00 	lea    0x1bff(%rip),%rdi        # 30a3 <_IO_stdin_used+0xa3>
    14a4:	e8 a7 fb ff ff       	call   1050 <puts@plt>
    exit(-1);
    14a9:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    14ae:	e8 5d fc ff ff       	call   1110 <exit@plt>
    14b3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ba:	00 00 00 
    14bd:	0f 1f 00             	nopl   (%rax)

00000000000014c0 <all_random>:
void
init_data(data_t* data, int N, int randomPrefix, int invertedSuffix) {
  // initialize data with randomPrefix random numbers
  assert(randomPrefix <= N);
  /* random prefix */
  for (int i = 0; i < randomPrefix; i++) {
    14c0:	85 f6                	test   %esi,%esi
    14c2:	7e 40                	jle    1504 <all_random+0x44>
    14c4:	41 57                	push   %r15
    14c6:	41 56                	push   %r14
    14c8:	41 54                	push   %r12
    14ca:	53                   	push   %rbx
    14cb:	50                   	push   %rax
    14cc:	48 89 fb             	mov    %rdi,%rbx
    14cf:	41 89 f7             	mov    %esi,%r15d
    14d2:	45 31 e4             	xor    %r12d,%r12d
    14d5:	4c 8d 35 d4 3b 00 00 	lea    0x3bd4(%rip),%r14        # 50b0 <randomSeed>
    14dc:	0f 1f 40 00          	nopl   0x0(%rax)
    data[i] = rand_r(&randomSeed) % RANGE;
    14e0:	4c 89 f7             	mov    %r14,%rdi
    14e3:	e8 88 fb ff ff       	call   1070 <rand_r@plt>
    14e8:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    14ed:	42 89 04 a3          	mov    %eax,(%rbx,%r12,4)
  for (int i = 0; i < randomPrefix; i++) {
    14f1:	49 ff c4             	inc    %r12
    14f4:	4d 39 e7             	cmp    %r12,%r15
    14f7:	75 e7                	jne    14e0 <all_random+0x20>
    14f9:	48 83 c4 08          	add    $0x8,%rsp
    14fd:	5b                   	pop    %rbx
    14fe:	41 5c                	pop    %r12
    1500:	41 5e                	pop    %r14
    1502:	41 5f                	pop    %r15
  char* name;
};

void all_random(data_t* data, int N) {
  init_data(data, N, N, 0);
}
    1504:	c3                   	ret
    1505:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    150c:	00 00 00 00 

0000000000001510 <all_inverted>:
  for (int i = randomPrefix; i < N; i++) {
    1510:	85 f6                	test   %esi,%esi
    1512:	0f 8e bd 00 00 00    	jle    15d5 <all_inverted+0xc5>
    1518:	89 f0                	mov    %esi,%eax
    151a:	83 fe 08             	cmp    $0x8,%esi
    151d:	73 07                	jae    1526 <all_inverted+0x16>
    151f:	31 c9                	xor    %ecx,%ecx
    1521:	e9 81 00 00 00       	jmp    15a7 <all_inverted+0x97>
    1526:	89 c1                	mov    %eax,%ecx
    1528:	81 e1 f8 ff ff 7f    	and    $0x7ffffff8,%ecx
    152e:	66 0f 6e c6          	movd   %esi,%xmm0
    1532:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
    1537:	89 c2                	mov    %eax,%edx
    1539:	c1 ea 03             	shr    $0x3,%edx
    153c:	81 e2 ff ff ff 0f    	and    $0xfffffff,%edx
    1542:	48 c1 e2 05          	shl    $0x5,%rdx
    1546:	66 0f 6f 0d 02 1e 00 	movdqa 0x1e02(%rip),%xmm1        # 3350 <_IO_stdin_used+0x350>
    154d:	00 
    154e:	45 31 c0             	xor    %r8d,%r8d
    1551:	66 0f 6f 15 07 1e 00 	movdqa 0x1e07(%rip),%xmm2        # 3360 <_IO_stdin_used+0x360>
    1558:	00 
    1559:	66 0f 6f 1d 0f 1e 00 	movdqa 0x1e0f(%rip),%xmm3        # 3370 <_IO_stdin_used+0x370>
    1560:	00 
    1561:	66 0f 6f 25 17 1e 00 	movdqa 0x1e17(%rip),%xmm4        # 3380 <_IO_stdin_used+0x380>
    1568:	00 
    1569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      data[i] = (N - i) % RANGE;         // inverted
    1570:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    1574:	66 0f fa e9          	psubd  %xmm1,%xmm5
    1578:	66 0f 6f f5          	movdqa %xmm5,%xmm6
    157c:	66 0f fa f2          	psubd  %xmm2,%xmm6
    1580:	66 0f db eb          	pand   %xmm3,%xmm5
    1584:	66 0f db f3          	pand   %xmm3,%xmm6
    1588:	f3 42 0f 7f 2c 07    	movdqu %xmm5,(%rdi,%r8,1)
    158e:	f3 42 0f 7f 74 07 10 	movdqu %xmm6,0x10(%rdi,%r8,1)
    1595:	66 0f fe cc          	paddd  %xmm4,%xmm1
  for (int i = randomPrefix; i < N; i++) {
    1599:	49 83 c0 20          	add    $0x20,%r8
    159d:	4c 39 c2             	cmp    %r8,%rdx
    15a0:	75 ce                	jne    1570 <all_inverted+0x60>
    15a2:	48 39 c1             	cmp    %rax,%rcx
    15a5:	74 2e                	je     15d5 <all_inverted+0xc5>
    15a7:	48 29 c8             	sub    %rcx,%rax
    15aa:	48 8d 14 8f          	lea    (%rdi,%rcx,4),%rdx
    15ae:	29 ce                	sub    %ecx,%esi
    15b0:	31 c9                	xor    %ecx,%ecx
    15b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    15b9:	1f 84 00 00 00 00 00 
      data[i] = (N - i) % RANGE;         // inverted
    15c0:	89 f7                	mov    %esi,%edi
    15c2:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
    15c8:	89 3c 8a             	mov    %edi,(%rdx,%rcx,4)
  for (int i = randomPrefix; i < N; i++) {
    15cb:	48 ff c1             	inc    %rcx
    15ce:	ff ce                	dec    %esi
    15d0:	48 39 c8             	cmp    %rcx,%rax
    15d3:	75 eb                	jne    15c0 <all_inverted+0xb0>

void all_inverted(data_t* data, int N) {
  init_data(data, N, 0, 1 /* inverted */);
}
    15d5:	c3                   	ret
    15d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15dd:	00 00 00 

00000000000015e0 <test_subarray>:
    TEST_FAIL("Sorting array with one element failed");
  }
}

void test_subarray(int printFlag, int N, int R,
                   struct testFunc_t* testFunc, int numFunc) {
    15e0:	55                   	push   %rbp
    15e1:	41 57                	push   %r15
    15e3:	41 56                	push   %r14
    15e5:	41 55                	push   %r13
    15e7:	41 54                	push   %r12
    15e9:	53                   	push   %rbx
    15ea:	48 83 ec 28          	sub    $0x28,%rsp
    15ee:	44 89 c5             	mov    %r8d,%ebp
    15f1:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    15f6:	41 89 f4             	mov    %esi,%r12d
    15f9:	41 89 fd             	mov    %edi,%r13d
  data_t* data, *data_bcup;
  int success = 1;

  // allocate memory
  data = (data_t*) malloc(N * sizeof(data_t));
    15fc:	48 63 de             	movslq %esi,%rbx
    15ff:	48 c1 e3 02          	shl    $0x2,%rbx
    1603:	48 89 df             	mov    %rbx,%rdi
    1606:	e8 e5 fa ff ff       	call   10f0 <malloc@plt>
    160b:	49 89 c6             	mov    %rax,%r14
  data_bcup = (data_t*) malloc(N * sizeof(data_t));
    160e:	48 89 df             	mov    %rbx,%rdi
    1611:	e8 da fa ff ff       	call   10f0 <malloc@plt>
    1616:	49 89 c7             	mov    %rax,%r15

  if (data == NULL || data_bcup == NULL) {
    1619:	4d 85 f6             	test   %r14,%r14
    161c:	0f 84 ed 01 00 00    	je     180f <test_subarray+0x22f>
    1622:	4d 85 ff             	test   %r15,%r15
    1625:	0f 84 e4 01 00 00    	je     180f <test_subarray+0x22f>
    free(data_bcup);
    exit(-1);
  }

  // initialize data with random numbers
  for (int i = 0; i < N; i++) {
    162b:	45 85 e4             	test   %r12d,%r12d
    162e:	44 89 64 24 08       	mov    %r12d,0x8(%rsp)
    1633:	44 89 6c 24 0c       	mov    %r13d,0xc(%rsp)
    1638:	7e 6e                	jle    16a8 <test_subarray+0xc8>
    163a:	45 89 e5             	mov    %r12d,%r13d
    163d:	31 db                	xor    %ebx,%ebx
    163f:	4c 8d 25 6a 3a 00 00 	lea    0x3a6a(%rip),%r12        # 50b0 <randomSeed>
    1646:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    164d:	00 00 00 
    data[i] = rand_r(&randomSeed);
    1650:	4c 89 e7             	mov    %r12,%rdi
    1653:	e8 18 fa ff ff       	call   1070 <rand_r@plt>
    1658:	41 89 04 9e          	mov    %eax,(%r14,%rbx,4)
    data_bcup[i] = data[i];
    165c:	41 89 04 9f          	mov    %eax,(%r15,%rbx,4)
  for (int i = 0; i < N; i++) {
    1660:	48 ff c3             	inc    %rbx
    1663:	49 39 dd             	cmp    %rbx,%r13
    1666:	75 e8                	jne    1650 <test_subarray+0x70>
  }
  if (printFlag) {
    1668:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
    166d:	74 54                	je     16c3 <test_subarray+0xe3>
    printf("Data before sort\n");
    166f:	48 8d 3d 84 1c 00 00 	lea    0x1c84(%rip),%rdi        # 32fa <_IO_stdin_used+0x2fa>
    1676:	e8 d5 f9 ff ff       	call   1050 <puts@plt>
  for (int i = 0; i < N; i++) {
    167b:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
  for (int i = 0; i < N; i++) {
    1680:	7e 37                	jle    16b9 <test_subarray+0xd9>
    1682:	4c 8d 25 ca 1a 00 00 	lea    0x1aca(%rip),%r12        # 3153 <_IO_stdin_used+0x153>
    1689:	31 db                	xor    %ebx,%ebx
    168b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    printf("%d ", data[i]);
    1690:	41 8b 34 9e          	mov    (%r14,%rbx,4),%esi
    1694:	4c 89 e7             	mov    %r12,%rdi
    1697:	31 c0                	xor    %eax,%eax
    1699:	e8 e2 f9 ff ff       	call   1080 <printf@plt>
  for (int i = 0; i < N; i++) {
    169e:	48 ff c3             	inc    %rbx
    16a1:	49 39 dd             	cmp    %rbx,%r13
    16a4:	75 ea                	jne    1690 <test_subarray+0xb0>
    16a6:	eb 11                	jmp    16b9 <test_subarray+0xd9>
  if (printFlag) {
    16a8:	45 85 ed             	test   %r13d,%r13d
    16ab:	74 16                	je     16c3 <test_subarray+0xe3>
    printf("Data before sort\n");
    16ad:	48 8d 3d 46 1c 00 00 	lea    0x1c46(%rip),%rdi        # 32fa <_IO_stdin_used+0x2fa>
    16b4:	e8 97 f9 ff ff       	call   1050 <puts@plt>
  printf("\n");
    16b9:	bf 0a 00 00 00       	mov    $0xa,%edi
    16be:	e8 7d f9 ff ff       	call   1040 <putchar@plt>
    display_array(data, N);
  }
  int begin = rand_r(&randomSeed) % N;
    16c3:	48 8d 3d e6 39 00 00 	lea    0x39e6(%rip),%rdi        # 50b0 <randomSeed>
    16ca:	e8 a1 f9 ff ff       	call   1070 <rand_r@plt>
    16cf:	99                   	cltd
    16d0:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
    16d4:	f7 f9                	idiv   %ecx
  int end = N - 1 - begin;
    16d6:	41 89 d4             	mov    %edx,%r12d
    16d9:	41 f7 d4             	not    %r12d
    16dc:	41 01 cc             	add    %ecx,%r12d
  if (begin > end) {
    16df:	44 39 e2             	cmp    %r12d,%edx
    16e2:	45 89 e5             	mov    %r12d,%r13d
    16e5:	44 0f 4c ea          	cmovl  %edx,%r13d
    16e9:	44 0f 4f e2          	cmovg  %edx,%r12d
    int temp = begin;
    begin = end;
    end = temp;
  }

  printf("Sorting subarray A[%d..%d]\n", begin, end);
    16ed:	48 8d 3d de 19 00 00 	lea    0x19de(%rip),%rdi        # 30d2 <_IO_stdin_used+0xd2>
    16f4:	44 89 ee             	mov    %r13d,%esi
    16f7:	44 89 e2             	mov    %r12d,%edx
    16fa:	31 c0                	xor    %eax,%eax
    16fc:	e8 7f f9 ff ff       	call   1080 <printf@plt>
  for (int i = 0; i < numFunc; i++) {
    1701:	85 ed                	test   %ebp,%ebp
    1703:	0f 8e b8 00 00 00    	jle    17c1 <test_subarray+0x1e1>
    1709:	89 e8                	mov    %ebp,%eax
    170b:	48 c1 e0 04          	shl    $0x4,%rax
    170f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    1714:	bb 01 00 00 00       	mov    $0x1,%ebx
    1719:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
    171e:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
    1723:	45 31 ff             	xor    %r15d,%r15d
    1726:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    172d:	00 00 00 
    testFunc[i].func(data, begin, end);
    1730:	4c 89 f7             	mov    %r14,%rdi
    1733:	44 89 ee             	mov    %r13d,%esi
    1736:	44 89 e2             	mov    %r12d,%edx
    1739:	42 ff 54 3d 00       	call   *0x0(%rbp,%r15,1)
    success &= post_process(data, data_bcup, N, printFlag, testFunc[i].name, begin, end);
    173e:	4e 8b 44 3d 08       	mov    0x8(%rbp,%r15,1),%r8
    1743:	44 89 24 24          	mov    %r12d,(%rsp)
    1747:	4c 89 f7             	mov    %r14,%rdi
    174a:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    174f:	8b 54 24 08          	mov    0x8(%rsp),%edx
    1753:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    1757:	45 89 e9             	mov    %r13d,%r9d
    175a:	e8 e1 00 00 00       	call   1840 <post_process>
    175f:	21 c3                	and    %eax,%ebx
  for (int i = 0; i < numFunc; i++) {
    1761:	49 83 c7 10          	add    $0x10,%r15
    1765:	4c 39 7c 24 20       	cmp    %r15,0x20(%rsp)
    176a:	75 c4                	jne    1730 <test_subarray+0x150>
  }

  if (success) {
    176c:	85 db                	test   %ebx,%ebx
    176e:	4c 8b 7c 24 10       	mov    0x10(%rsp),%r15
    1773:	75 4c                	jne    17c1 <test_subarray+0x1e1>
    printf("Arrays are sorted: yes\n");
    TEST_PASS();
  } else {
    TEST_FAIL("Sorting subarray failed");
    1775:	48 8b 1d 5c 38 00 00 	mov    0x385c(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    177c:	48 8b 3b             	mov    (%rbx),%rdi
    177f:	48 8d 35 90 19 00 00 	lea    0x1990(%rip),%rsi        # 3116 <_IO_stdin_used+0x116>
    1786:	48 8d 15 7b 19 00 00 	lea    0x197b(%rip),%rdx        # 3108 <_IO_stdin_used+0x108>
    178d:	b9 3b 01 00 00       	mov    $0x13b,%ecx
    1792:	31 c0                	xor    %eax,%eax
    1794:	e8 27 f9 ff ff       	call   10c0 <fprintf@plt>
    1799:	48 8b 0b             	mov    (%rbx),%rcx
    179c:	48 8d 3d 98 19 00 00 	lea    0x1998(%rip),%rdi        # 313b <_IO_stdin_used+0x13b>
    17a3:	be 17 00 00 00       	mov    $0x17,%esi
    17a8:	ba 01 00 00 00       	mov    $0x1,%edx
    17ad:	e8 6e f9 ff ff       	call   1120 <fwrite@plt>
    17b2:	48 8b 33             	mov    (%rbx),%rsi
    17b5:	bf 0a 00 00 00       	mov    $0xa,%edi
    17ba:	e8 e1 f8 ff ff       	call   10a0 <fputc@plt>
    17bf:	eb 30                	jmp    17f1 <test_subarray+0x211>
    printf("Arrays are sorted: yes\n");
    17c1:	48 8d 3d 1b 1b 00 00 	lea    0x1b1b(%rip),%rdi        # 32e3 <_IO_stdin_used+0x2e3>
    17c8:	e8 83 f8 ff ff       	call   1050 <puts@plt>
    TEST_PASS();
    17cd:	48 8b 05 04 38 00 00 	mov    0x3804(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    17d4:	48 8b 38             	mov    (%rax),%rdi
    17d7:	48 8d 35 10 19 00 00 	lea    0x1910(%rip),%rsi        # 30ee <_IO_stdin_used+0xee>
    17de:	48 8d 15 23 19 00 00 	lea    0x1923(%rip),%rdx        # 3108 <_IO_stdin_used+0x108>
    17e5:	b9 39 01 00 00       	mov    $0x139,%ecx
    17ea:	31 c0                	xor    %eax,%eax
    17ec:	e8 cf f8 ff ff       	call   10c0 <fprintf@plt>
  }

  free(data);
    17f1:	4c 89 f7             	mov    %r14,%rdi
    17f4:	e8 37 f8 ff ff       	call   1030 <free@plt>
  free(data_bcup);
    17f9:	4c 89 ff             	mov    %r15,%rdi
    17fc:	48 83 c4 28          	add    $0x28,%rsp
    1800:	5b                   	pop    %rbx
    1801:	41 5c                	pop    %r12
    1803:	41 5d                	pop    %r13
    1805:	41 5e                	pop    %r14
    1807:	41 5f                	pop    %r15
    1809:	5d                   	pop    %rbp
    180a:	e9 21 f8 ff ff       	jmp    1030 <free@plt>
    printf("Error: not enough memory\n");
    180f:	48 8d 3d f5 1a 00 00 	lea    0x1af5(%rip),%rdi        # 330b <_IO_stdin_used+0x30b>
    1816:	e8 35 f8 ff ff       	call   1050 <puts@plt>
    free(data);
    181b:	4c 89 f7             	mov    %r14,%rdi
    181e:	e8 0d f8 ff ff       	call   1030 <free@plt>
    free(data_bcup);
    1823:	4c 89 ff             	mov    %r15,%rdi
    1826:	e8 05 f8 ff ff       	call   1030 <free@plt>
    exit(-1);
    182b:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    1830:	e8 db f8 ff ff       	call   1110 <exit@plt>
    1835:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    183c:	00 00 00 00 

0000000000001840 <post_process>:
                               int printFlag, char* name, int begin, int end) {
    1840:	55                   	push   %rbp
    1841:	41 57                	push   %r15
    1843:	41 56                	push   %r14
    1845:	41 55                	push   %r13
    1847:	41 54                	push   %r12
    1849:	53                   	push   %rbx
    184a:	48 83 ec 18          	sub    $0x18,%rsp
    184e:	44 89 cd             	mov    %r9d,%ebp
    1851:	49 89 f6             	mov    %rsi,%r14
    1854:	49 89 ff             	mov    %rdi,%r15
    1857:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    185c:	41 89 d4             	mov    %edx,%r12d
  if (printFlag) {
    185f:	85 c9                	test   %ecx,%ecx
    1861:	74 62                	je     18c5 <post_process+0x85>
    printf("%s: ", name);
    1863:	48 8d 3d ed 18 00 00 	lea    0x18ed(%rip),%rdi        # 3157 <_IO_stdin_used+0x157>
    186a:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    186f:	4c 89 c6             	mov    %r8,%rsi
    1872:	31 c0                	xor    %eax,%eax
    1874:	e8 07 f8 ff ff       	call   1080 <printf@plt>
    printf("Data after sort\n");
    1879:	48 8d 3d 53 1a 00 00 	lea    0x1a53(%rip),%rdi        # 32d3 <_IO_stdin_used+0x2d3>
    1880:	e8 cb f7 ff ff       	call   1050 <puts@plt>
  for (int i = 0; i < N; i++) {
    1885:	83 7c 24 10 00       	cmpl   $0x0,0x10(%rsp)
    188a:	7e 2a                	jle    18b6 <post_process+0x76>
    188c:	4c 8d 2d c0 18 00 00 	lea    0x18c0(%rip),%r13        # 3153 <_IO_stdin_used+0x153>
    1893:	31 db                	xor    %ebx,%ebx
    1895:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    189c:	00 00 00 00 
    printf("%d ", data[i]);
    18a0:	41 8b 34 9f          	mov    (%r15,%rbx,4),%esi
    18a4:	4c 89 ef             	mov    %r13,%rdi
    18a7:	31 c0                	xor    %eax,%eax
    18a9:	e8 d2 f7 ff ff       	call   1080 <printf@plt>
  for (int i = 0; i < N; i++) {
    18ae:	48 ff c3             	inc    %rbx
    18b1:	49 39 dc             	cmp    %rbx,%r12
    18b4:	75 ea                	jne    18a0 <post_process+0x60>
  printf("\n");
    18b6:	bf 0a 00 00 00       	mov    $0xa,%edi
    18bb:	e8 80 f7 ff ff       	call   1040 <putchar@plt>
    18c0:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    18c5:	44 8b 6c 24 50       	mov    0x50(%rsp),%r13d
    18ca:	b8 01 00 00 00       	mov    $0x1,%eax
  for (int i = 0 ; i < begin ; i++) {
    18cf:	85 ed                	test   %ebp,%ebp
    18d1:	7e 23                	jle    18f6 <post_process+0xb6>
    18d3:	89 e9                	mov    %ebp,%ecx
    18d5:	31 d2                	xor    %edx,%edx
    18d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18de:	00 00 
    if (data[i] != data_bcup[i]) {
    18e0:	41 8b 34 97          	mov    (%r15,%rdx,4),%esi
    18e4:	41 3b 34 96          	cmp    (%r14,%rdx,4),%esi
    18e8:	0f 85 58 02 00 00    	jne    1b46 <post_process+0x306>
  for (int i = 0 ; i < begin ; i++) {
    18ee:	48 ff c2             	inc    %rdx
    18f1:	48 39 d1             	cmp    %rdx,%rcx
    18f4:	75 ea                	jne    18e0 <post_process+0xa0>
  for (int i = begin + 1 ; i < end + 1 ; i++) {
    18f6:	48 63 cd             	movslq %ebp,%rcx
    18f9:	41 39 ed             	cmp    %ebp,%r13d
    18fc:	41 0f 4f ed          	cmovg  %r13d,%ebp
    1900:	48 63 d5             	movslq %ebp,%rdx
    1903:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    190a:	84 00 00 00 00 00 
    1910:	48 39 ca             	cmp    %rcx,%rdx
    1913:	74 75                	je     198a <post_process+0x14a>
    if (data[i - 1] > data[i]) {
    1915:	41 8b 34 8f          	mov    (%r15,%rcx,4),%esi
  for (int i = begin + 1 ; i < end + 1 ; i++) {
    1919:	48 8d 79 01          	lea    0x1(%rcx),%rdi
    if (data[i - 1] > data[i]) {
    191d:	41 3b 74 8f 04       	cmp    0x4(%r15,%rcx,4),%esi
    1922:	48 89 f9             	mov    %rdi,%rcx
    1925:	76 e9                	jbe    1910 <post_process+0xd0>
      printf("%s: ", name);
    1927:	48 8d 3d 29 18 00 00 	lea    0x1829(%rip),%rdi        # 3157 <_IO_stdin_used+0x157>
    192e:	4c 89 c6             	mov    %r8,%rsi
    1931:	31 c0                	xor    %eax,%eax
    1933:	4c 89 c5             	mov    %r8,%rbp
    1936:	e8 45 f7 ff ff       	call   1080 <printf@plt>
      TEST_FAIL("Arrays are sorted: NO!\n");
    193b:	48 8b 1d 96 36 00 00 	mov    0x3696(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    1942:	48 8b 3b             	mov    (%rbx),%rdi
    1945:	48 8d 35 ca 17 00 00 	lea    0x17ca(%rip),%rsi        # 3116 <_IO_stdin_used+0x116>
    194c:	48 8d 15 09 18 00 00 	lea    0x1809(%rip),%rdx        # 315c <_IO_stdin_used+0x15c>
    1953:	b9 62 00 00 00       	mov    $0x62,%ecx
    1958:	31 c0                	xor    %eax,%eax
    195a:	e8 61 f7 ff ff       	call   10c0 <fprintf@plt>
    195f:	48 8b 0b             	mov    (%rbx),%rcx
    1962:	48 8d 3d 26 18 00 00 	lea    0x1826(%rip),%rdi        # 318f <_IO_stdin_used+0x18f>
    1969:	be 17 00 00 00       	mov    $0x17,%esi
    196e:	ba 01 00 00 00       	mov    $0x1,%edx
    1973:	e8 a8 f7 ff ff       	call   1120 <fwrite@plt>
    1978:	48 8b 33             	mov    (%rbx),%rsi
    197b:	bf 0a 00 00 00       	mov    $0xa,%edi
    1980:	e8 1b f7 ff ff       	call   10a0 <fputc@plt>
    1985:	49 89 e8             	mov    %rbp,%r8
    1988:	31 c0                	xor    %eax,%eax
  for (int i = end + 1 ; i < N ; i++) {
    198a:	49 63 d5             	movslq %r13d,%rdx
    198d:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
    1992:	49 63 cd             	movslq %r13d,%rcx
    1995:	48 ff c2             	inc    %rdx
    1998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    199f:	00 
    19a0:	48 39 ca             	cmp    %rcx,%rdx
    19a3:	7d 6e                	jge    1a13 <post_process+0x1d3>
    if (data[i] != data_bcup[i]) {
    19a5:	41 8b 34 97          	mov    (%r15,%rdx,4),%esi
    19a9:	48 8d 7a 01          	lea    0x1(%rdx),%rdi
    19ad:	41 3b 34 96          	cmp    (%r14,%rdx,4),%esi
    19b1:	48 89 fa             	mov    %rdi,%rdx
    19b4:	74 ea                	je     19a0 <post_process+0x160>
      printf("%s: ", name);
    19b6:	48 8d 3d 9a 17 00 00 	lea    0x179a(%rip),%rdi        # 3157 <_IO_stdin_used+0x157>
    19bd:	4c 89 c6             	mov    %r8,%rsi
    19c0:	31 c0                	xor    %eax,%eax
    19c2:	e8 b9 f6 ff ff       	call   1080 <printf@plt>
      TEST_FAIL("Array outside sort boundary changed!\n");
    19c7:	48 8b 1d 0a 36 00 00 	mov    0x360a(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    19ce:	48 8b 3b             	mov    (%rbx),%rdi
    19d1:	48 8d 35 3e 17 00 00 	lea    0x173e(%rip),%rsi        # 3116 <_IO_stdin_used+0x116>
    19d8:	48 8d 15 7d 17 00 00 	lea    0x177d(%rip),%rdx        # 315c <_IO_stdin_used+0x15c>
    19df:	b9 6c 00 00 00       	mov    $0x6c,%ecx
    19e4:	31 c0                	xor    %eax,%eax
    19e6:	e8 d5 f6 ff ff       	call   10c0 <fprintf@plt>
    19eb:	48 8b 0b             	mov    (%rbx),%rcx
    19ee:	48 8d 3d 74 17 00 00 	lea    0x1774(%rip),%rdi        # 3169 <_IO_stdin_used+0x169>
    19f5:	be 25 00 00 00       	mov    $0x25,%esi
    19fa:	ba 01 00 00 00       	mov    $0x1,%edx
    19ff:	e8 1c f7 ff ff       	call   1120 <fwrite@plt>
    1a04:	48 8b 33             	mov    (%rbx),%rsi
    1a07:	bf 0a 00 00 00       	mov    $0xa,%edi
    1a0c:	e8 8f f6 ff ff       	call   10a0 <fputc@plt>
    1a11:	31 c0                	xor    %eax,%eax
  for (int i = 0 ; i < N ; i++) {
    1a13:	45 85 ed             	test   %r13d,%r13d
    1a16:	0f 8e 1b 01 00 00    	jle    1b37 <post_process+0x2f7>
    1a1c:	31 f6                	xor    %esi,%esi
    1a1e:	41 83 fd 08          	cmp    $0x8,%r13d
    1a22:	0f 82 9d 00 00 00    	jb     1ac5 <post_process+0x285>
    1a28:	4c 89 f9             	mov    %r15,%rcx
    1a2b:	4c 29 f1             	sub    %r14,%rcx
    1a2e:	48 83 f9 20          	cmp    $0x20,%rcx
    1a32:	0f 82 8d 00 00 00    	jb     1ac5 <post_process+0x285>
    1a38:	44 89 e6             	mov    %r12d,%esi
    1a3b:	81 e6 f8 ff ff 7f    	and    $0x7ffffff8,%esi
    1a41:	48 8d 3c b5 00 00 00 	lea    0x0(,%rsi,4),%rdi
    1a48:	00 
    1a49:	49 8d 0c b7          	lea    (%r15,%rsi,4),%rcx
    1a4d:	49 8d 14 b6          	lea    (%r14,%rsi,4),%rdx
    1a51:	45 31 c0             	xor    %r8d,%r8d
    1a54:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    1a5b:	00 00 00 00 00 
    *data++ = *data_bcup++;
    1a60:	43 0f 10 04 06       	movups (%r14,%r8,1),%xmm0
    1a65:	43 0f 10 4c 06 10    	movups 0x10(%r14,%r8,1),%xmm1
    1a6b:	43 0f 11 04 07       	movups %xmm0,(%r15,%r8,1)
    1a70:	43 0f 11 4c 07 10    	movups %xmm1,0x10(%r15,%r8,1)
    1a76:	49 83 c0 20          	add    $0x20,%r8
    1a7a:	4c 39 c7             	cmp    %r8,%rdi
    1a7d:	75 e1                	jne    1a60 <post_process+0x220>
  for (int i = 0 ; i < N ; i++) {
    1a7f:	4c 39 e6             	cmp    %r12,%rsi
    1a82:	0f 84 af 00 00 00    	je     1b37 <post_process+0x2f7>
    1a88:	44 89 ef             	mov    %r13d,%edi
    1a8b:	29 f7                	sub    %esi,%edi
    1a8d:	83 e7 07             	and    $0x7,%edi
    1a90:	74 43                	je     1ad5 <post_process+0x295>
    1a92:	f7 df                	neg    %edi
    1a94:	45 31 c0             	xor    %r8d,%r8d
    1a97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a9e:	00 00 
    *data++ = *data_bcup++;
    1aa0:	44 8b 0a             	mov    (%rdx),%r9d
    1aa3:	48 83 c2 04          	add    $0x4,%rdx
    1aa7:	44 89 09             	mov    %r9d,(%rcx)
    1aaa:	48 83 c1 04          	add    $0x4,%rcx
  for (int i = 0 ; i < N ; i++) {
    1aae:	41 ff c8             	dec    %r8d
    1ab1:	44 39 c7             	cmp    %r8d,%edi
    1ab4:	75 ea                	jne    1aa0 <post_process+0x260>
    1ab6:	89 f7                	mov    %esi,%edi
    1ab8:	44 29 c7             	sub    %r8d,%edi
    1abb:	44 29 ee             	sub    %r13d,%esi
    1abe:	83 fe f8             	cmp    $0xfffffff8,%esi
    1ac1:	76 1c                	jbe    1adf <post_process+0x29f>
    1ac3:	eb 72                	jmp    1b37 <post_process+0x2f7>
    1ac5:	4c 89 f9             	mov    %r15,%rcx
    1ac8:	4c 89 f2             	mov    %r14,%rdx
    1acb:	44 89 ef             	mov    %r13d,%edi
    1ace:	29 f7                	sub    %esi,%edi
    1ad0:	83 e7 07             	and    $0x7,%edi
    1ad3:	75 bd                	jne    1a92 <post_process+0x252>
    1ad5:	89 f7                	mov    %esi,%edi
    1ad7:	44 29 ee             	sub    %r13d,%esi
    1ada:	83 fe f8             	cmp    $0xfffffff8,%esi
    1add:	77 58                	ja     1b37 <post_process+0x2f7>
    1adf:	41 29 fd             	sub    %edi,%r13d
    1ae2:	31 f6                	xor    %esi,%esi
    1ae4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    1aeb:	00 00 00 00 00 
    *data++ = *data_bcup++;
    1af0:	8b 3c b2             	mov    (%rdx,%rsi,4),%edi
    1af3:	89 3c b1             	mov    %edi,(%rcx,%rsi,4)
    1af6:	8b 7c b2 04          	mov    0x4(%rdx,%rsi,4),%edi
    1afa:	89 7c b1 04          	mov    %edi,0x4(%rcx,%rsi,4)
    1afe:	8b 7c b2 08          	mov    0x8(%rdx,%rsi,4),%edi
    1b02:	89 7c b1 08          	mov    %edi,0x8(%rcx,%rsi,4)
    1b06:	8b 7c b2 0c          	mov    0xc(%rdx,%rsi,4),%edi
    1b0a:	89 7c b1 0c          	mov    %edi,0xc(%rcx,%rsi,4)
    1b0e:	8b 7c b2 10          	mov    0x10(%rdx,%rsi,4),%edi
    1b12:	89 7c b1 10          	mov    %edi,0x10(%rcx,%rsi,4)
    1b16:	8b 7c b2 14          	mov    0x14(%rdx,%rsi,4),%edi
    1b1a:	89 7c b1 14          	mov    %edi,0x14(%rcx,%rsi,4)
    1b1e:	8b 7c b2 18          	mov    0x18(%rdx,%rsi,4),%edi
    1b22:	89 7c b1 18          	mov    %edi,0x18(%rcx,%rsi,4)
    1b26:	8b 7c b2 1c          	mov    0x1c(%rdx,%rsi,4),%edi
    1b2a:	89 7c b1 1c          	mov    %edi,0x1c(%rcx,%rsi,4)
  for (int i = 0 ; i < N ; i++) {
    1b2e:	48 83 c6 08          	add    $0x8,%rsi
    1b32:	41 39 f5             	cmp    %esi,%r13d
    1b35:	75 b9                	jne    1af0 <post_process+0x2b0>
  return result;
    1b37:	48 83 c4 18          	add    $0x18,%rsp
    1b3b:	5b                   	pop    %rbx
    1b3c:	41 5c                	pop    %r12
    1b3e:	41 5d                	pop    %r13
    1b40:	41 5e                	pop    %r14
    1b42:	41 5f                	pop    %r15
    1b44:	5d                   	pop    %rbp
    1b45:	c3                   	ret
      printf("%s: ", name);
    1b46:	48 8d 3d 0a 16 00 00 	lea    0x160a(%rip),%rdi        # 3157 <_IO_stdin_used+0x157>
    1b4d:	4c 89 c6             	mov    %r8,%rsi
    1b50:	31 c0                	xor    %eax,%eax
    1b52:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    1b57:	e8 24 f5 ff ff       	call   1080 <printf@plt>
      TEST_FAIL("Array outside sort boundary changed!\n");
    1b5c:	48 8b 1d 75 34 00 00 	mov    0x3475(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    1b63:	48 8b 3b             	mov    (%rbx),%rdi
    1b66:	48 8d 35 a9 15 00 00 	lea    0x15a9(%rip),%rsi        # 3116 <_IO_stdin_used+0x116>
    1b6d:	48 8d 15 e8 15 00 00 	lea    0x15e8(%rip),%rdx        # 315c <_IO_stdin_used+0x15c>
    1b74:	b9 58 00 00 00       	mov    $0x58,%ecx
    1b79:	31 c0                	xor    %eax,%eax
    1b7b:	e8 40 f5 ff ff       	call   10c0 <fprintf@plt>
    1b80:	48 8b 0b             	mov    (%rbx),%rcx
    1b83:	48 8d 3d df 15 00 00 	lea    0x15df(%rip),%rdi        # 3169 <_IO_stdin_used+0x169>
    1b8a:	be 25 00 00 00       	mov    $0x25,%esi
    1b8f:	ba 01 00 00 00       	mov    $0x1,%edx
    1b94:	e8 87 f5 ff ff       	call   1120 <fwrite@plt>
    1b99:	48 8b 33             	mov    (%rbx),%rsi
    1b9c:	bf 0a 00 00 00       	mov    $0xa,%edi
    1ba1:	e8 fa f4 ff ff       	call   10a0 <fputc@plt>
    1ba6:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    1bab:	31 c0                	xor    %eax,%eax
    1bad:	e9 44 fd ff ff       	jmp    18f6 <post_process+0xb6>
    1bb2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1bb9:	1f 84 00 00 00 00 00 

0000000000001bc0 <test_correctness>:
                             struct testFunc_t* testFunc, int numFunc) {
    1bc0:	55                   	push   %rbp
    1bc1:	48 89 e5             	mov    %rsp,%rbp
    1bc4:	41 57                	push   %r15
    1bc6:	41 56                	push   %r14
    1bc8:	41 55                	push   %r13
    1bca:	41 54                	push   %r12
    1bcc:	53                   	push   %rbx
    1bcd:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    1bd4:	49 89 cd             	mov    %rcx,%r13
    1bd7:	89 55 98             	mov    %edx,-0x68(%rbp)
    1bda:	41 89 f4             	mov    %esi,%r12d
    1bdd:	89 7d cc             	mov    %edi,-0x34(%rbp)
  float* sum_time = (float*) alloca(numFunc * sizeof(float));
    1be0:	49 63 c0             	movslq %r8d,%rax
    1be3:	49 89 e6             	mov    %rsp,%r14
    1be6:	48 8d 0c 85 0f 00 00 	lea    0xf(,%rax,4),%rcx
    1bed:	00 
    1bee:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
    1bf2:	49 29 ce             	sub    %rcx,%r14
    1bf5:	4c 89 f4             	mov    %r14,%rsp
    1bf8:	44 89 45 d0          	mov    %r8d,-0x30(%rbp)
    1bfc:	44 89 c3             	mov    %r8d,%ebx
  for (int i = 0; i < numFunc; i++) {
    1bff:	85 c0                	test   %eax,%eax
    1c01:	7e 12                	jle    1c15 <test_correctness+0x55>
    1c03:	48 8d 14 9d 00 00 00 	lea    0x0(,%rbx,4),%rdx
    1c0a:	00 
    sum_time[i] = 0;
    1c0b:	4c 89 f7             	mov    %r14,%rdi
    1c0e:	31 f6                	xor    %esi,%esi
    1c10:	e8 7b f4 ff ff       	call   1090 <memset@plt>
    1c15:	4c 89 75 b0          	mov    %r14,-0x50(%rbp)
    1c19:	48 89 5d 90          	mov    %rbx,-0x70(%rbp)
  data = (data_t*) malloc(N * sizeof(data_t));
    1c1d:	49 63 dc             	movslq %r12d,%rbx
    1c20:	48 c1 e3 02          	shl    $0x2,%rbx
    1c24:	48 89 df             	mov    %rbx,%rdi
    1c27:	e8 c4 f4 ff ff       	call   10f0 <malloc@plt>
    1c2c:	49 89 c6             	mov    %rax,%r14
  data_bcup = (data_t*) malloc(N * sizeof(data_t));
    1c2f:	48 89 df             	mov    %rbx,%rdi
    1c32:	e8 b9 f4 ff ff       	call   10f0 <malloc@plt>
    1c37:	49 89 c7             	mov    %rax,%r15
  if (data == NULL || data_bcup == NULL) {
    1c3a:	4d 85 f6             	test   %r14,%r14
    1c3d:	0f 84 5f 08 00 00    	je     24a2 <test_correctness+0x8e2>
    1c43:	4d 85 ff             	test   %r15,%r15
    1c46:	0f 84 56 08 00 00    	je     24a2 <test_correctness+0x8e2>
  for (int i = 0; i < numFunc; i++) {
    1c4c:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
    1c50:	4c 89 7d 80          	mov    %r15,-0x80(%rbp)
    1c54:	4c 89 75 a8          	mov    %r14,-0x58(%rbp)
    1c58:	4c 89 65 a0          	mov    %r12,-0x60(%rbp)
    1c5c:	8b 5d 98             	mov    -0x68(%rbp),%ebx
  for (int k = 0; k < numFunc; k++) {
    1c5f:	0f 8e 0b 01 00 00    	jle    1d70 <test_correctness+0x1b0>
    1c65:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1c69:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1c70:	00 
    1c71:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
    sum_time[k] = 0;
    1c75:	31 f6                	xor    %esi,%esi
    1c77:	e8 14 f4 ff ff       	call   1090 <memset@plt>
    1c7c:	85 db                	test   %ebx,%ebx
    for (int j = 0; j < R; j++) {
    1c7e:	0f 8f f4 00 00 00    	jg     1d78 <test_correctness+0x1b8>
           dataGen[gen].name, N);
    1c84:	48 8b 35 0d 34 00 00 	mov    0x340d(%rip),%rsi        # 5098 <dataGen+0x8>
    printf("Generating %s array of %d elements\n",
    1c8b:	48 8d 3d 15 15 00 00 	lea    0x1515(%rip),%rdi        # 31a7 <_IO_stdin_used+0x1a7>
    1c92:	4c 89 e2             	mov    %r12,%rdx
    1c95:	45 31 e4             	xor    %r12d,%r12d
    1c98:	31 c0                	xor    %eax,%eax
    1c9a:	e8 e1 f3 ff ff       	call   1080 <printf@plt>
      printf("Arrays are sorted: yes\n");
    1c9f:	48 8d 3d 3d 16 00 00 	lea    0x163d(%rip),%rdi        # 32e3 <_IO_stdin_used+0x2e3>
    1ca6:	e8 a5 f3 ff ff       	call   1050 <puts@plt>
      TEST_PASS();
    1cab:	48 8b 05 26 33 00 00 	mov    0x3326(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    1cb2:	48 8b 38             	mov    (%rax),%rdi
    1cb5:	48 8d 35 32 14 00 00 	lea    0x1432(%rip),%rsi        # 30ee <_IO_stdin_used+0xee>
    1cbc:	48 8d 15 08 15 00 00 	lea    0x1508(%rip),%rdx        # 31cb <_IO_stdin_used+0x1cb>
    1cc3:	b9 d9 00 00 00       	mov    $0xd9,%ecx
    1cc8:	31 c0                	xor    %eax,%eax
    1cca:	e8 f1 f3 ff ff       	call   10c0 <fprintf@plt>
    1ccf:	4c 8b 7d 90          	mov    -0x70(%rbp),%r15
      for (int k = 0; k < numFunc; k++) {
    1cd3:	49 c1 e7 04          	shl    $0x4,%r15
    1cd7:	48 8d 1d fe 14 00 00 	lea    0x14fe(%rip),%rbx        # 31dc <_IO_stdin_used+0x1dc>
    1cde:	66 90                	xchg   %ax,%ax
        printf("%s: Elapsed execution time: %f sec\n", testFunc[k].name, avgRuntime);
    1ce0:	4b 8b 74 25 08       	mov    0x8(%r13,%r12,1),%rsi
    1ce5:	0f 57 c0             	xorps  %xmm0,%xmm0
    1ce8:	48 89 df             	mov    %rbx,%rdi
    1ceb:	b0 01                	mov    $0x1,%al
    1ced:	e8 8e f3 ff ff       	call   1080 <printf@plt>
      for (int k = 0; k < numFunc; k++) {
    1cf2:	49 83 c4 10          	add    $0x10,%r12
    1cf6:	4d 39 e7             	cmp    %r12,%r15
    1cf9:	75 e5                	jne    1ce0 <test_correctness+0x120>
           dataGen[gen].name, N);
    1cfb:	48 8b 35 a6 33 00 00 	mov    0x33a6(%rip),%rsi        # 50a8 <dataGen+0x18>
    printf("Generating %s array of %d elements\n",
    1d02:	48 8d 3d 9e 14 00 00 	lea    0x149e(%rip),%rdi        # 31a7 <_IO_stdin_used+0x1a7>
    1d09:	45 31 e4             	xor    %r12d,%r12d
    1d0c:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    1d10:	31 c0                	xor    %eax,%eax
    1d12:	e8 69 f3 ff ff       	call   1080 <printf@plt>
      printf("Arrays are sorted: yes\n");
    1d17:	48 8d 3d c5 15 00 00 	lea    0x15c5(%rip),%rdi        # 32e3 <_IO_stdin_used+0x2e3>
    1d1e:	e8 2d f3 ff ff       	call   1050 <puts@plt>
      TEST_PASS();
    1d23:	48 8b 05 ae 32 00 00 	mov    0x32ae(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    1d2a:	48 8b 38             	mov    (%rax),%rdi
    1d2d:	48 8d 35 ba 13 00 00 	lea    0x13ba(%rip),%rsi        # 30ee <_IO_stdin_used+0xee>
    1d34:	48 8d 15 90 14 00 00 	lea    0x1490(%rip),%rdx        # 31cb <_IO_stdin_used+0x1cb>
    1d3b:	b9 d9 00 00 00       	mov    $0xd9,%ecx
    1d40:	31 c0                	xor    %eax,%eax
    1d42:	e8 79 f3 ff ff       	call   10c0 <fprintf@plt>
    1d47:	48 8d 1d 8e 14 00 00 	lea    0x148e(%rip),%rbx        # 31dc <_IO_stdin_used+0x1dc>
    1d4e:	66 90                	xchg   %ax,%ax
        printf("%s: Elapsed execution time: %f sec\n", testFunc[k].name, avgRuntime);
    1d50:	4b 8b 74 25 08       	mov    0x8(%r13,%r12,1),%rsi
    1d55:	0f 57 c0             	xorps  %xmm0,%xmm0
    1d58:	48 89 df             	mov    %rbx,%rdi
    1d5b:	b0 01                	mov    $0x1,%al
    1d5d:	e8 1e f3 ff ff       	call   1080 <printf@plt>
      for (int k = 0; k < numFunc; k++) {
    1d62:	49 83 c4 10          	add    $0x10,%r12
    1d66:	4d 39 e7             	cmp    %r12,%r15
    1d69:	75 e5                	jne    1d50 <test_correctness+0x190>
    1d6b:	e9 82 05 00 00       	jmp    22f2 <test_correctness+0x732>
    1d70:	85 db                	test   %ebx,%ebx
    for (int j = 0; j < R; j++) {
    1d72:	0f 8e 9b 06 00 00    	jle    2413 <test_correctness+0x853>
    1d78:	f3 0f 2a c3          	cvtsi2ss %ebx,%xmm0
    1d7c:	f3 0f 11 85 7c ff ff 	movss  %xmm0,-0x84(%rbp)
    1d83:	ff 
    1d84:	44 89 e0             	mov    %r12d,%eax
    1d87:	41 8d 4c 24 ff       	lea    -0x1(%r12),%ecx
    1d8c:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    1d93:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  for (int gen = 0;
    1d9a:	48 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%rax
    1da1:	00 
    1da2:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
           dataGen[gen].name, N);
    1da9:	48 8b 35 e8 32 00 00 	mov    0x32e8(%rip),%rsi        # 5098 <dataGen+0x8>
    printf("Generating %s array of %d elements\n",
    1db0:	48 8d 3d f0 13 00 00 	lea    0x13f0(%rip),%rdi        # 31a7 <_IO_stdin_used+0x1a7>
    1db7:	44 89 e2             	mov    %r12d,%edx
    1dba:	31 c0                	xor    %eax,%eax
    1dbc:	e8 bf f2 ff ff       	call   1080 <printf@plt>
    1dc1:	4c 89 ad 70 ff ff ff 	mov    %r13,-0x90(%rbp)
    for (int j = 0; j < R; j++) {
    1dc8:	49 8d 45 18          	lea    0x18(%r13),%rax
    1dcc:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    1dd3:	b8 01 00 00 00       	mov    $0x1,%eax
    1dd8:	31 c9                	xor    %ecx,%ecx
    1dda:	eb 28                	jmp    1e04 <test_correctness+0x244>
    1ddc:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%rbp)
    1de3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1dea:	84 00 00 00 00 00 
    1df0:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
    1df3:	ff c1                	inc    %ecx
    1df5:	3b 4d 98             	cmp    -0x68(%rbp),%ecx
    1df8:	4d 89 f7             	mov    %r14,%r15
    1dfb:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    1dfe:	0f 84 4f 02 00 00    	je     2053 <test_correctness+0x493>
    1e04:	89 4d 9c             	mov    %ecx,-0x64(%rbp)
    1e07:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    1e0a:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
      dataGen[gen].generate(data, N);
    1e0e:	4c 89 ef             	mov    %r13,%rdi
    1e11:	44 89 e6             	mov    %r12d,%esi
    1e14:	ff 15 76 32 00 00    	call   *0x3276(%rip)        # 5090 <dataGen>
    1e1a:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    1e1e:	4c 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%r14
      if (printFlag) {
    1e25:	74 4e                	je     1e75 <test_correctness+0x2b5>
        printf("Data before sort\n");
    1e27:	48 8d 3d cc 14 00 00 	lea    0x14cc(%rip),%rdi        # 32fa <_IO_stdin_used+0x2fa>
    1e2e:	e8 1d f2 ff ff       	call   1050 <puts@plt>
    1e33:	45 85 e4             	test   %r12d,%r12d
    1e36:	4c 8d 3d 16 13 00 00 	lea    0x1316(%rip),%r15        # 3153 <_IO_stdin_used+0x153>
  for (int i = 0; i < N; i++) {
    1e3d:	7e 28                	jle    1e67 <test_correctness+0x2a7>
    1e3f:	31 db                	xor    %ebx,%ebx
    1e41:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1e48:	0f 1f 84 00 00 00 00 
    1e4f:	00 
    printf("%d ", data[i]);
    1e50:	41 8b 74 9d 00       	mov    0x0(%r13,%rbx,4),%esi
    1e55:	4c 89 ff             	mov    %r15,%rdi
    1e58:	31 c0                	xor    %eax,%eax
    1e5a:	e8 21 f2 ff ff       	call   1080 <printf@plt>
  for (int i = 0; i < N; i++) {
    1e5f:	48 ff c3             	inc    %rbx
    1e62:	49 39 de             	cmp    %rbx,%r14
    1e65:	75 e9                	jne    1e50 <test_correctness+0x290>
  printf("\n");
    1e67:	bf 0a 00 00 00       	mov    $0xa,%edi
    1e6c:	e8 cf f1 ff ff       	call   1040 <putchar@plt>
    1e71:	4c 8b 7d 80          	mov    -0x80(%rbp),%r15
    1e75:	45 85 e4             	test   %r12d,%r12d
      for (int i = 0; i < N; i++) {
    1e78:	7e 12                	jle    1e8c <test_correctness+0x2cc>
        data_bcup[i] = data[i];
    1e7a:	4c 89 ff             	mov    %r15,%rdi
    1e7d:	4c 89 ee             	mov    %r13,%rsi
    1e80:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    1e87:	e8 54 f2 ff ff       	call   10e0 <memcpy@plt>
    1e8c:	4d 89 fe             	mov    %r15,%r14
  for (int i = 0; i < numFunc; i++) {
    1e8f:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
    1e93:	0f 8e 57 ff ff ff    	jle    1df0 <test_correctness+0x230>

// Return the current time.
static inline fasttime_t gettime(void) {
  struct timespec s;
#ifdef NDEBUG
  clock_gettime(CLOCK_MONOTONIC, &s);
    1e99:	bf 01 00 00 00       	mov    $0x1,%edi
    1e9e:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    1ea2:	e8 b9 f1 ff ff       	call   1060 <clock_gettime@plt>
#else
  int r = clock_gettime(CLOCK_MONOTONIC, &s);
  assert(r == 0);
#endif
  return s;
    1ea7:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
    1eab:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1eaf:	48 89 45 88          	mov    %rax,-0x78(%rbp)
        testFunc[k].func(data, 0, N - 1);
    1eb3:	4c 89 ef             	mov    %r13,%rdi
    1eb6:	31 f6                	xor    %esi,%esi
    1eb8:	4c 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%r15
    1ebf:	44 89 fa             	mov    %r15d,%edx
    1ec2:	4c 8b a5 70 ff ff ff 	mov    -0x90(%rbp),%r12
    1ec9:	41 ff 14 24          	call   *(%r12)
  clock_gettime(CLOCK_MONOTONIC, &s);
    1ecd:	bf 01 00 00 00       	mov    $0x1,%edi
    1ed2:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    1ed6:	e8 85 f1 ff ff       	call   1060 <clock_gettime@plt>
  return s;
    1edb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
}

// Return the time different between the start and the end, as a float
// in units of seconds.  This function does not need to be fast.
static inline double tdiff(fasttime_t start, fasttime_t end) {
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    1edf:	48 29 d8             	sub    %rbx,%rax
  return s;
    1ee2:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    1ee6:	0f 57 c0             	xorps  %xmm0,%xmm0
    1ee9:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1eee:	48 2b 4d 88          	sub    -0x78(%rbp),%rcx
    1ef2:	0f 57 c9             	xorps  %xmm1,%xmm1
    1ef5:	f2 48 0f 2a c9       	cvtsi2sd %rcx,%xmm1
    1efa:	f2 0f 59 0d 8e 14 00 	mulsd  0x148e(%rip),%xmm1        # 3390 <_IO_stdin_used+0x390>
    1f01:	00 
    1f02:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1f06:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
        sum_time[k] += tdiff(time1, time2);
    1f0a:	f3 0f 10 00          	movss  (%rax),%xmm0
    1f0e:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1f12:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1f16:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
    1f1a:	f3 0f 11 00          	movss  %xmm0,(%rax)
        success &= post_process(data, data_bcup, N, printFlag, testFunc[k].name, 0, N - 1);
    1f1e:	4d 8b 44 24 08       	mov    0x8(%r12),%r8
    1f23:	4c 8b 65 a0          	mov    -0x60(%rbp),%r12
    1f27:	48 83 ec 08          	sub    $0x8,%rsp
    1f2b:	4c 89 ef             	mov    %r13,%rdi
    1f2e:	4c 89 f6             	mov    %r14,%rsi
    1f31:	44 89 e2             	mov    %r12d,%edx
    1f34:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    1f37:	45 31 c9             	xor    %r9d,%r9d
    1f3a:	41 57                	push   %r15
    1f3c:	e8 ff f8 ff ff       	call   1840 <post_process>
    1f41:	48 83 c4 10          	add    $0x10,%rsp
        if (!success) {
    1f45:	85 45 d4             	test   %eax,-0x2c(%rbp)
    1f48:	0f 95 c0             	setne  %al
    1f4b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f50:	88 c1                	mov    %al,%cl
    1f52:	89 c8                	mov    %ecx,%eax
    1f54:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
    1f57:	0f 84 93 fe ff ff    	je     1df0 <test_correctness+0x230>
    1f5d:	83 7d d0 01          	cmpl   $0x1,-0x30(%rbp)
    1f61:	0f 84 89 fe ff ff    	je     1df0 <test_correctness+0x230>
    1f67:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f6d:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
    1f74:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    1f7b:	00 00 00 00 00 
  clock_gettime(CLOCK_MONOTONIC, &s);
    1f80:	bf 01 00 00 00       	mov    $0x1,%edi
    1f85:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    1f89:	e8 d2 f0 ff ff       	call   1060 <clock_gettime@plt>
  return s;
    1f8e:	4c 8b 75 b8          	mov    -0x48(%rbp),%r14
    1f92:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1f96:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    1f9a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    1fa1:	4c 8b 65 a8          	mov    -0x58(%rbp),%r12
        testFunc[k].func(data, 0, N - 1);
    1fa5:	4c 89 e7             	mov    %r12,%rdi
    1fa8:	31 f6                	xor    %esi,%esi
    1faa:	4c 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%r15
    1fb1:	44 89 fa             	mov    %r15d,%edx
    1fb4:	ff 53 f8             	call   *-0x8(%rbx)
  clock_gettime(CLOCK_MONOTONIC, &s);
    1fb7:	bf 01 00 00 00       	mov    $0x1,%edi
    1fbc:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    1fc0:	e8 9b f0 ff ff       	call   1060 <clock_gettime@plt>
  return s;
    1fc5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    1fc9:	4c 29 f0             	sub    %r14,%rax
  return s;
    1fcc:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    1fd0:	0f 57 c0             	xorps  %xmm0,%xmm0
    1fd3:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1fd8:	48 2b 4d 88          	sub    -0x78(%rbp),%rcx
    1fdc:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
    1fe0:	0f 57 c9             	xorps  %xmm1,%xmm1
    1fe3:	f2 48 0f 2a c9       	cvtsi2sd %rcx,%xmm1
    1fe8:	f2 0f 59 0d a0 13 00 	mulsd  0x13a0(%rip),%xmm1        # 3390 <_IO_stdin_used+0x390>
    1fef:	00 
    1ff0:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1ff4:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
        sum_time[k] += tdiff(time1, time2);
    1ff8:	f3 42 0f 10 04 a8    	movss  (%rax,%r13,4),%xmm0
    1ffe:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    2002:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2006:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
    200a:	f3 42 0f 11 04 a8    	movss  %xmm0,(%rax,%r13,4)
        success &= post_process(data, data_bcup, N, printFlag, testFunc[k].name, 0, N - 1);
    2010:	4c 8b 03             	mov    (%rbx),%r8
    2013:	48 83 ec 08          	sub    $0x8,%rsp
    2017:	4c 89 e7             	mov    %r12,%rdi
    201a:	4c 8b 65 a0          	mov    -0x60(%rbp),%r12
    201e:	49 89 f6             	mov    %rsi,%r14
    2021:	44 89 e2             	mov    %r12d,%edx
    2024:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2027:	45 31 c9             	xor    %r9d,%r9d
    202a:	41 57                	push   %r15
    202c:	e8 0f f8 ff ff       	call   1840 <post_process>
    2031:	48 83 c4 10          	add    $0x10,%rsp
        if (!success) {
    2035:	85 c0                	test   %eax,%eax
    2037:	0f 84 b3 fd ff ff    	je     1df0 <test_correctness+0x230>
      for (int k = 0; k < numFunc; k++) {
    203d:	49 ff c5             	inc    %r13
    2040:	48 83 c3 10          	add    $0x10,%rbx
    2044:	4c 39 6d 90          	cmp    %r13,-0x70(%rbp)
    2048:	0f 85 32 ff ff ff    	jne    1f80 <test_correctness+0x3c0>
    204e:	e9 89 fd ff ff       	jmp    1ddc <test_correctness+0x21c>
    if (success) {
    2053:	85 c0                	test   %eax,%eax
    2055:	4c 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%r14
    205c:	0f 85 b0 02 00 00    	jne    2312 <test_correctness+0x752>
           dataGen[gen].name, N);
    2062:	48 8b 35 3f 30 00 00 	mov    0x303f(%rip),%rsi        # 50a8 <dataGen+0x18>
    printf("Generating %s array of %d elements\n",
    2069:	48 8d 3d 37 11 00 00 	lea    0x1137(%rip),%rdi        # 31a7 <_IO_stdin_used+0x1a7>
    2070:	44 89 e2             	mov    %r12d,%edx
    2073:	31 c0                	xor    %eax,%eax
    2075:	e8 06 f0 ff ff       	call   1080 <printf@plt>
    for (int j = 0; j < R; j++) {
    207a:	49 8d 46 18          	lea    0x18(%r14),%rax
    207e:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    2085:	31 c0                	xor    %eax,%eax
    2087:	eb 1c                	jmp    20a5 <test_correctness+0x4e5>
    2089:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%rbp)
    2090:	8b 45 9c             	mov    -0x64(%rbp),%eax
    2093:	ff c0                	inc    %eax
    2095:	3b 45 98             	cmp    -0x68(%rbp),%eax
    2098:	4c 8b a5 70 ff ff ff 	mov    -0x90(%rbp),%r12
    209f:	0f 84 3b 02 00 00    	je     22e0 <test_correctness+0x720>
    20a5:	89 45 9c             	mov    %eax,-0x64(%rbp)
    20a8:	4c 8b 75 a8          	mov    -0x58(%rbp),%r14
      dataGen[gen].generate(data, N);
    20ac:	4c 89 f7             	mov    %r14,%rdi
    20af:	48 8b 5d a0          	mov    -0x60(%rbp),%rbx
    20b3:	89 de                	mov    %ebx,%esi
    20b5:	ff 15 e5 2f 00 00    	call   *0x2fe5(%rip)        # 50a0 <dataGen+0x10>
    20bb:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
      if (printFlag) {
    20bf:	74 53                	je     2114 <test_correctness+0x554>
        printf("Data before sort\n");
    20c1:	48 8d 3d 32 12 00 00 	lea    0x1232(%rip),%rdi        # 32fa <_IO_stdin_used+0x2fa>
    20c8:	e8 83 ef ff ff       	call   1050 <puts@plt>
    20cd:	85 db                	test   %ebx,%ebx
    20cf:	4c 8b ad 50 ff ff ff 	mov    -0xb0(%rbp),%r13
    20d6:	4c 8d 25 76 10 00 00 	lea    0x1076(%rip),%r12        # 3153 <_IO_stdin_used+0x153>
  for (int i = 0; i < N; i++) {
    20dd:	7e 27                	jle    2106 <test_correctness+0x546>
    20df:	31 db                	xor    %ebx,%ebx
    20e1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    20e8:	0f 1f 84 00 00 00 00 
    20ef:	00 
    printf("%d ", data[i]);
    20f0:	41 8b 34 9e          	mov    (%r14,%rbx,4),%esi
    20f4:	4c 89 e7             	mov    %r12,%rdi
    20f7:	31 c0                	xor    %eax,%eax
    20f9:	e8 82 ef ff ff       	call   1080 <printf@plt>
  for (int i = 0; i < N; i++) {
    20fe:	48 ff c3             	inc    %rbx
    2101:	49 39 dd             	cmp    %rbx,%r13
    2104:	75 ea                	jne    20f0 <test_correctness+0x530>
  printf("\n");
    2106:	bf 0a 00 00 00       	mov    $0xa,%edi
    210b:	e8 30 ef ff ff       	call   1040 <putchar@plt>
    2110:	48 8b 5d a0          	mov    -0x60(%rbp),%rbx
    2114:	85 db                	test   %ebx,%ebx
      for (int i = 0; i < N; i++) {
    2116:	7e 12                	jle    212a <test_correctness+0x56a>
        data_bcup[i] = data[i];
    2118:	4c 89 ff             	mov    %r15,%rdi
    211b:	4c 89 f6             	mov    %r14,%rsi
    211e:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    2125:	e8 b6 ef ff ff       	call   10e0 <memcpy@plt>
  for (int i = 0; i < numFunc; i++) {
    212a:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
      for (int k = 0; k < numFunc; k++) {
    212e:	0f 8e 5c ff ff ff    	jle    2090 <test_correctness+0x4d0>
  clock_gettime(CLOCK_MONOTONIC, &s);
    2134:	bf 01 00 00 00       	mov    $0x1,%edi
    2139:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    213d:	e8 1e ef ff ff       	call   1060 <clock_gettime@plt>
  return s;
    2142:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
    2146:	4c 8b 7d c0          	mov    -0x40(%rbp),%r15
    214a:	4c 8b 75 a8          	mov    -0x58(%rbp),%r14
        testFunc[k].func(data, 0, N - 1);
    214e:	4c 89 f7             	mov    %r14,%rdi
    2151:	31 f6                	xor    %esi,%esi
    2153:	4c 8b ad 68 ff ff ff 	mov    -0x98(%rbp),%r13
    215a:	44 89 ea             	mov    %r13d,%edx
    215d:	4c 8b a5 70 ff ff ff 	mov    -0x90(%rbp),%r12
    2164:	41 ff 14 24          	call   *(%r12)
  clock_gettime(CLOCK_MONOTONIC, &s);
    2168:	bf 01 00 00 00       	mov    $0x1,%edi
    216d:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    2171:	e8 ea ee ff ff       	call   1060 <clock_gettime@plt>
  return s;
    2176:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    217a:	48 29 d8             	sub    %rbx,%rax
  return s;
    217d:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    2181:	0f 57 c0             	xorps  %xmm0,%xmm0
    2184:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    2189:	4c 29 f9             	sub    %r15,%rcx
    218c:	4c 8b 7d 80          	mov    -0x80(%rbp),%r15
    2190:	0f 57 c9             	xorps  %xmm1,%xmm1
    2193:	f2 48 0f 2a c9       	cvtsi2sd %rcx,%xmm1
    2198:	f2 0f 59 0d f0 11 00 	mulsd  0x11f0(%rip),%xmm1        # 3390 <_IO_stdin_used+0x390>
    219f:	00 
    21a0:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    21a4:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
        sum_time[k] += tdiff(time1, time2);
    21a8:	f3 0f 10 00          	movss  (%rax),%xmm0
    21ac:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    21b0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    21b4:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
    21b8:	f3 0f 11 00          	movss  %xmm0,(%rax)
        success &= post_process(data, data_bcup, N, printFlag, testFunc[k].name, 0, N - 1);
    21bc:	4d 8b 44 24 08       	mov    0x8(%r12),%r8
    21c1:	48 83 ec 08          	sub    $0x8,%rsp
    21c5:	4c 89 f7             	mov    %r14,%rdi
    21c8:	4c 89 fe             	mov    %r15,%rsi
    21cb:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    21cf:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    21d2:	45 31 c9             	xor    %r9d,%r9d
    21d5:	41 55                	push   %r13
    21d7:	e8 64 f6 ff ff       	call   1840 <post_process>
    21dc:	48 83 c4 10          	add    $0x10,%rsp
        if (!success) {
    21e0:	85 45 d4             	test   %eax,-0x2c(%rbp)
    21e3:	0f 95 c0             	setne  %al
    21e6:	b9 00 00 00 00       	mov    $0x0,%ecx
    21eb:	88 c1                	mov    %al,%cl
    21ed:	89 c8                	mov    %ecx,%eax
    21ef:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
    21f2:	0f 84 98 fe ff ff    	je     2090 <test_correctness+0x4d0>
    21f8:	83 7d d0 01          	cmpl   $0x1,-0x30(%rbp)
    21fc:	0f 84 8e fe ff ff    	je     2090 <test_correctness+0x4d0>
    2202:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2208:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
    220f:	90                   	nop
  clock_gettime(CLOCK_MONOTONIC, &s);
    2210:	bf 01 00 00 00       	mov    $0x1,%edi
    2215:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    2219:	e8 42 ee ff ff       	call   1060 <clock_gettime@plt>
  return s;
    221e:	4c 8b 7d b8          	mov    -0x48(%rbp),%r15
    2222:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2226:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    222a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    2231:	4c 8b 65 a8          	mov    -0x58(%rbp),%r12
        testFunc[k].func(data, 0, N - 1);
    2235:	4c 89 e7             	mov    %r12,%rdi
    2238:	31 f6                	xor    %esi,%esi
    223a:	4c 8b b5 68 ff ff ff 	mov    -0x98(%rbp),%r14
    2241:	44 89 f2             	mov    %r14d,%edx
    2244:	ff 53 f8             	call   *-0x8(%rbx)
  clock_gettime(CLOCK_MONOTONIC, &s);
    2247:	bf 01 00 00 00       	mov    $0x1,%edi
    224c:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    2250:	e8 0b ee ff ff       	call   1060 <clock_gettime@plt>
  return s;
    2255:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    2259:	4c 29 f8             	sub    %r15,%rax
    225c:	4c 8b 7d 80          	mov    -0x80(%rbp),%r15
  return s;
    2260:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  return end.tv_sec - start.tv_sec + 1e-9 * (end.tv_nsec - start.tv_nsec);
    2264:	0f 57 c0             	xorps  %xmm0,%xmm0
    2267:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    226c:	48 2b 4d 88          	sub    -0x78(%rbp),%rcx
    2270:	0f 57 c9             	xorps  %xmm1,%xmm1
    2273:	f2 48 0f 2a c9       	cvtsi2sd %rcx,%xmm1
    2278:	f2 0f 59 0d 10 11 00 	mulsd  0x1110(%rip),%xmm1        # 3390 <_IO_stdin_used+0x390>
    227f:	00 
    2280:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    2284:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
        sum_time[k] += tdiff(time1, time2);
    2288:	f3 42 0f 10 04 a8    	movss  (%rax,%r13,4),%xmm0
    228e:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    2292:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2296:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
    229a:	f3 42 0f 11 04 a8    	movss  %xmm0,(%rax,%r13,4)
        success &= post_process(data, data_bcup, N, printFlag, testFunc[k].name, 0, N - 1);
    22a0:	4c 8b 03             	mov    (%rbx),%r8
    22a3:	48 83 ec 08          	sub    $0x8,%rsp
    22a7:	4c 89 e7             	mov    %r12,%rdi
    22aa:	4c 89 fe             	mov    %r15,%rsi
    22ad:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    22b1:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    22b4:	45 31 c9             	xor    %r9d,%r9d
    22b7:	41 56                	push   %r14
    22b9:	e8 82 f5 ff ff       	call   1840 <post_process>
    22be:	48 83 c4 10          	add    $0x10,%rsp
        if (!success) {
    22c2:	85 c0                	test   %eax,%eax
    22c4:	0f 84 c6 fd ff ff    	je     2090 <test_correctness+0x4d0>
      for (int k = 0; k < numFunc; k++) {
    22ca:	49 ff c5             	inc    %r13
    22cd:	48 83 c3 10          	add    $0x10,%rbx
    22d1:	4c 39 6d 90          	cmp    %r13,-0x70(%rbp)
    22d5:	0f 85 35 ff ff ff    	jne    2210 <test_correctness+0x650>
    22db:	e9 a9 fd ff ff       	jmp    2089 <test_correctness+0x4c9>
    if (success) {
    22e0:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    22e4:	4c 8b 75 a8          	mov    -0x58(%rbp),%r14
    22e8:	4c 8b 6d 90          	mov    -0x70(%rbp),%r13
    22ec:	0f 85 a5 00 00 00    	jne    2397 <test_correctness+0x7d7>
  free(data);
    22f2:	4c 89 f7             	mov    %r14,%rdi
    22f5:	e8 36 ed ff ff       	call   1030 <free@plt>
    22fa:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  free(data_bcup);
    22fe:	e8 2d ed ff ff       	call   1030 <free@plt>
}
    2303:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    2307:	5b                   	pop    %rbx
    2308:	41 5c                	pop    %r12
    230a:	41 5d                	pop    %r13
    230c:	41 5e                	pop    %r14
    230e:	41 5f                	pop    %r15
    2310:	5d                   	pop    %rbp
    2311:	c3                   	ret
      printf("Arrays are sorted: yes\n");
    2312:	48 8d 3d ca 0f 00 00 	lea    0xfca(%rip),%rdi        # 32e3 <_IO_stdin_used+0x2e3>
    2319:	e8 32 ed ff ff       	call   1050 <puts@plt>
      TEST_PASS();
    231e:	48 8b 05 b3 2c 00 00 	mov    0x2cb3(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    2325:	48 8b 38             	mov    (%rax),%rdi
    2328:	48 8d 35 bf 0d 00 00 	lea    0xdbf(%rip),%rsi        # 30ee <_IO_stdin_used+0xee>
    232f:	48 8d 15 95 0e 00 00 	lea    0xe95(%rip),%rdx        # 31cb <_IO_stdin_used+0x1cb>
    2336:	b9 d9 00 00 00       	mov    $0xd9,%ecx
    233b:	31 c0                	xor    %eax,%eax
    233d:	e8 7e ed ff ff       	call   10c0 <fprintf@plt>
  for (int i = 0; i < numFunc; i++) {
    2342:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
      for (int k = 0; k < numFunc; k++) {
    2346:	0f 8e 16 fd ff ff    	jle    2062 <test_correctness+0x4a2>
    234c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    2350:	48 8d 1c 85 00 00 00 	lea    0x0(,%rax,4),%rbx
    2357:	00 
    2358:	45 31 ed             	xor    %r13d,%r13d
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2360:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
        float avgRuntime = R > 0 ? sum_time[k] / R : 0;
    2364:	f3 42 0f 10 04 28    	movss  (%rax,%r13,1),%xmm0
    236a:	f3 0f 5e 85 7c ff ff 	divss  -0x84(%rbp),%xmm0
    2371:	ff 
        printf("%s: Elapsed execution time: %f sec\n", testFunc[k].name, avgRuntime);
    2372:	4b 8b 74 ae 08       	mov    0x8(%r14,%r13,4),%rsi
    2377:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    237b:	48 8d 3d 5a 0e 00 00 	lea    0xe5a(%rip),%rdi        # 31dc <_IO_stdin_used+0x1dc>
    2382:	b0 01                	mov    $0x1,%al
    2384:	e8 f7 ec ff ff       	call   1080 <printf@plt>
      for (int k = 0; k < numFunc; k++) {
    2389:	49 83 c5 04          	add    $0x4,%r13
    238d:	4c 39 eb             	cmp    %r13,%rbx
    2390:	75 ce                	jne    2360 <test_correctness+0x7a0>
    2392:	e9 cb fc ff ff       	jmp    2062 <test_correctness+0x4a2>
      printf("Arrays are sorted: yes\n");
    2397:	48 8d 3d 45 0f 00 00 	lea    0xf45(%rip),%rdi        # 32e3 <_IO_stdin_used+0x2e3>
    239e:	e8 ad ec ff ff       	call   1050 <puts@plt>
      TEST_PASS();
    23a3:	48 8b 05 2e 2c 00 00 	mov    0x2c2e(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    23aa:	48 8b 38             	mov    (%rax),%rdi
    23ad:	48 8d 35 3a 0d 00 00 	lea    0xd3a(%rip),%rsi        # 30ee <_IO_stdin_used+0xee>
    23b4:	48 8d 15 10 0e 00 00 	lea    0xe10(%rip),%rdx        # 31cb <_IO_stdin_used+0x1cb>
    23bb:	b9 d9 00 00 00       	mov    $0xd9,%ecx
    23c0:	31 c0                	xor    %eax,%eax
    23c2:	e8 f9 ec ff ff       	call   10c0 <fprintf@plt>
  for (int i = 0; i < numFunc; i++) {
    23c7:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
      for (int k = 0; k < numFunc; k++) {
    23cb:	0f 8e 21 ff ff ff    	jle    22f2 <test_correctness+0x732>
    23d1:	49 c1 e5 02          	shl    $0x2,%r13
    23d5:	45 31 ff             	xor    %r15d,%r15d
    23d8:	48 8d 1d fd 0d 00 00 	lea    0xdfd(%rip),%rbx        # 31dc <_IO_stdin_used+0x1dc>
    23df:	90                   	nop
    23e0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
        float avgRuntime = R > 0 ? sum_time[k] / R : 0;
    23e4:	f3 42 0f 10 04 38    	movss  (%rax,%r15,1),%xmm0
    23ea:	f3 0f 5e 85 7c ff ff 	divss  -0x84(%rbp),%xmm0
    23f1:	ff 
        printf("%s: Elapsed execution time: %f sec\n", testFunc[k].name, avgRuntime);
    23f2:	4b 8b 74 bc 08       	mov    0x8(%r12,%r15,4),%rsi
    23f7:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    23fb:	48 89 df             	mov    %rbx,%rdi
    23fe:	b0 01                	mov    $0x1,%al
    2400:	e8 7b ec ff ff       	call   1080 <printf@plt>
      for (int k = 0; k < numFunc; k++) {
    2405:	49 83 c7 04          	add    $0x4,%r15
    2409:	4d 39 fd             	cmp    %r15,%r13
    240c:	75 d2                	jne    23e0 <test_correctness+0x820>
    240e:	e9 df fe ff ff       	jmp    22f2 <test_correctness+0x732>
           dataGen[gen].name, N);
    2413:	48 8b 35 7e 2c 00 00 	mov    0x2c7e(%rip),%rsi        # 5098 <dataGen+0x8>
    printf("Generating %s array of %d elements\n",
    241a:	48 8d 3d 86 0d 00 00 	lea    0xd86(%rip),%rdi        # 31a7 <_IO_stdin_used+0x1a7>
    2421:	44 89 e2             	mov    %r12d,%edx
    2424:	31 c0                	xor    %eax,%eax
    2426:	e8 55 ec ff ff       	call   1080 <printf@plt>
      printf("Arrays are sorted: yes\n");
    242b:	4c 8d 3d b1 0e 00 00 	lea    0xeb1(%rip),%r15        # 32e3 <_IO_stdin_used+0x2e3>
    2432:	4c 89 ff             	mov    %r15,%rdi
    2435:	e8 16 ec ff ff       	call   1050 <puts@plt>
      TEST_PASS();
    243a:	4c 8b 35 97 2b 00 00 	mov    0x2b97(%rip),%r14        # 4fd8 <stderr@GLIBC_2.2.5>
    2441:	49 8b 3e             	mov    (%r14),%rdi
    2444:	48 8d 1d a3 0c 00 00 	lea    0xca3(%rip),%rbx        # 30ee <_IO_stdin_used+0xee>
    244b:	4c 8d 2d 79 0d 00 00 	lea    0xd79(%rip),%r13        # 31cb <_IO_stdin_used+0x1cb>
    2452:	48 89 de             	mov    %rbx,%rsi
    2455:	4c 89 ea             	mov    %r13,%rdx
    2458:	b9 d9 00 00 00       	mov    $0xd9,%ecx
    245d:	31 c0                	xor    %eax,%eax
    245f:	e8 5c ec ff ff       	call   10c0 <fprintf@plt>
           dataGen[gen].name, N);
    2464:	48 8b 35 3d 2c 00 00 	mov    0x2c3d(%rip),%rsi        # 50a8 <dataGen+0x18>
    printf("Generating %s array of %d elements\n",
    246b:	48 8d 3d 35 0d 00 00 	lea    0xd35(%rip),%rdi        # 31a7 <_IO_stdin_used+0x1a7>
    2472:	44 89 e2             	mov    %r12d,%edx
    2475:	31 c0                	xor    %eax,%eax
    2477:	e8 04 ec ff ff       	call   1080 <printf@plt>
      printf("Arrays are sorted: yes\n");
    247c:	4c 89 ff             	mov    %r15,%rdi
    247f:	e8 cc eb ff ff       	call   1050 <puts@plt>
      TEST_PASS();
    2484:	49 8b 3e             	mov    (%r14),%rdi
    2487:	48 89 de             	mov    %rbx,%rsi
    248a:	4c 89 ea             	mov    %r13,%rdx
    248d:	4c 8b 75 a8          	mov    -0x58(%rbp),%r14
    2491:	b9 d9 00 00 00       	mov    $0xd9,%ecx
    2496:	31 c0                	xor    %eax,%eax
    2498:	e8 23 ec ff ff       	call   10c0 <fprintf@plt>
    249d:	e9 50 fe ff ff       	jmp    22f2 <test_correctness+0x732>
    printf("Error: not enough memory\n");
    24a2:	48 8d 3d 62 0e 00 00 	lea    0xe62(%rip),%rdi        # 330b <_IO_stdin_used+0x30b>
    24a9:	e8 a2 eb ff ff       	call   1050 <puts@plt>
    free(data);
    24ae:	4c 89 f7             	mov    %r14,%rdi
    24b1:	e8 7a eb ff ff       	call   1030 <free@plt>
    free(data_bcup);
    24b6:	4c 89 ff             	mov    %r15,%rdi
    24b9:	e8 72 eb ff ff       	call   1030 <free@plt>
    exit(-1);
    24be:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    24c3:	e8 48 ec ff ff       	call   1110 <exit@plt>
    24c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    24cf:	00 

00000000000024d0 <test_zero_element>:
                              struct testFunc_t* testFunc, int numFunc) {
    24d0:	55                   	push   %rbp
    24d1:	41 57                	push   %r15
    24d3:	41 56                	push   %r14
    24d5:	41 55                	push   %r13
    24d7:	41 54                	push   %r12
    24d9:	53                   	push   %rbx
    24da:	48 83 ec 18          	sub    $0x18,%rsp
  for (int i = 0; i < numFunc; i++) {
    24de:	45 85 c0             	test   %r8d,%r8d
    24e1:	0f 8e f3 00 00 00    	jle    25da <test_zero_element+0x10a>
    24e7:	48 89 cb             	mov    %rcx,%rbx
    24ea:	4c 8d 74 24 0c       	lea    0xc(%rsp),%r14
    24ef:	45 89 c4             	mov    %r8d,%r12d
    24f2:	49 f7 dc             	neg    %r12
    24f5:	48 83 c3 08          	add    $0x8,%rbx
    24f9:	31 ed                	xor    %ebp,%ebp
    24fb:	45 31 ff             	xor    %r15d,%r15d
    24fe:	66 90                	xchg   %ax,%ax
    2500:	49 8d 47 01          	lea    0x1(%r15),%rax
    2504:	49 c1 e7 04          	shl    $0x4,%r15
    2508:	49 01 df             	add    %rbx,%r15
    250b:	4d 89 fd             	mov    %r15,%r13
    250e:	49 89 c7             	mov    %rax,%r15
    2511:	eb 21                	jmp    2534 <test_zero_element+0x64>
    2513:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    251a:	84 00 00 00 00 00 
    2520:	49 83 c5 10          	add    $0x10,%r13
    2524:	4b 8d 04 3c          	lea    (%r12,%r15,1),%rax
    2528:	48 ff c0             	inc    %rax
    252b:	49 ff c7             	inc    %r15
    252e:	48 83 f8 01          	cmp    $0x1,%rax
    2532:	74 54                	je     2588 <test_zero_element+0xb8>
    data_t data[] = {0, 0, 0};
    2534:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    253b:	00 
    253c:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2543:	00 00 
    testFunc[i].func(&data[1], 0, 0);
    2545:	4c 89 f7             	mov    %r14,%rdi
    2548:	31 f6                	xor    %esi,%esi
    254a:	31 d2                	xor    %edx,%edx
    254c:	41 ff 55 f8          	call   *-0x8(%r13)
    if (data[0] != 0 && data[1] != 0 && data[2] != 0) {
    2550:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
    2555:	74 c9                	je     2520 <test_zero_element+0x50>
    2557:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
    255c:	74 c2                	je     2520 <test_zero_element+0x50>
    255e:	83 7c 24 10 00       	cmpl   $0x0,0x10(%rsp)
    2563:	74 bb                	je     2520 <test_zero_element+0x50>
             testFunc[i].name);
    2565:	49 8b 75 00          	mov    0x0(%r13),%rsi
      printf("Error: %s failed to sort array with zero element\n",
    2569:	48 8d 3d 90 0c 00 00 	lea    0xc90(%rip),%rdi        # 3200 <_IO_stdin_used+0x200>
    2570:	31 c0                	xor    %eax,%eax
    2572:	e8 09 eb ff ff       	call   1080 <printf@plt>
    2577:	40 b5 01             	mov    $0x1,%bpl
  for (int i = 0; i < numFunc; i++) {
    257a:	4c 89 e0             	mov    %r12,%rax
    257d:	4c 01 f8             	add    %r15,%rax
    2580:	0f 85 7a ff ff ff    	jne    2500 <test_zero_element+0x30>
    2586:	eb 06                	jmp    258e <test_zero_element+0xbe>
  if (success) {
    2588:	40 f6 c5 01          	test   $0x1,%bpl
    258c:	74 4c                	je     25da <test_zero_element+0x10a>
    TEST_FAIL("Sorting array with zero element failed");
    258e:	48 8b 1d 43 2a 00 00 	mov    0x2a43(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    2595:	48 8b 3b             	mov    (%rbx),%rdi
    2598:	48 8d 35 77 0b 00 00 	lea    0xb77(%rip),%rsi        # 3116 <_IO_stdin_used+0x116>
    259f:	48 8d 15 8c 0c 00 00 	lea    0xc8c(%rip),%rdx        # 3232 <_IO_stdin_used+0x232>
    25a6:	b9 f7 00 00 00       	mov    $0xf7,%ecx
    25ab:	31 c0                	xor    %eax,%eax
    25ad:	e8 0e eb ff ff       	call   10c0 <fprintf@plt>
    25b2:	48 8b 0b             	mov    (%rbx),%rcx
    25b5:	48 8d 3d 88 0c 00 00 	lea    0xc88(%rip),%rdi        # 3244 <_IO_stdin_used+0x244>
    25bc:	be 26 00 00 00       	mov    $0x26,%esi
    25c1:	ba 01 00 00 00       	mov    $0x1,%edx
    25c6:	e8 55 eb ff ff       	call   1120 <fwrite@plt>
    25cb:	48 8b 33             	mov    (%rbx),%rsi
    25ce:	bf 0a 00 00 00       	mov    $0xa,%edi
    25d3:	e8 c8 ea ff ff       	call   10a0 <fputc@plt>
    25d8:	eb 24                	jmp    25fe <test_zero_element+0x12e>
    TEST_PASS();
    25da:	48 8b 05 f7 29 00 00 	mov    0x29f7(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    25e1:	48 8b 38             	mov    (%rax),%rdi
    25e4:	48 8d 35 03 0b 00 00 	lea    0xb03(%rip),%rsi        # 30ee <_IO_stdin_used+0xee>
    25eb:	48 8d 15 40 0c 00 00 	lea    0xc40(%rip),%rdx        # 3232 <_IO_stdin_used+0x232>
    25f2:	b9 f5 00 00 00       	mov    $0xf5,%ecx
    25f7:	31 c0                	xor    %eax,%eax
    25f9:	e8 c2 ea ff ff       	call   10c0 <fprintf@plt>
}
    25fe:	48 83 c4 18          	add    $0x18,%rsp
    2602:	5b                   	pop    %rbx
    2603:	41 5c                	pop    %r12
    2605:	41 5d                	pop    %r13
    2607:	41 5e                	pop    %r14
    2609:	41 5f                	pop    %r15
    260b:	5d                   	pop    %rbp
    260c:	c3                   	ret
    260d:	0f 1f 00             	nopl   (%rax)

0000000000002610 <test_one_element>:
                             struct testFunc_t* testFunc, int numFunc) {
    2610:	55                   	push   %rbp
    2611:	41 57                	push   %r15
    2613:	41 56                	push   %r14
    2615:	41 55                	push   %r13
    2617:	41 54                	push   %r12
    2619:	53                   	push   %rbx
    261a:	48 83 ec 18          	sub    $0x18,%rsp
    261e:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  for (int i = 0; i < numFunc; i++) {
    2623:	45 85 c0             	test   %r8d,%r8d
    2626:	0f 8e ec 00 00 00    	jle    2718 <test_one_element+0x108>
    262c:	4c 8d 74 24 04       	lea    0x4(%rsp),%r14
    2631:	45 89 c4             	mov    %r8d,%r12d
    2634:	49 f7 dc             	neg    %r12
    2637:	48 83 44 24 10 08    	addq   $0x8,0x10(%rsp)
    263d:	45 31 ff             	xor    %r15d,%r15d
    2640:	49 bd 00 00 00 00 01 	movabs $0x100000000,%r13
    2647:	00 00 00 
    264a:	31 db                	xor    %ebx,%ebx
    264c:	0f 1f 40 00          	nopl   0x0(%rax)
    2650:	48 8d 43 01          	lea    0x1(%rbx),%rax
    2654:	48 c1 e3 04          	shl    $0x4,%rbx
    2658:	48 03 5c 24 10       	add    0x10(%rsp),%rbx
    265d:	48 89 dd             	mov    %rbx,%rbp
    2660:	48 89 c3             	mov    %rax,%rbx
    2663:	eb 1f                	jmp    2684 <test_one_element+0x74>
    2665:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    266c:	00 00 00 00 
    2670:	48 83 c5 10          	add    $0x10,%rbp
    2674:	49 8d 04 1c          	lea    (%r12,%rbx,1),%rax
    2678:	48 ff c0             	inc    %rax
    267b:	48 ff c3             	inc    %rbx
    267e:	48 83 f8 01          	cmp    $0x1,%rax
    2682:	74 42                	je     26c6 <test_one_element+0xb6>
    data_t data[] = {0, 1, 0};
    2684:	4c 89 2c 24          	mov    %r13,(%rsp)
    2688:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
    268f:	00 
    testFunc[i].func(&data[1], 0, 0);
    2690:	4c 89 f7             	mov    %r14,%rdi
    2693:	31 f6                	xor    %esi,%esi
    2695:	31 d2                	xor    %edx,%edx
    2697:	ff 55 f8             	call   *-0x8(%rbp)
    if (data[0] != 0 && data[2] != 0) {
    269a:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    269e:	74 d0                	je     2670 <test_one_element+0x60>
    26a0:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
    26a5:	74 c9                	je     2670 <test_one_element+0x60>
             testFunc[i].name);
    26a7:	48 8b 75 00          	mov    0x0(%rbp),%rsi
      printf("Error: %s failed to sort array with one element\n",
    26ab:	48 8d 3d b9 0b 00 00 	lea    0xbb9(%rip),%rdi        # 326b <_IO_stdin_used+0x26b>
    26b2:	31 c0                	xor    %eax,%eax
    26b4:	e8 c7 e9 ff ff       	call   1080 <printf@plt>
    26b9:	41 b7 01             	mov    $0x1,%r15b
  for (int i = 0; i < numFunc; i++) {
    26bc:	4c 89 e0             	mov    %r12,%rax
    26bf:	48 01 d8             	add    %rbx,%rax
    26c2:	75 8c                	jne    2650 <test_one_element+0x40>
    26c4:	eb 06                	jmp    26cc <test_one_element+0xbc>
  if (success) {
    26c6:	41 f6 c7 01          	test   $0x1,%r15b
    26ca:	74 4c                	je     2718 <test_one_element+0x108>
    TEST_FAIL("Sorting array with one element failed");
    26cc:	48 8b 1d 05 29 00 00 	mov    0x2905(%rip),%rbx        # 4fd8 <stderr@GLIBC_2.2.5>
    26d3:	48 8b 3b             	mov    (%rbx),%rdi
    26d6:	48 8d 35 39 0a 00 00 	lea    0xa39(%rip),%rsi        # 3116 <_IO_stdin_used+0x116>
    26dd:	48 8d 15 b8 0b 00 00 	lea    0xbb8(%rip),%rdx        # 329c <_IO_stdin_used+0x29c>
    26e4:	b9 0c 01 00 00       	mov    $0x10c,%ecx
    26e9:	31 c0                	xor    %eax,%eax
    26eb:	e8 d0 e9 ff ff       	call   10c0 <fprintf@plt>
    26f0:	48 8b 0b             	mov    (%rbx),%rcx
    26f3:	48 8d 3d b3 0b 00 00 	lea    0xbb3(%rip),%rdi        # 32ad <_IO_stdin_used+0x2ad>
    26fa:	be 25 00 00 00       	mov    $0x25,%esi
    26ff:	ba 01 00 00 00       	mov    $0x1,%edx
    2704:	e8 17 ea ff ff       	call   1120 <fwrite@plt>
    2709:	48 8b 33             	mov    (%rbx),%rsi
    270c:	bf 0a 00 00 00       	mov    $0xa,%edi
    2711:	e8 8a e9 ff ff       	call   10a0 <fputc@plt>
    2716:	eb 24                	jmp    273c <test_one_element+0x12c>
    TEST_PASS();
    2718:	48 8b 05 b9 28 00 00 	mov    0x28b9(%rip),%rax        # 4fd8 <stderr@GLIBC_2.2.5>
    271f:	48 8b 38             	mov    (%rax),%rdi
    2722:	48 8d 35 c5 09 00 00 	lea    0x9c5(%rip),%rsi        # 30ee <_IO_stdin_used+0xee>
    2729:	48 8d 15 6c 0b 00 00 	lea    0xb6c(%rip),%rdx        # 329c <_IO_stdin_used+0x29c>
    2730:	b9 0a 01 00 00       	mov    $0x10a,%ecx
    2735:	31 c0                	xor    %eax,%eax
    2737:	e8 84 e9 ff ff       	call   10c0 <fprintf@plt>
}
    273c:	48 83 c4 18          	add    $0x18,%rsp
    2740:	5b                   	pop    %rbx
    2741:	41 5c                	pop    %r12
    2743:	41 5d                	pop    %r13
    2745:	41 5e                	pop    %r14
    2747:	41 5f                	pop    %r15
    2749:	5d                   	pop    %rbp
    274a:	c3                   	ret
    274b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002750 <mem_alloc>:


#include "./util.h"


void mem_alloc(data_t** space, int size) {
    2750:	53                   	push   %rbx
    2751:	48 89 fb             	mov    %rdi,%rbx
  *space = (data_t*) malloc(sizeof(data_t) * size);
    2754:	48 63 fe             	movslq %esi,%rdi
    2757:	48 c1 e7 02          	shl    $0x2,%rdi
    275b:	e8 90 e9 ff ff       	call   10f0 <malloc@plt>
    2760:	48 89 03             	mov    %rax,(%rbx)
  if (*space == NULL) {
    2763:	48 85 c0             	test   %rax,%rax
    2766:	74 02                	je     276a <mem_alloc+0x1a>
    printf("out of memory...\n");
  }
}
    2768:	5b                   	pop    %rbx
    2769:	c3                   	ret
    printf("out of memory...\n");
    276a:	48 8d 3d b3 0b 00 00 	lea    0xbb3(%rip),%rdi        # 3324 <_IO_stdin_used+0x324>
    2771:	5b                   	pop    %rbx
    2772:	e9 d9 e8 ff ff       	jmp    1050 <puts@plt>
    2777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    277e:	00 00 

0000000000002780 <mem_free>:

void mem_free(data_t** space) {
    2780:	53                   	push   %rbx
    2781:	48 89 fb             	mov    %rdi,%rbx
  free(*space);
    2784:	48 8b 3f             	mov    (%rdi),%rdi
    2787:	e8 a4 e8 ff ff       	call   1030 <free@plt>
  *space = 0;
    278c:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
}
    2793:	5b                   	pop    %rbx
    2794:	c3                   	ret
    2795:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    279c:	00 00 00 
    279f:	90                   	nop

00000000000027a0 <isort>:
    27a0:	48 8d 57 04          	lea    0x4(%rdi),%rdx
typedef uint32_t data_t;

// Insertion sort, sorting the array between begin and end, inclusive
void isort(data_t* begin, data_t* end) {
  data_t* cur = begin + 1;
  while (cur <= end) {
    27a4:	48 39 f2             	cmp    %rsi,%rdx
    27a7:	76 01                	jbe    27aa <isort+0xa>
    }

    *(index + 1) = val;
    cur++;
  }
}
    27a9:	c3                   	ret
    27aa:	48 89 f8             	mov    %rdi,%rax
    27ad:	eb 0d                	jmp    27bc <isort+0x1c>
    27af:	90                   	nop
    *(index + 1) = val;
    27b0:	89 51 04             	mov    %edx,0x4(%rcx)
    27b3:	48 8d 50 04          	lea    0x4(%rax),%rdx
  while (cur <= end) {
    27b7:	48 39 f2             	cmp    %rsi,%rdx
    27ba:	77 ed                	ja     27a9 <isort+0x9>
    27bc:	48 89 c1             	mov    %rax,%rcx
    27bf:	48 89 d0             	mov    %rdx,%rax
    data_t val = *cur;
    27c2:	8b 51 04             	mov    0x4(%rcx),%edx
    while (index >= begin && *index > val) {
    27c5:	48 39 f9             	cmp    %rdi,%rcx
    27c8:	72 e6                	jb     27b0 <isort+0x10>
    27ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    27d0:	44 8b 01             	mov    (%rcx),%r8d
    27d3:	41 39 d0             	cmp    %edx,%r8d
    27d6:	76 d8                	jbe    27b0 <isort+0x10>
      *(index + 1) = *index;
    27d8:	44 89 41 04          	mov    %r8d,0x4(%rcx)
      index--;
    27dc:	48 83 c1 fc          	add    $0xfffffffffffffffc,%rcx
    while (index >= begin && *index > val) {
    27e0:	48 39 f9             	cmp    %rdi,%rcx
    27e3:	73 eb                	jae    27d0 <isort+0x30>
    27e5:	eb c9                	jmp    27b0 <isort+0x10>
    27e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    27ee:	00 00 

00000000000027f0 <sort_a>:
static void copy_a(data_t* source, data_t* dest, int n);

// A basic merge sort routine that sorts the subarray A[p..r]
void sort_a(data_t* A, int p, int r) {
  assert(A);
  if (p < r) {
    27f0:	39 d6                	cmp    %edx,%esi
    27f2:	0f 8d 40 03 00 00    	jge    2b38 <sort_a+0x348>
    27f8:	55                   	push   %rbp
    27f9:	41 57                	push   %r15
    27fb:	41 56                	push   %r14
    27fd:	41 55                	push   %r13
    27ff:	41 54                	push   %r12
    2801:	53                   	push   %rbx
    2802:	48 83 ec 18          	sub    $0x18,%rsp
    2806:	41 89 d6             	mov    %edx,%r14d
    2809:	41 89 f7             	mov    %esi,%r15d
    280c:	48 89 fb             	mov    %rdi,%rbx
    int q = (p + r) / 2;
    280f:	43 8d 04 3e          	lea    (%r14,%r15,1),%eax
    2813:	41 89 c4             	mov    %eax,%r12d
    2816:	41 c1 ec 1f          	shr    $0x1f,%r12d
    281a:	41 01 c4             	add    %eax,%r12d
    281d:	41 d1 fc             	sar    $1,%r12d
    sort_a(A, p, q);
    2820:	44 89 e2             	mov    %r12d,%edx
    2823:	e8 c8 ff ff ff       	call   27f0 <sort_a>
    sort_a(A, q + 1, r);
    2828:	41 8d 74 24 01       	lea    0x1(%r12),%esi
    282d:	48 89 df             	mov    %rbx,%rdi
    2830:	44 89 f2             	mov    %r14d,%edx
    2833:	e8 b8 ff ff ff       	call   27f0 <sort_a>
// Uses two arrays 'left' and 'right' in the merge operation.
static void merge_a(data_t* A, int p, int q, int r) {
  assert(A);
  assert(p <= q);
  assert((q + 1) <= r);
  int n1 = q - p + 1;
    2838:	44 89 e5             	mov    %r12d,%ebp
    283b:	44 29 fd             	sub    %r15d,%ebp
  int n2 = r - q;
    283e:	45 89 f5             	mov    %r14d,%r13d
    2841:	45 29 e5             	sub    %r12d,%r13d

  data_t* left = 0, * right = 0;
    2844:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    284b:	00 00 
    284d:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2854:	00 00 
  mem_alloc(&left, n1 + 1);
    2856:	8d 75 02             	lea    0x2(%rbp),%esi
    2859:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    285e:	e8 ed fe ff ff       	call   2750 <mem_alloc>
  mem_alloc(&right, n2 + 1);
    2863:	41 8d 75 01          	lea    0x1(%r13),%esi
    2867:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    286c:	e8 df fe ff ff       	call   2750 <mem_alloc>
  if (left == NULL || right == NULL) {
    2871:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    2876:	48 85 c0             	test   %rax,%rax
    2879:	0f 84 97 02 00 00    	je     2b16 <sort_a+0x326>
    287f:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    2884:	48 85 c9             	test   %rcx,%rcx
    2887:	0f 84 89 02 00 00    	je     2b16 <sort_a+0x326>
  int n1 = q - p + 1;
    288d:	8d 75 01             	lea    0x1(%rbp),%esi
    mem_free(&left);
    mem_free(&right);
    return;
  }

  copy_a(&(A[p]), left, n1);
    2890:	49 63 d7             	movslq %r15d,%rdx

static void copy_a(data_t* source, data_t* dest, int n) {
  assert(dest);
  assert(source);

  for (int i = 0 ; i < n ; i++) {
    2893:	85 ed                	test   %ebp,%ebp
    2895:	0f 88 dd 00 00 00    	js     2978 <sort_a+0x188>
  copy_a(&(A[p]), left, n1);
    289b:	4c 8d 04 93          	lea    (%rbx,%rdx,4),%r8
  for (int i = 0 ; i < n ; i++) {
    289f:	89 f7                	mov    %esi,%edi
    28a1:	83 fe 0c             	cmp    $0xc,%esi
    28a4:	72 0c                	jb     28b2 <sort_a+0xc2>
    28a6:	49 89 c1             	mov    %rax,%r9
    28a9:	4d 29 c1             	sub    %r8,%r9
    28ac:	49 83 f9 20          	cmp    $0x20,%r9
    28b0:	73 7f                	jae    2931 <sort_a+0x141>
    28b2:	45 31 c9             	xor    %r9d,%r9d
    28b5:	49 89 fb             	mov    %rdi,%r11
    28b8:	4d 89 ca             	mov    %r9,%r10
    28bb:	49 83 e3 03          	and    $0x3,%r11
    28bf:	74 1f                	je     28e0 <sort_a+0xf0>
    28c1:	4d 89 ca             	mov    %r9,%r10
    28c4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    28cb:	00 00 00 00 00 
    dest[i] = source[i];
    28d0:	43 8b 2c 90          	mov    (%r8,%r10,4),%ebp
    28d4:	42 89 2c 90          	mov    %ebp,(%rax,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    28d8:	49 ff c2             	inc    %r10
    28db:	49 ff cb             	dec    %r11
    28de:	75 f0                	jne    28d0 <sort_a+0xe0>
    28e0:	49 29 f9             	sub    %rdi,%r9
    28e3:	49 83 f9 fc          	cmp    $0xfffffffffffffffc,%r9
    28e7:	0f 87 8b 00 00 00    	ja     2978 <sort_a+0x188>
    28ed:	4c 8d 04 93          	lea    (%rbx,%rdx,4),%r8
    28f1:	49 83 c0 0c          	add    $0xc,%r8
    28f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    28fc:	00 00 00 00 
    dest[i] = source[i];
    2900:	47 8b 4c 90 f4       	mov    -0xc(%r8,%r10,4),%r9d
    2905:	46 89 0c 90          	mov    %r9d,(%rax,%r10,4)
    2909:	47 8b 4c 90 f8       	mov    -0x8(%r8,%r10,4),%r9d
    290e:	46 89 4c 90 04       	mov    %r9d,0x4(%rax,%r10,4)
    2913:	47 8b 4c 90 fc       	mov    -0x4(%r8,%r10,4),%r9d
    2918:	46 89 4c 90 08       	mov    %r9d,0x8(%rax,%r10,4)
    291d:	47 8b 0c 90          	mov    (%r8,%r10,4),%r9d
    2921:	46 89 4c 90 0c       	mov    %r9d,0xc(%rax,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    2926:	49 83 c2 04          	add    $0x4,%r10
    292a:	4c 39 d7             	cmp    %r10,%rdi
    292d:	75 d1                	jne    2900 <sort_a+0x110>
    292f:	eb 47                	jmp    2978 <sort_a+0x188>
    2931:	4c 8d 14 95 00 00 00 	lea    0x0(,%rdx,4),%r10
    2938:	00 
    2939:	41 89 f9             	mov    %edi,%r9d
    293c:	41 81 e1 f8 ff ff 7f 	and    $0x7ffffff8,%r9d
    2943:	49 01 da             	add    %rbx,%r10
    2946:	49 83 c2 10          	add    $0x10,%r10
    294a:	45 31 db             	xor    %r11d,%r11d
    294d:	0f 1f 00             	nopl   (%rax)
    dest[i] = source[i];
    2950:	43 0f 10 44 9a f0    	movups -0x10(%r10,%r11,4),%xmm0
    2956:	43 0f 10 0c 9a       	movups (%r10,%r11,4),%xmm1
    295b:	42 0f 11 04 98       	movups %xmm0,(%rax,%r11,4)
    2960:	42 0f 11 4c 98 10    	movups %xmm1,0x10(%rax,%r11,4)
  for (int i = 0 ; i < n ; i++) {
    2966:	49 83 c3 08          	add    $0x8,%r11
    296a:	4d 39 d9             	cmp    %r11,%r9
    296d:	75 e1                	jne    2950 <sort_a+0x160>
    296f:	49 39 f9             	cmp    %rdi,%r9
    2972:	0f 85 3d ff ff ff    	jne    28b5 <sort_a+0xc5>
    2978:	45 85 ed             	test   %r13d,%r13d
    297b:	0f 8e e7 00 00 00    	jle    2a68 <sort_a+0x278>
  copy_a(&(A[q + 1]), right, n2);
    2981:	4d 63 c4             	movslq %r12d,%r8
  for (int i = 0 ; i < n ; i++) {
    2984:	44 89 ef             	mov    %r13d,%edi
    2987:	41 83 fd 10          	cmp    $0x10,%r13d
    298b:	72 18                	jb     29a5 <sort_a+0x1b5>
    298d:	4e 8d 0c 83          	lea    (%rbx,%r8,4),%r9
    2991:	49 89 ca             	mov    %rcx,%r10
    2994:	4d 29 ca             	sub    %r9,%r10
    2997:	49 83 c2 fc          	add    $0xfffffffffffffffc,%r10
    299b:	49 83 fa 20          	cmp    $0x20,%r10
    299f:	0f 83 7c 00 00 00    	jae    2a21 <sort_a+0x231>
    29a5:	45 31 c9             	xor    %r9d,%r9d
    29a8:	49 89 fb             	mov    %rdi,%r11
    29ab:	4d 89 ca             	mov    %r9,%r10
    29ae:	49 83 e3 03          	and    $0x3,%r11
    29b2:	74 1c                	je     29d0 <sort_a+0x1e0>
    29b4:	4e 8d 24 83          	lea    (%rbx,%r8,4),%r12
    29b8:	49 83 c4 04          	add    $0x4,%r12
    29bc:	4d 89 ca             	mov    %r9,%r10
    29bf:	90                   	nop
    dest[i] = source[i];
    29c0:	43 8b 2c 94          	mov    (%r12,%r10,4),%ebp
    29c4:	42 89 2c 91          	mov    %ebp,(%rcx,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    29c8:	49 ff c2             	inc    %r10
    29cb:	49 ff cb             	dec    %r11
    29ce:	75 f0                	jne    29c0 <sort_a+0x1d0>
    29d0:	49 29 f9             	sub    %rdi,%r9
    29d3:	49 83 f9 fc          	cmp    $0xfffffffffffffffc,%r9
    29d7:	0f 87 8b 00 00 00    	ja     2a68 <sort_a+0x278>
    29dd:	4e 8d 04 83          	lea    (%rbx,%r8,4),%r8
    29e1:	49 83 c0 10          	add    $0x10,%r8
    29e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    29ec:	00 00 00 00 
    dest[i] = source[i];
    29f0:	47 8b 4c 90 f4       	mov    -0xc(%r8,%r10,4),%r9d
    29f5:	46 89 0c 91          	mov    %r9d,(%rcx,%r10,4)
    29f9:	47 8b 4c 90 f8       	mov    -0x8(%r8,%r10,4),%r9d
    29fe:	46 89 4c 91 04       	mov    %r9d,0x4(%rcx,%r10,4)
    2a03:	47 8b 4c 90 fc       	mov    -0x4(%r8,%r10,4),%r9d
    2a08:	46 89 4c 91 08       	mov    %r9d,0x8(%rcx,%r10,4)
    2a0d:	47 8b 0c 90          	mov    (%r8,%r10,4),%r9d
    2a11:	46 89 4c 91 0c       	mov    %r9d,0xc(%rcx,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    2a16:	49 83 c2 04          	add    $0x4,%r10
    2a1a:	4c 39 d7             	cmp    %r10,%rdi
    2a1d:	75 d1                	jne    29f0 <sort_a+0x200>
    2a1f:	eb 47                	jmp    2a68 <sort_a+0x278>
    2a21:	4e 8d 14 85 00 00 00 	lea    0x0(,%r8,4),%r10
    2a28:	00 
    2a29:	41 89 f9             	mov    %edi,%r9d
    2a2c:	41 81 e1 f8 ff ff 7f 	and    $0x7ffffff8,%r9d
    2a33:	49 01 da             	add    %rbx,%r10
    2a36:	49 83 c2 14          	add    $0x14,%r10
    2a3a:	45 31 db             	xor    %r11d,%r11d
    2a3d:	0f 1f 00             	nopl   (%rax)
    dest[i] = source[i];
    2a40:	43 0f 10 44 9a f0    	movups -0x10(%r10,%r11,4),%xmm0
    2a46:	43 0f 10 0c 9a       	movups (%r10,%r11,4),%xmm1
    2a4b:	42 0f 11 04 99       	movups %xmm0,(%rcx,%r11,4)
    2a50:	42 0f 11 4c 99 10    	movups %xmm1,0x10(%rcx,%r11,4)
  for (int i = 0 ; i < n ; i++) {
    2a56:	49 83 c3 08          	add    $0x8,%r11
    2a5a:	4d 39 d9             	cmp    %r11,%r9
    2a5d:	75 e1                	jne    2a40 <sort_a+0x250>
    2a5f:	49 39 f9             	cmp    %rdi,%r9
    2a62:	0f 85 40 ff ff ff    	jne    29a8 <sort_a+0x1b8>
  left[n1] = UINT_MAX;
    2a68:	48 63 f6             	movslq %esi,%rsi
    2a6b:	c7 04 b0 ff ff ff ff 	movl   $0xffffffff,(%rax,%rsi,4)
  right[n2] = UINT_MAX;
    2a72:	49 63 f5             	movslq %r13d,%rsi
    2a75:	c7 04 b1 ff ff ff ff 	movl   $0xffffffff,(%rcx,%rsi,4)
    2a7c:	31 f6                	xor    %esi,%esi
  for (int k = p; k <= r; k++) {
    2a7e:	45 29 fe             	sub    %r15d,%r14d
    2a81:	41 8d 7e 01          	lea    0x1(%r14),%edi
    2a85:	75 0e                	jne    2a95 <sort_a+0x2a5>
    2a87:	45 31 c0             	xor    %r8d,%r8d
    2a8a:	40 f6 c7 01          	test   $0x1,%dil
    2a8e:	75 77                	jne    2b07 <sort_a+0x317>
    2a90:	e9 81 00 00 00       	jmp    2b16 <sort_a+0x326>
    2a95:	41 89 f8             	mov    %edi,%r8d
    2a98:	41 83 e0 fe          	and    $0xfffffffe,%r8d
    2a9c:	45 31 c9             	xor    %r9d,%r9d
    2a9f:	90                   	nop
    if (left[i] <= right[j]) {
    2aa0:	45 89 ca             	mov    %r9d,%r10d
    2aa3:	46 8b 1c 90          	mov    (%rax,%r10,4),%r11d
    2aa7:	41 89 f2             	mov    %esi,%r10d
    2aaa:	42 8b 2c 91          	mov    (%rcx,%r10,4),%ebp
    2aae:	45 31 d2             	xor    %r10d,%r10d
    2ab1:	45 31 f6             	xor    %r14d,%r14d
    2ab4:	41 39 eb             	cmp    %ebp,%r11d
    2ab7:	41 0f 97 c2          	seta   %r10b
    2abb:	41 0f 96 c6          	setbe  %r14b
    2abf:	41 0f 42 eb          	cmovb  %r11d,%ebp
    2ac3:	45 01 ce             	add    %r9d,%r14d
    2ac6:	41 01 f2             	add    %esi,%r10d
    2ac9:	89 2c 93             	mov    %ebp,(%rbx,%rdx,4)
    2acc:	46 8b 1c b0          	mov    (%rax,%r14,4),%r11d
    2ad0:	42 8b 2c 91          	mov    (%rcx,%r10,4),%ebp
    2ad4:	31 f6                	xor    %esi,%esi
    2ad6:	45 31 c9             	xor    %r9d,%r9d
    2ad9:	41 39 eb             	cmp    %ebp,%r11d
    2adc:	40 0f 97 c6          	seta   %sil
    2ae0:	41 0f 96 c1          	setbe  %r9b
    2ae4:	41 0f 42 eb          	cmovb  %r11d,%ebp
    2ae8:	45 01 f1             	add    %r14d,%r9d
    2aeb:	44 01 d6             	add    %r10d,%esi
    2aee:	89 6c 93 04          	mov    %ebp,0x4(%rbx,%rdx,4)
  for (int k = p; k <= r; k++) {
    2af2:	48 83 c2 02          	add    $0x2,%rdx
    2af6:	41 83 c0 fe          	add    $0xfffffffe,%r8d
    2afa:	75 a4                	jne    2aa0 <sort_a+0x2b0>
    if (left[i] <= right[j]) {
    2afc:	45 89 c8             	mov    %r9d,%r8d
    2aff:	89 f6                	mov    %esi,%esi
  for (int k = p; k <= r; k++) {
    2b01:	40 f6 c7 01          	test   $0x1,%dil
    2b05:	74 0f                	je     2b16 <sort_a+0x326>
    if (left[i] <= right[j]) {
    2b07:	42 8b 04 80          	mov    (%rax,%r8,4),%eax
    2b0b:	8b 0c b1             	mov    (%rcx,%rsi,4),%ecx
    2b0e:	39 c8                	cmp    %ecx,%eax
    2b10:	0f 42 c8             	cmovb  %eax,%ecx
    2b13:	89 0c 93             	mov    %ecx,(%rbx,%rdx,4)
    2b16:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2b1b:	e8 60 fc ff ff       	call   2780 <mem_free>
    2b20:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    2b25:	e8 56 fc ff ff       	call   2780 <mem_free>
    2b2a:	48 83 c4 18          	add    $0x18,%rsp
    2b2e:	5b                   	pop    %rbx
    2b2f:	41 5c                	pop    %r12
    2b31:	41 5d                	pop    %r13
    2b33:	41 5e                	pop    %r14
    2b35:	41 5f                	pop    %r15
    2b37:	5d                   	pop    %rbp
}
    2b38:	c3                   	ret
    2b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002b40 <sort_c>:


#include "./util.h"

void sort_c(data_t* A, int p, int r) {
  printf("Unimplemented!\n");
    2b40:	48 8d 3d ee 07 00 00 	lea    0x7ee(%rip),%rdi        # 3335 <_IO_stdin_used+0x335>
    2b47:	e9 04 e5 ff ff       	jmp    1050 <puts@plt>
    2b4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002b50 <sort_i>:


#include "./util.h"

void sort_i(data_t* A, int p, int r) {
  printf("Unimplemented!\n");
    2b50:	48 8d 3d de 07 00 00 	lea    0x7de(%rip),%rdi        # 3335 <_IO_stdin_used+0x335>
    2b57:	e9 f4 e4 ff ff       	jmp    1050 <puts@plt>
    2b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002b60 <sort_p>:
static void copy_p(data_t* source, data_t* dest, int n);

// A basic merge sort routine that sorts the subarray A[p..r]
void sort_p(data_t* A, int p, int r) {
  assert(A);
  if (p < r) {
    2b60:	39 d6                	cmp    %edx,%esi
    2b62:	0f 8d 40 03 00 00    	jge    2ea8 <sort_p+0x348>
    2b68:	55                   	push   %rbp
    2b69:	41 57                	push   %r15
    2b6b:	41 56                	push   %r14
    2b6d:	41 55                	push   %r13
    2b6f:	41 54                	push   %r12
    2b71:	53                   	push   %rbx
    2b72:	48 83 ec 18          	sub    $0x18,%rsp
    2b76:	41 89 d6             	mov    %edx,%r14d
    2b79:	41 89 f7             	mov    %esi,%r15d
    2b7c:	48 89 fb             	mov    %rdi,%rbx
    int q = (p + r) / 2;
    2b7f:	43 8d 04 3e          	lea    (%r14,%r15,1),%eax
    2b83:	41 89 c4             	mov    %eax,%r12d
    2b86:	41 c1 ec 1f          	shr    $0x1f,%r12d
    2b8a:	41 01 c4             	add    %eax,%r12d
    2b8d:	41 d1 fc             	sar    $1,%r12d
    sort_p(A, p, q);
    2b90:	44 89 e2             	mov    %r12d,%edx
    2b93:	e8 c8 ff ff ff       	call   2b60 <sort_p>
    sort_p(A, q + 1, r);
    2b98:	41 8d 74 24 01       	lea    0x1(%r12),%esi
    2b9d:	48 89 df             	mov    %rbx,%rdi
    2ba0:	44 89 f2             	mov    %r14d,%edx
    2ba3:	e8 b8 ff ff ff       	call   2b60 <sort_p>
// Uses two arrays 'left' and 'right' in the merge operation.
static void merge_p(data_t* A, int p, int q, int r) {
  assert(A);
  assert(p <= q);
  assert((q + 1) <= r);
  int n1 = q - p + 1;
    2ba8:	44 89 e5             	mov    %r12d,%ebp
    2bab:	44 29 fd             	sub    %r15d,%ebp
  int n2 = r - q;
    2bae:	45 89 f5             	mov    %r14d,%r13d
    2bb1:	45 29 e5             	sub    %r12d,%r13d

  data_t* left = 0, * right = 0;
    2bb4:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    2bbb:	00 00 
    2bbd:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2bc4:	00 00 
  mem_alloc(&left, n1 + 1);
    2bc6:	8d 75 02             	lea    0x2(%rbp),%esi
    2bc9:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2bce:	e8 7d fb ff ff       	call   2750 <mem_alloc>
  mem_alloc(&right, n2 + 1);
    2bd3:	41 8d 75 01          	lea    0x1(%r13),%esi
    2bd7:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    2bdc:	e8 6f fb ff ff       	call   2750 <mem_alloc>
  if (left == NULL || right == NULL) {
    2be1:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    2be6:	48 85 c0             	test   %rax,%rax
    2be9:	0f 84 97 02 00 00    	je     2e86 <sort_p+0x326>
    2bef:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    2bf4:	48 85 c9             	test   %rcx,%rcx
    2bf7:	0f 84 89 02 00 00    	je     2e86 <sort_p+0x326>
  int n1 = q - p + 1;
    2bfd:	8d 75 01             	lea    0x1(%rbp),%esi
    mem_free(&left);
    mem_free(&right);
    return;
  }

  copy_p(&(A[p]), left, n1);
    2c00:	49 63 d7             	movslq %r15d,%rdx

static void copy_p(data_t* source, data_t* dest, int n) {
  assert(dest);
  assert(source);

  for (int i = 0 ; i < n ; i++) {
    2c03:	85 ed                	test   %ebp,%ebp
    2c05:	0f 88 dd 00 00 00    	js     2ce8 <sort_p+0x188>
  copy_p(&(A[p]), left, n1);
    2c0b:	4c 8d 04 93          	lea    (%rbx,%rdx,4),%r8
  for (int i = 0 ; i < n ; i++) {
    2c0f:	89 f7                	mov    %esi,%edi
    2c11:	83 fe 0c             	cmp    $0xc,%esi
    2c14:	72 0c                	jb     2c22 <sort_p+0xc2>
    2c16:	49 89 c1             	mov    %rax,%r9
    2c19:	4d 29 c1             	sub    %r8,%r9
    2c1c:	49 83 f9 20          	cmp    $0x20,%r9
    2c20:	73 7f                	jae    2ca1 <sort_p+0x141>
    2c22:	45 31 c9             	xor    %r9d,%r9d
    2c25:	49 89 fb             	mov    %rdi,%r11
    2c28:	4d 89 ca             	mov    %r9,%r10
    2c2b:	49 83 e3 03          	and    $0x3,%r11
    2c2f:	74 1f                	je     2c50 <sort_p+0xf0>
    2c31:	4d 89 ca             	mov    %r9,%r10
    2c34:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    2c3b:	00 00 00 00 00 
    dest[i] = source[i];
    2c40:	43 8b 2c 90          	mov    (%r8,%r10,4),%ebp
    2c44:	42 89 2c 90          	mov    %ebp,(%rax,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    2c48:	49 ff c2             	inc    %r10
    2c4b:	49 ff cb             	dec    %r11
    2c4e:	75 f0                	jne    2c40 <sort_p+0xe0>
    2c50:	49 29 f9             	sub    %rdi,%r9
    2c53:	49 83 f9 fc          	cmp    $0xfffffffffffffffc,%r9
    2c57:	0f 87 8b 00 00 00    	ja     2ce8 <sort_p+0x188>
    2c5d:	4c 8d 04 93          	lea    (%rbx,%rdx,4),%r8
    2c61:	49 83 c0 0c          	add    $0xc,%r8
    2c65:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2c6c:	00 00 00 00 
    dest[i] = source[i];
    2c70:	47 8b 4c 90 f4       	mov    -0xc(%r8,%r10,4),%r9d
    2c75:	46 89 0c 90          	mov    %r9d,(%rax,%r10,4)
    2c79:	47 8b 4c 90 f8       	mov    -0x8(%r8,%r10,4),%r9d
    2c7e:	46 89 4c 90 04       	mov    %r9d,0x4(%rax,%r10,4)
    2c83:	47 8b 4c 90 fc       	mov    -0x4(%r8,%r10,4),%r9d
    2c88:	46 89 4c 90 08       	mov    %r9d,0x8(%rax,%r10,4)
    2c8d:	47 8b 0c 90          	mov    (%r8,%r10,4),%r9d
    2c91:	46 89 4c 90 0c       	mov    %r9d,0xc(%rax,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    2c96:	49 83 c2 04          	add    $0x4,%r10
    2c9a:	4c 39 d7             	cmp    %r10,%rdi
    2c9d:	75 d1                	jne    2c70 <sort_p+0x110>
    2c9f:	eb 47                	jmp    2ce8 <sort_p+0x188>
    2ca1:	4c 8d 14 95 00 00 00 	lea    0x0(,%rdx,4),%r10
    2ca8:	00 
    2ca9:	41 89 f9             	mov    %edi,%r9d
    2cac:	41 81 e1 f8 ff ff 7f 	and    $0x7ffffff8,%r9d
    2cb3:	49 01 da             	add    %rbx,%r10
    2cb6:	49 83 c2 10          	add    $0x10,%r10
    2cba:	45 31 db             	xor    %r11d,%r11d
    2cbd:	0f 1f 00             	nopl   (%rax)
    dest[i] = source[i];
    2cc0:	43 0f 10 44 9a f0    	movups -0x10(%r10,%r11,4),%xmm0
    2cc6:	43 0f 10 0c 9a       	movups (%r10,%r11,4),%xmm1
    2ccb:	42 0f 11 04 98       	movups %xmm0,(%rax,%r11,4)
    2cd0:	42 0f 11 4c 98 10    	movups %xmm1,0x10(%rax,%r11,4)
  for (int i = 0 ; i < n ; i++) {
    2cd6:	49 83 c3 08          	add    $0x8,%r11
    2cda:	4d 39 d9             	cmp    %r11,%r9
    2cdd:	75 e1                	jne    2cc0 <sort_p+0x160>
    2cdf:	49 39 f9             	cmp    %rdi,%r9
    2ce2:	0f 85 3d ff ff ff    	jne    2c25 <sort_p+0xc5>
    2ce8:	45 85 ed             	test   %r13d,%r13d
    2ceb:	0f 8e e7 00 00 00    	jle    2dd8 <sort_p+0x278>
  copy_p(&(A[q + 1]), right, n2);
    2cf1:	4d 63 c4             	movslq %r12d,%r8
  for (int i = 0 ; i < n ; i++) {
    2cf4:	44 89 ef             	mov    %r13d,%edi
    2cf7:	41 83 fd 10          	cmp    $0x10,%r13d
    2cfb:	72 18                	jb     2d15 <sort_p+0x1b5>
    2cfd:	4e 8d 0c 83          	lea    (%rbx,%r8,4),%r9
    2d01:	49 89 ca             	mov    %rcx,%r10
    2d04:	4d 29 ca             	sub    %r9,%r10
    2d07:	49 83 c2 fc          	add    $0xfffffffffffffffc,%r10
    2d0b:	49 83 fa 20          	cmp    $0x20,%r10
    2d0f:	0f 83 7c 00 00 00    	jae    2d91 <sort_p+0x231>
    2d15:	45 31 c9             	xor    %r9d,%r9d
    2d18:	49 89 fb             	mov    %rdi,%r11
    2d1b:	4d 89 ca             	mov    %r9,%r10
    2d1e:	49 83 e3 03          	and    $0x3,%r11
    2d22:	74 1c                	je     2d40 <sort_p+0x1e0>
    2d24:	4e 8d 24 83          	lea    (%rbx,%r8,4),%r12
    2d28:	49 83 c4 04          	add    $0x4,%r12
    2d2c:	4d 89 ca             	mov    %r9,%r10
    2d2f:	90                   	nop
    dest[i] = source[i];
    2d30:	43 8b 2c 94          	mov    (%r12,%r10,4),%ebp
    2d34:	42 89 2c 91          	mov    %ebp,(%rcx,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    2d38:	49 ff c2             	inc    %r10
    2d3b:	49 ff cb             	dec    %r11
    2d3e:	75 f0                	jne    2d30 <sort_p+0x1d0>
    2d40:	49 29 f9             	sub    %rdi,%r9
    2d43:	49 83 f9 fc          	cmp    $0xfffffffffffffffc,%r9
    2d47:	0f 87 8b 00 00 00    	ja     2dd8 <sort_p+0x278>
    2d4d:	4e 8d 04 83          	lea    (%rbx,%r8,4),%r8
    2d51:	49 83 c0 10          	add    $0x10,%r8
    2d55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2d5c:	00 00 00 00 
    dest[i] = source[i];
    2d60:	47 8b 4c 90 f4       	mov    -0xc(%r8,%r10,4),%r9d
    2d65:	46 89 0c 91          	mov    %r9d,(%rcx,%r10,4)
    2d69:	47 8b 4c 90 f8       	mov    -0x8(%r8,%r10,4),%r9d
    2d6e:	46 89 4c 91 04       	mov    %r9d,0x4(%rcx,%r10,4)
    2d73:	47 8b 4c 90 fc       	mov    -0x4(%r8,%r10,4),%r9d
    2d78:	46 89 4c 91 08       	mov    %r9d,0x8(%rcx,%r10,4)
    2d7d:	47 8b 0c 90          	mov    (%r8,%r10,4),%r9d
    2d81:	46 89 4c 91 0c       	mov    %r9d,0xc(%rcx,%r10,4)
  for (int i = 0 ; i < n ; i++) {
    2d86:	49 83 c2 04          	add    $0x4,%r10
    2d8a:	4c 39 d7             	cmp    %r10,%rdi
    2d8d:	75 d1                	jne    2d60 <sort_p+0x200>
    2d8f:	eb 47                	jmp    2dd8 <sort_p+0x278>
    2d91:	4e 8d 14 85 00 00 00 	lea    0x0(,%r8,4),%r10
    2d98:	00 
    2d99:	41 89 f9             	mov    %edi,%r9d
    2d9c:	41 81 e1 f8 ff ff 7f 	and    $0x7ffffff8,%r9d
    2da3:	49 01 da             	add    %rbx,%r10
    2da6:	49 83 c2 14          	add    $0x14,%r10
    2daa:	45 31 db             	xor    %r11d,%r11d
    2dad:	0f 1f 00             	nopl   (%rax)
    dest[i] = source[i];
    2db0:	43 0f 10 44 9a f0    	movups -0x10(%r10,%r11,4),%xmm0
    2db6:	43 0f 10 0c 9a       	movups (%r10,%r11,4),%xmm1
    2dbb:	42 0f 11 04 99       	movups %xmm0,(%rcx,%r11,4)
    2dc0:	42 0f 11 4c 99 10    	movups %xmm1,0x10(%rcx,%r11,4)
  for (int i = 0 ; i < n ; i++) {
    2dc6:	49 83 c3 08          	add    $0x8,%r11
    2dca:	4d 39 d9             	cmp    %r11,%r9
    2dcd:	75 e1                	jne    2db0 <sort_p+0x250>
    2dcf:	49 39 f9             	cmp    %rdi,%r9
    2dd2:	0f 85 40 ff ff ff    	jne    2d18 <sort_p+0x1b8>
  left[n1] = UINT_MAX;
    2dd8:	48 63 f6             	movslq %esi,%rsi
    2ddb:	c7 04 b0 ff ff ff ff 	movl   $0xffffffff,(%rax,%rsi,4)
  right[n2] = UINT_MAX;
    2de2:	49 63 f5             	movslq %r13d,%rsi
    2de5:	c7 04 b1 ff ff ff ff 	movl   $0xffffffff,(%rcx,%rsi,4)
    2dec:	31 f6                	xor    %esi,%esi
  for (int k = p; k <= r; k++) {
    2dee:	45 29 fe             	sub    %r15d,%r14d
    2df1:	41 8d 7e 01          	lea    0x1(%r14),%edi
    2df5:	75 0e                	jne    2e05 <sort_p+0x2a5>
    2df7:	45 31 c0             	xor    %r8d,%r8d
    2dfa:	40 f6 c7 01          	test   $0x1,%dil
    2dfe:	75 77                	jne    2e77 <sort_p+0x317>
    2e00:	e9 81 00 00 00       	jmp    2e86 <sort_p+0x326>
    2e05:	41 89 f8             	mov    %edi,%r8d
    2e08:	41 83 e0 fe          	and    $0xfffffffe,%r8d
    2e0c:	45 31 c9             	xor    %r9d,%r9d
    2e0f:	90                   	nop
    if (left[i] <= right[j]) {
    2e10:	45 89 ca             	mov    %r9d,%r10d
    2e13:	46 8b 1c 90          	mov    (%rax,%r10,4),%r11d
    2e17:	41 89 f2             	mov    %esi,%r10d
    2e1a:	42 8b 2c 91          	mov    (%rcx,%r10,4),%ebp
    2e1e:	45 31 d2             	xor    %r10d,%r10d
    2e21:	45 31 f6             	xor    %r14d,%r14d
    2e24:	41 39 eb             	cmp    %ebp,%r11d
    2e27:	41 0f 97 c2          	seta   %r10b
    2e2b:	41 0f 96 c6          	setbe  %r14b
    2e2f:	41 0f 42 eb          	cmovb  %r11d,%ebp
    2e33:	45 01 ce             	add    %r9d,%r14d
    2e36:	41 01 f2             	add    %esi,%r10d
    2e39:	89 2c 93             	mov    %ebp,(%rbx,%rdx,4)
    2e3c:	46 8b 1c b0          	mov    (%rax,%r14,4),%r11d
    2e40:	42 8b 2c 91          	mov    (%rcx,%r10,4),%ebp
    2e44:	31 f6                	xor    %esi,%esi
    2e46:	45 31 c9             	xor    %r9d,%r9d
    2e49:	41 39 eb             	cmp    %ebp,%r11d
    2e4c:	40 0f 97 c6          	seta   %sil
    2e50:	41 0f 96 c1          	setbe  %r9b
    2e54:	41 0f 42 eb          	cmovb  %r11d,%ebp
    2e58:	45 01 f1             	add    %r14d,%r9d
    2e5b:	44 01 d6             	add    %r10d,%esi
    2e5e:	89 6c 93 04          	mov    %ebp,0x4(%rbx,%rdx,4)
  for (int k = p; k <= r; k++) {
    2e62:	48 83 c2 02          	add    $0x2,%rdx
    2e66:	41 83 c0 fe          	add    $0xfffffffe,%r8d
    2e6a:	75 a4                	jne    2e10 <sort_p+0x2b0>
    if (left[i] <= right[j]) {
    2e6c:	45 89 c8             	mov    %r9d,%r8d
    2e6f:	89 f6                	mov    %esi,%esi
  for (int k = p; k <= r; k++) {
    2e71:	40 f6 c7 01          	test   $0x1,%dil
    2e75:	74 0f                	je     2e86 <sort_p+0x326>
    if (left[i] <= right[j]) {
    2e77:	42 8b 04 80          	mov    (%rax,%r8,4),%eax
    2e7b:	8b 0c b1             	mov    (%rcx,%rsi,4),%ecx
    2e7e:	39 c8                	cmp    %ecx,%eax
    2e80:	0f 42 c8             	cmovb  %eax,%ecx
    2e83:	89 0c 93             	mov    %ecx,(%rbx,%rdx,4)
    2e86:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2e8b:	e8 f0 f8 ff ff       	call   2780 <mem_free>
    2e90:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    2e95:	e8 e6 f8 ff ff       	call   2780 <mem_free>
    2e9a:	48 83 c4 18          	add    $0x18,%rsp
    2e9e:	5b                   	pop    %rbx
    2e9f:	41 5c                	pop    %r12
    2ea1:	41 5d                	pop    %r13
    2ea3:	41 5e                	pop    %r14
    2ea5:	41 5f                	pop    %r15
    2ea7:	5d                   	pop    %rbp
}
    2ea8:	c3                   	ret
    2ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002eb0 <sort_m>:


#include "./util.h"

void sort_m(data_t* A, int p, int r) {
  printf("Unimplemented!\n");
    2eb0:	48 8d 3d 7e 04 00 00 	lea    0x47e(%rip),%rdi        # 3335 <_IO_stdin_used+0x335>
    2eb7:	e9 94 e1 ff ff       	jmp    1050 <puts@plt>
    2ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002ec0 <sort_f>:


#include "./util.h"

void sort_f(data_t* A, int p, int r) {
  printf("Unimplemented!\n");
    2ec0:	48 8d 3d 6e 04 00 00 	lea    0x46e(%rip),%rdi        # 3335 <_IO_stdin_used+0x335>
    2ec7:	e9 84 e1 ff ff       	jmp    1050 <puts@plt>

Disassembly of section .fini:

0000000000002ecc <_fini>:
    2ecc:	f3 0f 1e fa          	endbr64
    2ed0:	48 83 ec 08          	sub    $0x8,%rsp
    2ed4:	48 83 c4 08          	add    $0x8,%rsp
    2ed8:	c3                   	ret
