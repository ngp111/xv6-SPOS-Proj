
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    return b;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	53                   	push   %ebx
       e:	51                   	push   %ecx
       f:	83 ec 70             	sub    $0x70,%esp
  static char buf[100],bufx[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      12:	eb 0d                	jmp    21 <main+0x21>
      14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 02 02 00 00    	jg     223 <main+0x223>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 a9 14 00 00       	push   $0x14a9
      2b:	e8 62 0f 00 00       	call   f92 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      close(fd);
      break;
    }
  }
  int err=open("temp.pwd",O_CREATE|O_RDWR);
      37:	83 ec 08             	sub    $0x8,%esp
      3a:	68 02 02 00 00       	push   $0x202
      3f:	68 c2 14 00 00       	push   $0x14c2
      44:	e8 49 0f 00 00       	call   f92 <open>
  write(err,"/",1);
      49:	83 c4 0c             	add    $0xc,%esp
  int err=open("temp.pwd",O_CREATE|O_RDWR);
      4c:	89 c3                	mov    %eax,%ebx
  write(err,"/",1);
      4e:	6a 01                	push   $0x1
      50:	68 b1 14 00 00       	push   $0x14b1
            close(err2);     
            //printf(1,"%s\n",temp);
            continue;       
        }
        strcat(bufx,"/");
        write(err,bufx+4,strlen(bufx)-4);
      55:	53                   	push   %ebx
      56:	e8 17 0f 00 00       	call   f72 <write>
        close(err);
      5b:	89 1c 24             	mov    %ebx,(%esp)
      5e:	e8 17 0f 00 00       	call   f7a <close>
      63:	83 c4 10             	add    $0x10,%esp
      66:	8d 76 00             	lea    0x0(%esi),%esi
      69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  while(getcmd(buf, sizeof(buf)) >= 0){
      70:	83 ec 08             	sub    $0x8,%esp
      73:	6a 64                	push   $0x64
      75:	68 00 1b 00 00       	push   $0x1b00
      7a:	e8 71 02 00 00       	call   2f0 <getcmd>
      7f:	83 c4 10             	add    $0x10,%esp
      82:	85 c0                	test   %eax,%eax
      84:	0f 88 aa 01 00 00    	js     234 <main+0x234>
    memset(bufx,'\0',sizeof(bufx));
      8a:	83 ec 04             	sub    $0x4,%esp
      8d:	6a 64                	push   $0x64
      8f:	6a 00                	push   $0x0
      91:	68 80 1b 00 00       	push   $0x1b80
      96:	e8 15 0d 00 00       	call   db0 <memset>
    if(strlen(buf)>1) bufx[0]='/';
      9b:	c7 04 24 00 1b 00 00 	movl   $0x1b00,(%esp)
      a2:	e8 d9 0c 00 00       	call   d80 <strlen>
      a7:	83 c4 10             	add    $0x10,%esp
      aa:	83 f8 01             	cmp    $0x1,%eax
      ad:	76 79                	jbe    128 <main+0x128>
      af:	c6 05 80 1b 00 00 2f 	movb   $0x2f,0x1b80
{
      b6:	b8 80 1b 00 00       	mov    $0x1b80,%eax
      bb:	90                   	nop
      bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(*s1) ++s1;
      c0:	83 c0 01             	add    $0x1,%eax
      c3:	80 38 00             	cmpb   $0x0,(%eax)
      c6:	75 f8                	jne    c0 <main+0xc0>
    while(*s2) *s1++ = *s2++;
      c8:	0f b6 15 00 1b 00 00 	movzbl 0x1b00,%edx
      cf:	84 d2                	test   %dl,%dl
      d1:	74 1d                	je     f0 <main+0xf0>
      d3:	b9 00 1b 00 00       	mov    $0x1b00,%ecx
      d8:	90                   	nop
      d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      e0:	83 c1 01             	add    $0x1,%ecx
      e3:	83 c0 01             	add    $0x1,%eax
      e6:	88 50 ff             	mov    %dl,-0x1(%eax)
      e9:	0f b6 11             	movzbl (%ecx),%edx
      ec:	84 d2                	test   %dl,%dl
      ee:	75 f0                	jne    e0 <main+0xe0>
    *s1=0;
      f0:	c6 00 00             	movb   $0x0,(%eax)
    if(bufx[1] == 'c' && bufx[2] == 'd' && bufx[3] == ' '){
      f3:	80 3d 81 1b 00 00 63 	cmpb   $0x63,0x1b81
      fa:	75 09                	jne    105 <main+0x105>
      fc:	80 3d 82 1b 00 00 64 	cmpb   $0x64,0x1b82
     103:	74 3b                	je     140 <main+0x140>
int
fork1(void)
{
  int pid;

  pid = fork();
     105:	e8 40 0e 00 00       	call   f4a <fork>
  if(pid == -1)
     10a:	83 f8 ff             	cmp    $0xffffffff,%eax
     10d:	0f 84 26 01 00 00    	je     239 <main+0x239>
    if(fork1() == 0)
     113:	85 c0                	test   %eax,%eax
     115:	0f 84 2b 01 00 00    	je     246 <main+0x246>
    wait();
     11b:	e8 3a 0e 00 00       	call   f5a <wait>
     120:	e9 4b ff ff ff       	jmp    70 <main+0x70>
     125:	8d 76 00             	lea    0x0(%esi),%esi
    while(*s1) ++s1;
     128:	80 3d 80 1b 00 00 00 	cmpb   $0x0,0x1b80
     12f:	b8 80 1b 00 00       	mov    $0x1b80,%eax
     134:	75 80                	jne    b6 <main+0xb6>
     136:	eb 90                	jmp    c8 <main+0xc8>
     138:	90                   	nop
     139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(bufx[1] == 'c' && bufx[2] == 'd' && bufx[3] == ' '){
     140:	80 3d 83 1b 00 00 20 	cmpb   $0x20,0x1b83
     147:	75 bc                	jne    105 <main+0x105>
      bufx[strlen(bufx)-1] = 0;  // chop \n
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 80 1b 00 00       	push   $0x1b80
     151:	e8 2a 0c 00 00       	call   d80 <strlen>
      if(bufx[strlen(bufx)-1]=='/') bufx[strlen(bufx)-1]='\0';
     156:	c7 04 24 80 1b 00 00 	movl   $0x1b80,(%esp)
      bufx[strlen(bufx)-1] = 0;  // chop \n
     15d:	c6 80 7f 1b 00 00 00 	movb   $0x0,0x1b7f(%eax)
      if(bufx[strlen(bufx)-1]=='/') bufx[strlen(bufx)-1]='\0';
     164:	e8 17 0c 00 00       	call   d80 <strlen>
     169:	83 c4 10             	add    $0x10,%esp
     16c:	80 b8 7f 1b 00 00 2f 	cmpb   $0x2f,0x1b7f(%eax)
     173:	0f 84 fc 00 00 00    	je     275 <main+0x275>
      if(chdir(bufx+4) < 0)
     179:	83 ec 0c             	sub    $0xc,%esp
     17c:	68 84 1b 00 00       	push   $0x1b84
     181:	e8 3c 0e 00 00       	call   fc2 <chdir>
     186:	83 c4 10             	add    $0x10,%esp
     189:	85 c0                	test   %eax,%eax
     18b:	0f 88 ca 00 00 00    	js     25b <main+0x25b>
        err=open("/temp.pwd",O_RDWR);
     191:	50                   	push   %eax
     192:	50                   	push   %eax
     193:	6a 02                	push   $0x2
     195:	68 c1 14 00 00       	push   $0x14c1
     19a:	e8 f3 0d 00 00       	call   f92 <open>
     19f:	89 c3                	mov    %eax,%ebx
        int e=read(err,temp,sizeof(temp));
     1a1:	8d 45 94             	lea    -0x6c(%ebp),%eax
     1a4:	83 c4 0c             	add    $0xc,%esp
     1a7:	6a 64                	push   $0x64
     1a9:	50                   	push   %eax
     1aa:	53                   	push   %ebx
     1ab:	e8 ba 0d 00 00       	call   f6a <read>
        if(e<0) exit();
     1b0:	83 c4 10             	add    $0x10,%esp
     1b3:	85 c0                	test   %eax,%eax
     1b5:	78 7d                	js     234 <main+0x234>
        if(strcmp(bufx+4,".")==0) continue;
     1b7:	50                   	push   %eax
     1b8:	50                   	push   %eax
     1b9:	68 cc 14 00 00       	push   $0x14cc
     1be:	68 84 1b 00 00       	push   $0x1b84
     1c3:	e8 68 0b 00 00       	call   d30 <strcmp>
     1c8:	83 c4 10             	add    $0x10,%esp
     1cb:	85 c0                	test   %eax,%eax
     1cd:	0f 84 9d fe ff ff    	je     70 <main+0x70>
        if(strcmp(bufx+4,"..")==0)
     1d3:	51                   	push   %ecx
     1d4:	51                   	push   %ecx
     1d5:	68 cb 14 00 00       	push   $0x14cb
     1da:	68 84 1b 00 00       	push   $0x1b84
     1df:	e8 4c 0b 00 00       	call   d30 <strcmp>
     1e4:	83 c4 10             	add    $0x10,%esp
     1e7:	85 c0                	test   %eax,%eax
     1e9:	ba 80 1b 00 00       	mov    $0x1b80,%edx
     1ee:	75 07                	jne    1f7 <main+0x1f7>
     1f0:	e9 9c 00 00 00       	jmp    291 <main+0x291>
    while(*s1) ++s1;
     1f5:	89 c2                	mov    %eax,%edx
     1f7:	80 3a 00             	cmpb   $0x0,(%edx)
     1fa:	8d 42 01             	lea    0x1(%edx),%eax
     1fd:	75 f6                	jne    1f5 <main+0x1f5>
        write(err,bufx+4,strlen(bufx)-4);
     1ff:	83 ec 0c             	sub    $0xc,%esp
    while(*s2) *s1++ = *s2++;
     202:	c6 02 2f             	movb   $0x2f,(%edx)
    *s1=0;
     205:	c6 00 00             	movb   $0x0,(%eax)
        write(err,bufx+4,strlen(bufx)-4);
     208:	68 80 1b 00 00       	push   $0x1b80
     20d:	e8 6e 0b 00 00       	call   d80 <strlen>
     212:	83 c4 0c             	add    $0xc,%esp
     215:	83 e8 04             	sub    $0x4,%eax
     218:	50                   	push   %eax
     219:	68 84 1b 00 00       	push   $0x1b84
     21e:	e9 32 fe ff ff       	jmp    55 <main+0x55>
      close(fd);
     223:	83 ec 0c             	sub    $0xc,%esp
     226:	50                   	push   %eax
     227:	e8 4e 0d 00 00       	call   f7a <close>
      break;
     22c:	83 c4 10             	add    $0x10,%esp
     22f:	e9 03 fe ff ff       	jmp    37 <main+0x37>
        if(e<0) exit();
     234:	e8 19 0d 00 00       	call   f52 <exit>
    panic("fork");
     239:	83 ec 0c             	sub    $0xc,%esp
     23c:	68 32 14 00 00       	push   $0x1432
     241:	e8 4a 01 00 00       	call   390 <panic>
      runcmd(parsecmd(bufx));
     246:	83 ec 0c             	sub    $0xc,%esp
     249:	68 80 1b 00 00       	push   $0x1b80
     24e:	e8 3d 0a 00 00       	call   c90 <parsecmd>
     253:	89 04 24             	mov    %eax,(%esp)
     256:	e8 55 01 00 00       	call   3b0 <runcmd>
        printf(2, "cannot cd %s\n", bufx+4); 
     25b:	50                   	push   %eax
     25c:	68 84 1b 00 00       	push   $0x1b84
     261:	68 b3 14 00 00       	push   $0x14b3
     266:	6a 02                	push   $0x2
     268:	e8 43 0e 00 00       	call   10b0 <printf>
     26d:	83 c4 10             	add    $0x10,%esp
     270:	e9 fb fd ff ff       	jmp    70 <main+0x70>
      if(bufx[strlen(bufx)-1]=='/') bufx[strlen(bufx)-1]='\0';
     275:	83 ec 0c             	sub    $0xc,%esp
     278:	68 80 1b 00 00       	push   $0x1b80
     27d:	e8 fe 0a 00 00       	call   d80 <strlen>
     282:	83 c4 10             	add    $0x10,%esp
     285:	c6 80 7f 1b 00 00 00 	movb   $0x0,0x1b7f(%eax)
     28c:	e9 e8 fe ff ff       	jmp    179 <main+0x179>
            temp[strlen(temp)-1]='\0';
     291:	8d 45 94             	lea    -0x6c(%ebp),%eax
     294:	83 ec 0c             	sub    $0xc,%esp
     297:	8d 5d 94             	lea    -0x6c(%ebp),%ebx
     29a:	50                   	push   %eax
     29b:	e8 e0 0a 00 00       	call   d80 <strlen>
     2a0:	c6 44 05 93 00       	movb   $0x0,-0x6d(%ebp,%eax,1)
            int nn=strlen(temp)-1;
     2a5:	8d 45 94             	lea    -0x6c(%ebp),%eax
     2a8:	89 04 24             	mov    %eax,(%esp)
     2ab:	e8 d0 0a 00 00       	call   d80 <strlen>
            while(temp[nn]!='/'){
     2b0:	83 c4 10             	add    $0x10,%esp
     2b3:	01 d8                	add    %ebx,%eax
     2b5:	eb 03                	jmp    2ba <main+0x2ba>
                temp[nn]='\0';
     2b7:	c6 00 00             	movb   $0x0,(%eax)
     2ba:	83 e8 01             	sub    $0x1,%eax
            while(temp[nn]!='/'){
     2bd:	80 38 2f             	cmpb   $0x2f,(%eax)
     2c0:	75 f5                	jne    2b7 <main+0x2b7>
            unlink("/temp.pwd");
     2c2:	83 ec 0c             	sub    $0xc,%esp
     2c5:	68 c1 14 00 00       	push   $0x14c1
     2ca:	e8 d3 0c 00 00       	call   fa2 <unlink>
            int err2=open("/temp.pwd",O_CREATE|O_RDWR);
     2cf:	58                   	pop    %eax
     2d0:	5a                   	pop    %edx
     2d1:	68 02 02 00 00       	push   $0x202
     2d6:	68 c1 14 00 00       	push   $0x14c1
     2db:	e8 b2 0c 00 00       	call   f92 <open>
     2e0:	89 c3                	mov    %eax,%ebx
            write(err2,temp,1);
     2e2:	8d 45 94             	lea    -0x6c(%ebp),%eax
     2e5:	83 c4 0c             	add    $0xc,%esp
     2e8:	6a 01                	push   $0x1
     2ea:	50                   	push   %eax
     2eb:	e9 65 fd ff ff       	jmp    55 <main+0x55>

000002f0 <getcmd>:
{
     2f0:	55                   	push   %ebp
     2f1:	89 e5                	mov    %esp,%ebp
     2f3:	56                   	push   %esi
     2f4:	53                   	push   %ebx
     2f5:	8b 75 0c             	mov    0xc(%ebp),%esi
     2f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     2fb:	83 ec 08             	sub    $0x8,%esp
     2fe:	68 08 14 00 00       	push   $0x1408
     303:	6a 02                	push   $0x2
     305:	e8 a6 0d 00 00       	call   10b0 <printf>
  memset(buf, 0, nbuf);
     30a:	83 c4 0c             	add    $0xc,%esp
     30d:	56                   	push   %esi
     30e:	6a 00                	push   $0x0
     310:	53                   	push   %ebx
     311:	e8 9a 0a 00 00       	call   db0 <memset>
  gets(buf, nbuf);
     316:	58                   	pop    %eax
     317:	5a                   	pop    %edx
     318:	56                   	push   %esi
     319:	53                   	push   %ebx
     31a:	e8 f1 0a 00 00       	call   e10 <gets>
  if(buf[0] == 0) // EOF
     31f:	83 c4 10             	add    $0x10,%esp
     322:	31 c0                	xor    %eax,%eax
     324:	80 3b 00             	cmpb   $0x0,(%ebx)
     327:	0f 94 c0             	sete   %al
}
     32a:	8d 65 f8             	lea    -0x8(%ebp),%esp
  if(buf[0] == 0) // EOF
     32d:	f7 d8                	neg    %eax
}
     32f:	5b                   	pop    %ebx
     330:	5e                   	pop    %esi
     331:	5d                   	pop    %ebp
     332:	c3                   	ret    
     333:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000340 <strcat>:
{
     340:	55                   	push   %ebp
     341:	89 e5                	mov    %esp,%ebp
     343:	53                   	push   %ebx
     344:	8b 45 08             	mov    0x8(%ebp),%eax
     347:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    while(*s1) ++s1;
     34a:	80 38 00             	cmpb   $0x0,(%eax)
     34d:	89 c2                	mov    %eax,%edx
     34f:	74 28                	je     379 <strcat+0x39>
     351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     358:	83 c2 01             	add    $0x1,%edx
     35b:	80 3a 00             	cmpb   $0x0,(%edx)
     35e:	75 f8                	jne    358 <strcat+0x18>
    while(*s2) *s1++ = *s2++;
     360:	0f b6 0b             	movzbl (%ebx),%ecx
     363:	84 c9                	test   %cl,%cl
     365:	74 19                	je     380 <strcat+0x40>
     367:	89 f6                	mov    %esi,%esi
     369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     370:	83 c2 01             	add    $0x1,%edx
     373:	83 c3 01             	add    $0x1,%ebx
     376:	88 4a ff             	mov    %cl,-0x1(%edx)
     379:	0f b6 0b             	movzbl (%ebx),%ecx
     37c:	84 c9                	test   %cl,%cl
     37e:	75 f0                	jne    370 <strcat+0x30>
    *s1=0;
     380:	c6 02 00             	movb   $0x0,(%edx)
}
     383:	5b                   	pop    %ebx
     384:	5d                   	pop    %ebp
     385:	c3                   	ret    
     386:	8d 76 00             	lea    0x0(%esi),%esi
     389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000390 <panic>:
{
     390:	55                   	push   %ebp
     391:	89 e5                	mov    %esp,%ebp
     393:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     396:	ff 75 08             	pushl  0x8(%ebp)
     399:	68 a5 14 00 00       	push   $0x14a5
     39e:	6a 02                	push   $0x2
     3a0:	e8 0b 0d 00 00       	call   10b0 <printf>
  exit();
     3a5:	e8 a8 0b 00 00       	call   f52 <exit>
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003b0 <runcmd>:
{
     3b0:	55                   	push   %ebp
     3b1:	89 e5                	mov    %esp,%ebp
     3b3:	53                   	push   %ebx
     3b4:	83 ec 14             	sub    $0x14,%esp
     3b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     3ba:	85 db                	test   %ebx,%ebx
     3bc:	74 3a                	je     3f8 <runcmd+0x48>
  switch(cmd->type){
     3be:	83 3b 05             	cmpl   $0x5,(%ebx)
     3c1:	0f 87 06 01 00 00    	ja     4cd <runcmd+0x11d>
     3c7:	8b 03                	mov    (%ebx),%eax
     3c9:	ff 24 85 d0 14 00 00 	jmp    *0x14d0(,%eax,4)
    if(ecmd->argv[0] == 0)
     3d0:	8b 43 04             	mov    0x4(%ebx),%eax
     3d3:	85 c0                	test   %eax,%eax
     3d5:	74 21                	je     3f8 <runcmd+0x48>
    exec(ecmd->argv[0], ecmd->argv);
     3d7:	52                   	push   %edx
     3d8:	52                   	push   %edx
     3d9:	8d 53 04             	lea    0x4(%ebx),%edx
     3dc:	52                   	push   %edx
     3dd:	50                   	push   %eax
     3de:	e8 a7 0b 00 00       	call   f8a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     3e3:	83 c4 0c             	add    $0xc,%esp
     3e6:	ff 73 04             	pushl  0x4(%ebx)
     3e9:	68 12 14 00 00       	push   $0x1412
     3ee:	6a 02                	push   $0x2
     3f0:	e8 bb 0c 00 00       	call   10b0 <printf>
    break;
     3f5:	83 c4 10             	add    $0x10,%esp
    exit();
     3f8:	e8 55 0b 00 00       	call   f52 <exit>
  pid = fork();
     3fd:	e8 48 0b 00 00       	call   f4a <fork>
  if(pid == -1)
     402:	83 f8 ff             	cmp    $0xffffffff,%eax
     405:	0f 84 cf 00 00 00    	je     4da <runcmd+0x12a>
    if(fork1() == 0)
     40b:	85 c0                	test   %eax,%eax
     40d:	75 e9                	jne    3f8 <runcmd+0x48>
      runcmd(bcmd->cmd);
     40f:	83 ec 0c             	sub    $0xc,%esp
     412:	ff 73 04             	pushl  0x4(%ebx)
     415:	e8 96 ff ff ff       	call   3b0 <runcmd>
    close(rcmd->fd);
     41a:	83 ec 0c             	sub    $0xc,%esp
     41d:	ff 73 14             	pushl  0x14(%ebx)
     420:	e8 55 0b 00 00       	call   f7a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     425:	59                   	pop    %ecx
     426:	58                   	pop    %eax
     427:	ff 73 10             	pushl  0x10(%ebx)
     42a:	ff 73 08             	pushl  0x8(%ebx)
     42d:	e8 60 0b 00 00       	call   f92 <open>
     432:	83 c4 10             	add    $0x10,%esp
     435:	85 c0                	test   %eax,%eax
     437:	79 d6                	jns    40f <runcmd+0x5f>
      printf(2, "open %s failed\n", rcmd->file);
     439:	52                   	push   %edx
     43a:	ff 73 08             	pushl  0x8(%ebx)
     43d:	68 22 14 00 00       	push   $0x1422
     442:	6a 02                	push   $0x2
     444:	e8 67 0c 00 00       	call   10b0 <printf>
      exit();
     449:	e8 04 0b 00 00       	call   f52 <exit>
    if(pipe(p) < 0)
     44e:	8d 45 f0             	lea    -0x10(%ebp),%eax
     451:	83 ec 0c             	sub    $0xc,%esp
     454:	50                   	push   %eax
     455:	e8 08 0b 00 00       	call   f62 <pipe>
     45a:	83 c4 10             	add    $0x10,%esp
     45d:	85 c0                	test   %eax,%eax
     45f:	0f 88 b0 00 00 00    	js     515 <runcmd+0x165>
  pid = fork();
     465:	e8 e0 0a 00 00       	call   f4a <fork>
  if(pid == -1)
     46a:	83 f8 ff             	cmp    $0xffffffff,%eax
     46d:	74 6b                	je     4da <runcmd+0x12a>
    if(fork1() == 0){
     46f:	85 c0                	test   %eax,%eax
     471:	0f 84 ab 00 00 00    	je     522 <runcmd+0x172>
  pid = fork();
     477:	e8 ce 0a 00 00       	call   f4a <fork>
  if(pid == -1)
     47c:	83 f8 ff             	cmp    $0xffffffff,%eax
     47f:	74 59                	je     4da <runcmd+0x12a>
    if(fork1() == 0){
     481:	85 c0                	test   %eax,%eax
     483:	74 62                	je     4e7 <runcmd+0x137>
    close(p[0]);
     485:	83 ec 0c             	sub    $0xc,%esp
     488:	ff 75 f0             	pushl  -0x10(%ebp)
     48b:	e8 ea 0a 00 00       	call   f7a <close>
    close(p[1]);
     490:	58                   	pop    %eax
     491:	ff 75 f4             	pushl  -0xc(%ebp)
     494:	e8 e1 0a 00 00       	call   f7a <close>
    wait();
     499:	e8 bc 0a 00 00       	call   f5a <wait>
    wait();
     49e:	e8 b7 0a 00 00       	call   f5a <wait>
    break;
     4a3:	83 c4 10             	add    $0x10,%esp
     4a6:	e9 4d ff ff ff       	jmp    3f8 <runcmd+0x48>
  pid = fork();
     4ab:	e8 9a 0a 00 00       	call   f4a <fork>
  if(pid == -1)
     4b0:	83 f8 ff             	cmp    $0xffffffff,%eax
     4b3:	74 25                	je     4da <runcmd+0x12a>
    if(fork1() == 0)
     4b5:	85 c0                	test   %eax,%eax
     4b7:	0f 84 52 ff ff ff    	je     40f <runcmd+0x5f>
    wait();
     4bd:	e8 98 0a 00 00       	call   f5a <wait>
    runcmd(lcmd->right);
     4c2:	83 ec 0c             	sub    $0xc,%esp
     4c5:	ff 73 08             	pushl  0x8(%ebx)
     4c8:	e8 e3 fe ff ff       	call   3b0 <runcmd>
    panic("runcmd");
     4cd:	83 ec 0c             	sub    $0xc,%esp
     4d0:	68 0b 14 00 00       	push   $0x140b
     4d5:	e8 b6 fe ff ff       	call   390 <panic>
    panic("fork");
     4da:	83 ec 0c             	sub    $0xc,%esp
     4dd:	68 32 14 00 00       	push   $0x1432
     4e2:	e8 a9 fe ff ff       	call   390 <panic>
      close(0);
     4e7:	83 ec 0c             	sub    $0xc,%esp
     4ea:	6a 00                	push   $0x0
     4ec:	e8 89 0a 00 00       	call   f7a <close>
      dup(p[0]);
     4f1:	5a                   	pop    %edx
     4f2:	ff 75 f0             	pushl  -0x10(%ebp)
     4f5:	e8 d0 0a 00 00       	call   fca <dup>
      close(p[0]);
     4fa:	59                   	pop    %ecx
     4fb:	ff 75 f0             	pushl  -0x10(%ebp)
     4fe:	e8 77 0a 00 00       	call   f7a <close>
      close(p[1]);
     503:	58                   	pop    %eax
     504:	ff 75 f4             	pushl  -0xc(%ebp)
     507:	e8 6e 0a 00 00       	call   f7a <close>
      runcmd(pcmd->right);
     50c:	58                   	pop    %eax
     50d:	ff 73 08             	pushl  0x8(%ebx)
     510:	e8 9b fe ff ff       	call   3b0 <runcmd>
      panic("pipe");
     515:	83 ec 0c             	sub    $0xc,%esp
     518:	68 37 14 00 00       	push   $0x1437
     51d:	e8 6e fe ff ff       	call   390 <panic>
      close(1);
     522:	83 ec 0c             	sub    $0xc,%esp
     525:	6a 01                	push   $0x1
     527:	e8 4e 0a 00 00       	call   f7a <close>
      dup(p[1]);
     52c:	58                   	pop    %eax
     52d:	ff 75 f4             	pushl  -0xc(%ebp)
     530:	e8 95 0a 00 00       	call   fca <dup>
      close(p[0]);
     535:	58                   	pop    %eax
     536:	ff 75 f0             	pushl  -0x10(%ebp)
     539:	e8 3c 0a 00 00       	call   f7a <close>
      close(p[1]);
     53e:	58                   	pop    %eax
     53f:	ff 75 f4             	pushl  -0xc(%ebp)
     542:	e8 33 0a 00 00       	call   f7a <close>
      runcmd(pcmd->left);
     547:	58                   	pop    %eax
     548:	ff 73 04             	pushl  0x4(%ebx)
     54b:	e8 60 fe ff ff       	call   3b0 <runcmd>

00000550 <fork1>:
{
     550:	55                   	push   %ebp
     551:	89 e5                	mov    %esp,%ebp
     553:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     556:	e8 ef 09 00 00       	call   f4a <fork>
  if(pid == -1)
     55b:	83 f8 ff             	cmp    $0xffffffff,%eax
     55e:	74 02                	je     562 <fork1+0x12>
  return pid;
}
     560:	c9                   	leave  
     561:	c3                   	ret    
    panic("fork");
     562:	83 ec 0c             	sub    $0xc,%esp
     565:	68 32 14 00 00       	push   $0x1432
     56a:	e8 21 fe ff ff       	call   390 <panic>
     56f:	90                   	nop

00000570 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     570:	55                   	push   %ebp
     571:	89 e5                	mov    %esp,%ebp
     573:	53                   	push   %ebx
     574:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     577:	6a 54                	push   $0x54
     579:	e8 92 0d 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     57e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     581:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     583:	6a 54                	push   $0x54
     585:	6a 00                	push   $0x0
     587:	50                   	push   %eax
     588:	e8 23 08 00 00       	call   db0 <memset>
  cmd->type = EXEC;
     58d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     593:	89 d8                	mov    %ebx,%eax
     595:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     598:	c9                   	leave  
     599:	c3                   	ret    
     59a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005a0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     5a0:	55                   	push   %ebp
     5a1:	89 e5                	mov    %esp,%ebp
     5a3:	53                   	push   %ebx
     5a4:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5a7:	6a 18                	push   $0x18
     5a9:	e8 62 0d 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5ae:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     5b1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     5b3:	6a 18                	push   $0x18
     5b5:	6a 00                	push   $0x0
     5b7:	50                   	push   %eax
     5b8:	e8 f3 07 00 00       	call   db0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     5bd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     5c0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     5c6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     5c9:	8b 45 0c             	mov    0xc(%ebp),%eax
     5cc:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     5cf:	8b 45 10             	mov    0x10(%ebp),%eax
     5d2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     5d5:	8b 45 14             	mov    0x14(%ebp),%eax
     5d8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     5db:	8b 45 18             	mov    0x18(%ebp),%eax
     5de:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     5e1:	89 d8                	mov    %ebx,%eax
     5e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5e6:	c9                   	leave  
     5e7:	c3                   	ret    
     5e8:	90                   	nop
     5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005f0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     5f0:	55                   	push   %ebp
     5f1:	89 e5                	mov    %esp,%ebp
     5f3:	53                   	push   %ebx
     5f4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5f7:	6a 0c                	push   $0xc
     5f9:	e8 12 0d 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5fe:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     601:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     603:	6a 0c                	push   $0xc
     605:	6a 00                	push   $0x0
     607:	50                   	push   %eax
     608:	e8 a3 07 00 00       	call   db0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     60d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     610:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     616:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     619:	8b 45 0c             	mov    0xc(%ebp),%eax
     61c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     61f:	89 d8                	mov    %ebx,%eax
     621:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     624:	c9                   	leave  
     625:	c3                   	ret    
     626:	8d 76 00             	lea    0x0(%esi),%esi
     629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000630 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     630:	55                   	push   %ebp
     631:	89 e5                	mov    %esp,%ebp
     633:	53                   	push   %ebx
     634:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     637:	6a 0c                	push   $0xc
     639:	e8 d2 0c 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     63e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     641:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     643:	6a 0c                	push   $0xc
     645:	6a 00                	push   $0x0
     647:	50                   	push   %eax
     648:	e8 63 07 00 00       	call   db0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     64d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     650:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     656:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     659:	8b 45 0c             	mov    0xc(%ebp),%eax
     65c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     65f:	89 d8                	mov    %ebx,%eax
     661:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     664:	c9                   	leave  
     665:	c3                   	ret    
     666:	8d 76 00             	lea    0x0(%esi),%esi
     669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000670 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     670:	55                   	push   %ebp
     671:	89 e5                	mov    %esp,%ebp
     673:	53                   	push   %ebx
     674:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     677:	6a 08                	push   $0x8
     679:	e8 92 0c 00 00       	call   1310 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     67e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     681:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     683:	6a 08                	push   $0x8
     685:	6a 00                	push   $0x0
     687:	50                   	push   %eax
     688:	e8 23 07 00 00       	call   db0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     68d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     690:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     696:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     699:	89 d8                	mov    %ebx,%eax
     69b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     69e:	c9                   	leave  
     69f:	c3                   	ret    

000006a0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     6a0:	55                   	push   %ebp
     6a1:	89 e5                	mov    %esp,%ebp
     6a3:	57                   	push   %edi
     6a4:	56                   	push   %esi
     6a5:	53                   	push   %ebx
     6a6:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     6a9:	8b 45 08             	mov    0x8(%ebp),%eax
{
     6ac:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     6af:	8b 7d 10             	mov    0x10(%ebp),%edi
  s = *ps;
     6b2:	8b 30                	mov    (%eax),%esi
  while(s < es && strchr(whitespace, *s))
     6b4:	39 de                	cmp    %ebx,%esi
     6b6:	72 0f                	jb     6c7 <gettoken+0x27>
     6b8:	eb 25                	jmp    6df <gettoken+0x3f>
     6ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     6c0:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     6c3:	39 f3                	cmp    %esi,%ebx
     6c5:	74 18                	je     6df <gettoken+0x3f>
     6c7:	0f be 06             	movsbl (%esi),%eax
     6ca:	83 ec 08             	sub    $0x8,%esp
     6cd:	50                   	push   %eax
     6ce:	68 f4 1a 00 00       	push   $0x1af4
     6d3:	e8 f8 06 00 00       	call   dd0 <strchr>
     6d8:	83 c4 10             	add    $0x10,%esp
     6db:	85 c0                	test   %eax,%eax
     6dd:	75 e1                	jne    6c0 <gettoken+0x20>
  if(q)
     6df:	85 ff                	test   %edi,%edi
     6e1:	74 02                	je     6e5 <gettoken+0x45>
    *q = s;
     6e3:	89 37                	mov    %esi,(%edi)
  ret = *s;
     6e5:	0f be 06             	movsbl (%esi),%eax
  switch(*s){
     6e8:	3c 29                	cmp    $0x29,%al
     6ea:	7f 54                	jg     740 <gettoken+0xa0>
     6ec:	3c 28                	cmp    $0x28,%al
     6ee:	0f 8d c8 00 00 00    	jge    7bc <gettoken+0x11c>
     6f4:	31 ff                	xor    %edi,%edi
     6f6:	84 c0                	test   %al,%al
     6f8:	0f 85 d2 00 00 00    	jne    7d0 <gettoken+0x130>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     6fe:	8b 55 14             	mov    0x14(%ebp),%edx
     701:	85 d2                	test   %edx,%edx
     703:	74 05                	je     70a <gettoken+0x6a>
    *eq = s;
     705:	8b 45 14             	mov    0x14(%ebp),%eax
     708:	89 30                	mov    %esi,(%eax)

  while(s < es && strchr(whitespace, *s))
     70a:	39 de                	cmp    %ebx,%esi
     70c:	72 09                	jb     717 <gettoken+0x77>
     70e:	eb 1f                	jmp    72f <gettoken+0x8f>
    s++;
     710:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     713:	39 f3                	cmp    %esi,%ebx
     715:	74 18                	je     72f <gettoken+0x8f>
     717:	0f be 06             	movsbl (%esi),%eax
     71a:	83 ec 08             	sub    $0x8,%esp
     71d:	50                   	push   %eax
     71e:	68 f4 1a 00 00       	push   $0x1af4
     723:	e8 a8 06 00 00       	call   dd0 <strchr>
     728:	83 c4 10             	add    $0x10,%esp
     72b:	85 c0                	test   %eax,%eax
     72d:	75 e1                	jne    710 <gettoken+0x70>
  *ps = s;
     72f:	8b 45 08             	mov    0x8(%ebp),%eax
     732:	89 30                	mov    %esi,(%eax)
  return ret;
}
     734:	8d 65 f4             	lea    -0xc(%ebp),%esp
     737:	89 f8                	mov    %edi,%eax
     739:	5b                   	pop    %ebx
     73a:	5e                   	pop    %esi
     73b:	5f                   	pop    %edi
     73c:	5d                   	pop    %ebp
     73d:	c3                   	ret    
     73e:	66 90                	xchg   %ax,%ax
  switch(*s){
     740:	3c 3e                	cmp    $0x3e,%al
     742:	75 1c                	jne    760 <gettoken+0xc0>
    if(*s == '>'){
     744:	80 7e 01 3e          	cmpb   $0x3e,0x1(%esi)
    s++;
     748:	8d 46 01             	lea    0x1(%esi),%eax
    if(*s == '>'){
     74b:	0f 84 a4 00 00 00    	je     7f5 <gettoken+0x155>
    s++;
     751:	89 c6                	mov    %eax,%esi
     753:	bf 3e 00 00 00       	mov    $0x3e,%edi
     758:	eb a4                	jmp    6fe <gettoken+0x5e>
     75a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  switch(*s){
     760:	7f 56                	jg     7b8 <gettoken+0x118>
     762:	8d 48 c5             	lea    -0x3b(%eax),%ecx
     765:	80 f9 01             	cmp    $0x1,%cl
     768:	76 52                	jbe    7bc <gettoken+0x11c>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     76a:	39 f3                	cmp    %esi,%ebx
     76c:	77 24                	ja     792 <gettoken+0xf2>
     76e:	eb 70                	jmp    7e0 <gettoken+0x140>
     770:	0f be 06             	movsbl (%esi),%eax
     773:	83 ec 08             	sub    $0x8,%esp
     776:	50                   	push   %eax
     777:	68 ec 1a 00 00       	push   $0x1aec
     77c:	e8 4f 06 00 00       	call   dd0 <strchr>
     781:	83 c4 10             	add    $0x10,%esp
     784:	85 c0                	test   %eax,%eax
     786:	75 1f                	jne    7a7 <gettoken+0x107>
      s++;
     788:	83 c6 01             	add    $0x1,%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     78b:	39 f3                	cmp    %esi,%ebx
     78d:	74 51                	je     7e0 <gettoken+0x140>
     78f:	0f be 06             	movsbl (%esi),%eax
     792:	83 ec 08             	sub    $0x8,%esp
     795:	50                   	push   %eax
     796:	68 f4 1a 00 00       	push   $0x1af4
     79b:	e8 30 06 00 00       	call   dd0 <strchr>
     7a0:	83 c4 10             	add    $0x10,%esp
     7a3:	85 c0                	test   %eax,%eax
     7a5:	74 c9                	je     770 <gettoken+0xd0>
    ret = 'a';
     7a7:	bf 61 00 00 00       	mov    $0x61,%edi
     7ac:	e9 4d ff ff ff       	jmp    6fe <gettoken+0x5e>
     7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     7b8:	3c 7c                	cmp    $0x7c,%al
     7ba:	75 ae                	jne    76a <gettoken+0xca>
  ret = *s;
     7bc:	0f be f8             	movsbl %al,%edi
    s++;
     7bf:	83 c6 01             	add    $0x1,%esi
    break;
     7c2:	e9 37 ff ff ff       	jmp    6fe <gettoken+0x5e>
     7c7:	89 f6                	mov    %esi,%esi
     7c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  switch(*s){
     7d0:	3c 26                	cmp    $0x26,%al
     7d2:	75 96                	jne    76a <gettoken+0xca>
     7d4:	eb e6                	jmp    7bc <gettoken+0x11c>
     7d6:	8d 76 00             	lea    0x0(%esi),%esi
     7d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  if(eq)
     7e0:	8b 45 14             	mov    0x14(%ebp),%eax
     7e3:	bf 61 00 00 00       	mov    $0x61,%edi
     7e8:	85 c0                	test   %eax,%eax
     7ea:	0f 85 15 ff ff ff    	jne    705 <gettoken+0x65>
     7f0:	e9 3a ff ff ff       	jmp    72f <gettoken+0x8f>
      s++;
     7f5:	83 c6 02             	add    $0x2,%esi
      ret = '+';
     7f8:	bf 2b 00 00 00       	mov    $0x2b,%edi
     7fd:	e9 fc fe ff ff       	jmp    6fe <gettoken+0x5e>
     802:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000810 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     810:	55                   	push   %ebp
     811:	89 e5                	mov    %esp,%ebp
     813:	57                   	push   %edi
     814:	56                   	push   %esi
     815:	53                   	push   %ebx
     816:	83 ec 0c             	sub    $0xc,%esp
     819:	8b 7d 08             	mov    0x8(%ebp),%edi
     81c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     81f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     821:	39 f3                	cmp    %esi,%ebx
     823:	72 12                	jb     837 <peek+0x27>
     825:	eb 28                	jmp    84f <peek+0x3f>
     827:	89 f6                	mov    %esi,%esi
     829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     830:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     833:	39 de                	cmp    %ebx,%esi
     835:	74 18                	je     84f <peek+0x3f>
     837:	0f be 03             	movsbl (%ebx),%eax
     83a:	83 ec 08             	sub    $0x8,%esp
     83d:	50                   	push   %eax
     83e:	68 f4 1a 00 00       	push   $0x1af4
     843:	e8 88 05 00 00       	call   dd0 <strchr>
     848:	83 c4 10             	add    $0x10,%esp
     84b:	85 c0                	test   %eax,%eax
     84d:	75 e1                	jne    830 <peek+0x20>
  *ps = s;
     84f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     851:	0f be 13             	movsbl (%ebx),%edx
     854:	31 c0                	xor    %eax,%eax
     856:	84 d2                	test   %dl,%dl
     858:	74 17                	je     871 <peek+0x61>
     85a:	83 ec 08             	sub    $0x8,%esp
     85d:	52                   	push   %edx
     85e:	ff 75 10             	pushl  0x10(%ebp)
     861:	e8 6a 05 00 00       	call   dd0 <strchr>
     866:	83 c4 10             	add    $0x10,%esp
     869:	85 c0                	test   %eax,%eax
     86b:	0f 95 c0             	setne  %al
     86e:	0f b6 c0             	movzbl %al,%eax
}
     871:	8d 65 f4             	lea    -0xc(%ebp),%esp
     874:	5b                   	pop    %ebx
     875:	5e                   	pop    %esi
     876:	5f                   	pop    %edi
     877:	5d                   	pop    %ebp
     878:	c3                   	ret    
     879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000880 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     880:	55                   	push   %ebp
     881:	89 e5                	mov    %esp,%ebp
     883:	57                   	push   %edi
     884:	56                   	push   %esi
     885:	53                   	push   %ebx
     886:	83 ec 1c             	sub    $0x1c,%esp
     889:	8b 75 0c             	mov    0xc(%ebp),%esi
     88c:	8b 5d 10             	mov    0x10(%ebp),%ebx
     88f:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     890:	83 ec 04             	sub    $0x4,%esp
     893:	68 59 14 00 00       	push   $0x1459
     898:	53                   	push   %ebx
     899:	56                   	push   %esi
     89a:	e8 71 ff ff ff       	call   810 <peek>
     89f:	83 c4 10             	add    $0x10,%esp
     8a2:	85 c0                	test   %eax,%eax
     8a4:	74 6a                	je     910 <parseredirs+0x90>
    tok = gettoken(ps, es, 0, 0);
     8a6:	6a 00                	push   $0x0
     8a8:	6a 00                	push   $0x0
     8aa:	53                   	push   %ebx
     8ab:	56                   	push   %esi
     8ac:	e8 ef fd ff ff       	call   6a0 <gettoken>
     8b1:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     8b3:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     8b6:	50                   	push   %eax
     8b7:	8d 45 e0             	lea    -0x20(%ebp),%eax
     8ba:	50                   	push   %eax
     8bb:	53                   	push   %ebx
     8bc:	56                   	push   %esi
     8bd:	e8 de fd ff ff       	call   6a0 <gettoken>
     8c2:	83 c4 20             	add    $0x20,%esp
     8c5:	83 f8 61             	cmp    $0x61,%eax
     8c8:	75 51                	jne    91b <parseredirs+0x9b>
      panic("missing file for redirection");
    switch(tok){
     8ca:	83 ff 3c             	cmp    $0x3c,%edi
     8cd:	74 31                	je     900 <parseredirs+0x80>
     8cf:	83 ff 3e             	cmp    $0x3e,%edi
     8d2:	74 05                	je     8d9 <parseredirs+0x59>
     8d4:	83 ff 2b             	cmp    $0x2b,%edi
     8d7:	75 b7                	jne    890 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     8d9:	83 ec 0c             	sub    $0xc,%esp
     8dc:	6a 01                	push   $0x1
     8de:	68 01 02 00 00       	push   $0x201
     8e3:	ff 75 e4             	pushl  -0x1c(%ebp)
     8e6:	ff 75 e0             	pushl  -0x20(%ebp)
     8e9:	ff 75 08             	pushl  0x8(%ebp)
     8ec:	e8 af fc ff ff       	call   5a0 <redircmd>
      break;
     8f1:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     8f4:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     8f7:	eb 97                	jmp    890 <parseredirs+0x10>
     8f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     900:	83 ec 0c             	sub    $0xc,%esp
     903:	6a 00                	push   $0x0
     905:	6a 00                	push   $0x0
     907:	eb da                	jmp    8e3 <parseredirs+0x63>
     909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     910:	8b 45 08             	mov    0x8(%ebp),%eax
     913:	8d 65 f4             	lea    -0xc(%ebp),%esp
     916:	5b                   	pop    %ebx
     917:	5e                   	pop    %esi
     918:	5f                   	pop    %edi
     919:	5d                   	pop    %ebp
     91a:	c3                   	ret    
      panic("missing file for redirection");
     91b:	83 ec 0c             	sub    $0xc,%esp
     91e:	68 3c 14 00 00       	push   $0x143c
     923:	e8 68 fa ff ff       	call   390 <panic>
     928:	90                   	nop
     929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000930 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     930:	55                   	push   %ebp
     931:	89 e5                	mov    %esp,%ebp
     933:	57                   	push   %edi
     934:	56                   	push   %esi
     935:	53                   	push   %ebx
     936:	83 ec 30             	sub    $0x30,%esp
     939:	8b 75 08             	mov    0x8(%ebp),%esi
     93c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     93f:	68 5c 14 00 00       	push   $0x145c
     944:	57                   	push   %edi
     945:	56                   	push   %esi
     946:	e8 c5 fe ff ff       	call   810 <peek>
     94b:	83 c4 10             	add    $0x10,%esp
     94e:	85 c0                	test   %eax,%eax
     950:	0f 85 92 00 00 00    	jne    9e8 <parseexec+0xb8>
     956:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
     958:	e8 13 fc ff ff       	call   570 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     95d:	83 ec 04             	sub    $0x4,%esp
  ret = execcmd();
     960:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
     963:	57                   	push   %edi
     964:	56                   	push   %esi
     965:	50                   	push   %eax
     966:	e8 15 ff ff ff       	call   880 <parseredirs>
     96b:	83 c4 10             	add    $0x10,%esp
     96e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     971:	eb 18                	jmp    98b <parseexec+0x5b>
     973:	90                   	nop
     974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     978:	83 ec 04             	sub    $0x4,%esp
     97b:	57                   	push   %edi
     97c:	56                   	push   %esi
     97d:	ff 75 d4             	pushl  -0x2c(%ebp)
     980:	e8 fb fe ff ff       	call   880 <parseredirs>
     985:	83 c4 10             	add    $0x10,%esp
     988:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     98b:	83 ec 04             	sub    $0x4,%esp
     98e:	68 73 14 00 00       	push   $0x1473
     993:	57                   	push   %edi
     994:	56                   	push   %esi
     995:	e8 76 fe ff ff       	call   810 <peek>
     99a:	83 c4 10             	add    $0x10,%esp
     99d:	85 c0                	test   %eax,%eax
     99f:	75 67                	jne    a08 <parseexec+0xd8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     9a1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     9a4:	50                   	push   %eax
     9a5:	8d 45 e0             	lea    -0x20(%ebp),%eax
     9a8:	50                   	push   %eax
     9a9:	57                   	push   %edi
     9aa:	56                   	push   %esi
     9ab:	e8 f0 fc ff ff       	call   6a0 <gettoken>
     9b0:	83 c4 10             	add    $0x10,%esp
     9b3:	85 c0                	test   %eax,%eax
     9b5:	74 51                	je     a08 <parseexec+0xd8>
    if(tok != 'a')
     9b7:	83 f8 61             	cmp    $0x61,%eax
     9ba:	75 6b                	jne    a27 <parseexec+0xf7>
    cmd->argv[argc] = q;
     9bc:	8b 45 e0             	mov    -0x20(%ebp),%eax
     9bf:	8b 55 d0             	mov    -0x30(%ebp),%edx
     9c2:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     9c6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     9c9:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     9cd:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     9d0:	83 fb 0a             	cmp    $0xa,%ebx
     9d3:	75 a3                	jne    978 <parseexec+0x48>
      panic("too many args");
     9d5:	83 ec 0c             	sub    $0xc,%esp
     9d8:	68 65 14 00 00       	push   $0x1465
     9dd:	e8 ae f9 ff ff       	call   390 <panic>
     9e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     9e8:	83 ec 08             	sub    $0x8,%esp
     9eb:	57                   	push   %edi
     9ec:	56                   	push   %esi
     9ed:	e8 5e 01 00 00       	call   b50 <parseblock>
     9f2:	83 c4 10             	add    $0x10,%esp
     9f5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     9f8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     9fb:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9fe:	5b                   	pop    %ebx
     9ff:	5e                   	pop    %esi
     a00:	5f                   	pop    %edi
     a01:	5d                   	pop    %ebp
     a02:	c3                   	ret    
     a03:	90                   	nop
     a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     a08:	8b 45 d0             	mov    -0x30(%ebp),%eax
     a0b:	8d 04 98             	lea    (%eax,%ebx,4),%eax
  cmd->argv[argc] = 0;
     a0e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     a15:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
}
     a1c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     a1f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a22:	5b                   	pop    %ebx
     a23:	5e                   	pop    %esi
     a24:	5f                   	pop    %edi
     a25:	5d                   	pop    %ebp
     a26:	c3                   	ret    
      panic("syntax");
     a27:	83 ec 0c             	sub    $0xc,%esp
     a2a:	68 5e 14 00 00       	push   $0x145e
     a2f:	e8 5c f9 ff ff       	call   390 <panic>
     a34:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     a3a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000a40 <parsepipe>:
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	57                   	push   %edi
     a44:	56                   	push   %esi
     a45:	53                   	push   %ebx
     a46:	83 ec 14             	sub    $0x14,%esp
     a49:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a4c:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parseexec(ps, es);
     a4f:	56                   	push   %esi
     a50:	53                   	push   %ebx
     a51:	e8 da fe ff ff       	call   930 <parseexec>
  if(peek(ps, es, "|")){
     a56:	83 c4 0c             	add    $0xc,%esp
  cmd = parseexec(ps, es);
     a59:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     a5b:	68 78 14 00 00       	push   $0x1478
     a60:	56                   	push   %esi
     a61:	53                   	push   %ebx
     a62:	e8 a9 fd ff ff       	call   810 <peek>
     a67:	83 c4 10             	add    $0x10,%esp
     a6a:	85 c0                	test   %eax,%eax
     a6c:	75 12                	jne    a80 <parsepipe+0x40>
}
     a6e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a71:	89 f8                	mov    %edi,%eax
     a73:	5b                   	pop    %ebx
     a74:	5e                   	pop    %esi
     a75:	5f                   	pop    %edi
     a76:	5d                   	pop    %ebp
     a77:	c3                   	ret    
     a78:	90                   	nop
     a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     a80:	6a 00                	push   $0x0
     a82:	6a 00                	push   $0x0
     a84:	56                   	push   %esi
     a85:	53                   	push   %ebx
     a86:	e8 15 fc ff ff       	call   6a0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a8b:	58                   	pop    %eax
     a8c:	5a                   	pop    %edx
     a8d:	56                   	push   %esi
     a8e:	53                   	push   %ebx
     a8f:	e8 ac ff ff ff       	call   a40 <parsepipe>
     a94:	89 7d 08             	mov    %edi,0x8(%ebp)
     a97:	89 45 0c             	mov    %eax,0xc(%ebp)
     a9a:	83 c4 10             	add    $0x10,%esp
}
     a9d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     aa0:	5b                   	pop    %ebx
     aa1:	5e                   	pop    %esi
     aa2:	5f                   	pop    %edi
     aa3:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     aa4:	e9 47 fb ff ff       	jmp    5f0 <pipecmd>
     aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ab0 <parseline>:
{
     ab0:	55                   	push   %ebp
     ab1:	89 e5                	mov    %esp,%ebp
     ab3:	57                   	push   %edi
     ab4:	56                   	push   %esi
     ab5:	53                   	push   %ebx
     ab6:	83 ec 14             	sub    $0x14,%esp
     ab9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     abc:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parsepipe(ps, es);
     abf:	56                   	push   %esi
     ac0:	53                   	push   %ebx
     ac1:	e8 7a ff ff ff       	call   a40 <parsepipe>
  while(peek(ps, es, "&")){
     ac6:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     ac9:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     acb:	eb 1b                	jmp    ae8 <parseline+0x38>
     acd:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     ad0:	6a 00                	push   $0x0
     ad2:	6a 00                	push   $0x0
     ad4:	56                   	push   %esi
     ad5:	53                   	push   %ebx
     ad6:	e8 c5 fb ff ff       	call   6a0 <gettoken>
    cmd = backcmd(cmd);
     adb:	89 3c 24             	mov    %edi,(%esp)
     ade:	e8 8d fb ff ff       	call   670 <backcmd>
     ae3:	83 c4 10             	add    $0x10,%esp
     ae6:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     ae8:	83 ec 04             	sub    $0x4,%esp
     aeb:	68 7a 14 00 00       	push   $0x147a
     af0:	56                   	push   %esi
     af1:	53                   	push   %ebx
     af2:	e8 19 fd ff ff       	call   810 <peek>
     af7:	83 c4 10             	add    $0x10,%esp
     afa:	85 c0                	test   %eax,%eax
     afc:	75 d2                	jne    ad0 <parseline+0x20>
  if(peek(ps, es, ";")){
     afe:	83 ec 04             	sub    $0x4,%esp
     b01:	68 76 14 00 00       	push   $0x1476
     b06:	56                   	push   %esi
     b07:	53                   	push   %ebx
     b08:	e8 03 fd ff ff       	call   810 <peek>
     b0d:	83 c4 10             	add    $0x10,%esp
     b10:	85 c0                	test   %eax,%eax
     b12:	75 0c                	jne    b20 <parseline+0x70>
}
     b14:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b17:	89 f8                	mov    %edi,%eax
     b19:	5b                   	pop    %ebx
     b1a:	5e                   	pop    %esi
     b1b:	5f                   	pop    %edi
     b1c:	5d                   	pop    %ebp
     b1d:	c3                   	ret    
     b1e:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     b20:	6a 00                	push   $0x0
     b22:	6a 00                	push   $0x0
     b24:	56                   	push   %esi
     b25:	53                   	push   %ebx
     b26:	e8 75 fb ff ff       	call   6a0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     b2b:	58                   	pop    %eax
     b2c:	5a                   	pop    %edx
     b2d:	56                   	push   %esi
     b2e:	53                   	push   %ebx
     b2f:	e8 7c ff ff ff       	call   ab0 <parseline>
     b34:	89 7d 08             	mov    %edi,0x8(%ebp)
     b37:	89 45 0c             	mov    %eax,0xc(%ebp)
     b3a:	83 c4 10             	add    $0x10,%esp
}
     b3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b40:	5b                   	pop    %ebx
     b41:	5e                   	pop    %esi
     b42:	5f                   	pop    %edi
     b43:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     b44:	e9 e7 fa ff ff       	jmp    630 <listcmd>
     b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b50 <parseblock>:
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	57                   	push   %edi
     b54:	56                   	push   %esi
     b55:	53                   	push   %ebx
     b56:	83 ec 10             	sub    $0x10,%esp
     b59:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b5c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     b5f:	68 5c 14 00 00       	push   $0x145c
     b64:	56                   	push   %esi
     b65:	53                   	push   %ebx
     b66:	e8 a5 fc ff ff       	call   810 <peek>
     b6b:	83 c4 10             	add    $0x10,%esp
     b6e:	85 c0                	test   %eax,%eax
     b70:	74 4a                	je     bbc <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     b72:	6a 00                	push   $0x0
     b74:	6a 00                	push   $0x0
     b76:	56                   	push   %esi
     b77:	53                   	push   %ebx
     b78:	e8 23 fb ff ff       	call   6a0 <gettoken>
  cmd = parseline(ps, es);
     b7d:	58                   	pop    %eax
     b7e:	5a                   	pop    %edx
     b7f:	56                   	push   %esi
     b80:	53                   	push   %ebx
     b81:	e8 2a ff ff ff       	call   ab0 <parseline>
  if(!peek(ps, es, ")"))
     b86:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(ps, es);
     b89:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     b8b:	68 98 14 00 00       	push   $0x1498
     b90:	56                   	push   %esi
     b91:	53                   	push   %ebx
     b92:	e8 79 fc ff ff       	call   810 <peek>
     b97:	83 c4 10             	add    $0x10,%esp
     b9a:	85 c0                	test   %eax,%eax
     b9c:	74 2b                	je     bc9 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     b9e:	6a 00                	push   $0x0
     ba0:	6a 00                	push   $0x0
     ba2:	56                   	push   %esi
     ba3:	53                   	push   %ebx
     ba4:	e8 f7 fa ff ff       	call   6a0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     ba9:	83 c4 0c             	add    $0xc,%esp
     bac:	56                   	push   %esi
     bad:	53                   	push   %ebx
     bae:	57                   	push   %edi
     baf:	e8 cc fc ff ff       	call   880 <parseredirs>
}
     bb4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     bb7:	5b                   	pop    %ebx
     bb8:	5e                   	pop    %esi
     bb9:	5f                   	pop    %edi
     bba:	5d                   	pop    %ebp
     bbb:	c3                   	ret    
    panic("parseblock");
     bbc:	83 ec 0c             	sub    $0xc,%esp
     bbf:	68 7c 14 00 00       	push   $0x147c
     bc4:	e8 c7 f7 ff ff       	call   390 <panic>
    panic("syntax - missing )");
     bc9:	83 ec 0c             	sub    $0xc,%esp
     bcc:	68 87 14 00 00       	push   $0x1487
     bd1:	e8 ba f7 ff ff       	call   390 <panic>
     bd6:	8d 76 00             	lea    0x0(%esi),%esi
     bd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000be0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     be0:	55                   	push   %ebp
     be1:	89 e5                	mov    %esp,%ebp
     be3:	53                   	push   %ebx
     be4:	83 ec 04             	sub    $0x4,%esp
     be7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     bea:	85 db                	test   %ebx,%ebx
     bec:	74 20                	je     c0e <nulterminate+0x2e>
    return 0;

  switch(cmd->type){
     bee:	83 3b 05             	cmpl   $0x5,(%ebx)
     bf1:	77 1b                	ja     c0e <nulterminate+0x2e>
     bf3:	8b 03                	mov    (%ebx),%eax
     bf5:	ff 24 85 e8 14 00 00 	jmp    *0x14e8(,%eax,4)
     bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     c00:	83 ec 0c             	sub    $0xc,%esp
     c03:	ff 73 04             	pushl  0x4(%ebx)
     c06:	e8 d5 ff ff ff       	call   be0 <nulterminate>
    break;
     c0b:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     c0e:	89 d8                	mov    %ebx,%eax
     c10:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c13:	c9                   	leave  
     c14:	c3                   	ret    
     c15:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(lcmd->left);
     c18:	83 ec 0c             	sub    $0xc,%esp
     c1b:	ff 73 04             	pushl  0x4(%ebx)
     c1e:	e8 bd ff ff ff       	call   be0 <nulterminate>
    nulterminate(lcmd->right);
     c23:	58                   	pop    %eax
     c24:	ff 73 08             	pushl  0x8(%ebx)
     c27:	e8 b4 ff ff ff       	call   be0 <nulterminate>
}
     c2c:	89 d8                	mov    %ebx,%eax
    break;
     c2e:	83 c4 10             	add    $0x10,%esp
}
     c31:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c34:	c9                   	leave  
     c35:	c3                   	ret    
     c36:	8d 76 00             	lea    0x0(%esi),%esi
     c39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    for(i=0; ecmd->argv[i]; i++)
     c40:	8b 4b 04             	mov    0x4(%ebx),%ecx
     c43:	8d 43 08             	lea    0x8(%ebx),%eax
     c46:	85 c9                	test   %ecx,%ecx
     c48:	74 c4                	je     c0e <nulterminate+0x2e>
     c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     c50:	8b 50 24             	mov    0x24(%eax),%edx
     c53:	83 c0 04             	add    $0x4,%eax
     c56:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     c59:	8b 50 fc             	mov    -0x4(%eax),%edx
     c5c:	85 d2                	test   %edx,%edx
     c5e:	75 f0                	jne    c50 <nulterminate+0x70>
}
     c60:	89 d8                	mov    %ebx,%eax
     c62:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c65:	c9                   	leave  
     c66:	c3                   	ret    
     c67:	89 f6                	mov    %esi,%esi
     c69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(rcmd->cmd);
     c70:	83 ec 0c             	sub    $0xc,%esp
     c73:	ff 73 04             	pushl  0x4(%ebx)
     c76:	e8 65 ff ff ff       	call   be0 <nulterminate>
    *rcmd->efile = 0;
     c7b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     c7e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     c81:	c6 00 00             	movb   $0x0,(%eax)
}
     c84:	89 d8                	mov    %ebx,%eax
     c86:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c89:	c9                   	leave  
     c8a:	c3                   	ret    
     c8b:	90                   	nop
     c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c90 <parsecmd>:
{
     c90:	55                   	push   %ebp
     c91:	89 e5                	mov    %esp,%ebp
     c93:	56                   	push   %esi
     c94:	53                   	push   %ebx
  es = s + strlen(s);
     c95:	8b 5d 08             	mov    0x8(%ebp),%ebx
     c98:	83 ec 0c             	sub    $0xc,%esp
     c9b:	53                   	push   %ebx
     c9c:	e8 df 00 00 00       	call   d80 <strlen>
  cmd = parseline(&s, es);
     ca1:	59                   	pop    %ecx
  es = s + strlen(s);
     ca2:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     ca4:	8d 45 08             	lea    0x8(%ebp),%eax
     ca7:	5e                   	pop    %esi
     ca8:	53                   	push   %ebx
     ca9:	50                   	push   %eax
     caa:	e8 01 fe ff ff       	call   ab0 <parseline>
     caf:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     cb1:	8d 45 08             	lea    0x8(%ebp),%eax
     cb4:	83 c4 0c             	add    $0xc,%esp
     cb7:	68 21 14 00 00       	push   $0x1421
     cbc:	53                   	push   %ebx
     cbd:	50                   	push   %eax
     cbe:	e8 4d fb ff ff       	call   810 <peek>
  if(s != es){
     cc3:	8b 45 08             	mov    0x8(%ebp),%eax
     cc6:	83 c4 10             	add    $0x10,%esp
     cc9:	39 d8                	cmp    %ebx,%eax
     ccb:	75 12                	jne    cdf <parsecmd+0x4f>
  nulterminate(cmd);
     ccd:	83 ec 0c             	sub    $0xc,%esp
     cd0:	56                   	push   %esi
     cd1:	e8 0a ff ff ff       	call   be0 <nulterminate>
}
     cd6:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cd9:	89 f0                	mov    %esi,%eax
     cdb:	5b                   	pop    %ebx
     cdc:	5e                   	pop    %esi
     cdd:	5d                   	pop    %ebp
     cde:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
     cdf:	52                   	push   %edx
     ce0:	50                   	push   %eax
     ce1:	68 9a 14 00 00       	push   $0x149a
     ce6:	6a 02                	push   $0x2
     ce8:	e8 c3 03 00 00       	call   10b0 <printf>
    panic("syntax");
     ced:	c7 04 24 5e 14 00 00 	movl   $0x145e,(%esp)
     cf4:	e8 97 f6 ff ff       	call   390 <panic>
     cf9:	66 90                	xchg   %ax,%ax
     cfb:	66 90                	xchg   %ax,%ax
     cfd:	66 90                	xchg   %ax,%ax
     cff:	90                   	nop

00000d00 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     d00:	55                   	push   %ebp
     d01:	89 e5                	mov    %esp,%ebp
     d03:	53                   	push   %ebx
     d04:	8b 45 08             	mov    0x8(%ebp),%eax
     d07:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     d0a:	89 c2                	mov    %eax,%edx
     d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d10:	83 c1 01             	add    $0x1,%ecx
     d13:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     d17:	83 c2 01             	add    $0x1,%edx
     d1a:	84 db                	test   %bl,%bl
     d1c:	88 5a ff             	mov    %bl,-0x1(%edx)
     d1f:	75 ef                	jne    d10 <strcpy+0x10>
    ;
  return os;
}
     d21:	5b                   	pop    %ebx
     d22:	5d                   	pop    %ebp
     d23:	c3                   	ret    
     d24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000d30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	53                   	push   %ebx
     d34:	8b 55 08             	mov    0x8(%ebp),%edx
     d37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     d3a:	0f b6 02             	movzbl (%edx),%eax
     d3d:	0f b6 19             	movzbl (%ecx),%ebx
     d40:	84 c0                	test   %al,%al
     d42:	75 1c                	jne    d60 <strcmp+0x30>
     d44:	eb 2a                	jmp    d70 <strcmp+0x40>
     d46:	8d 76 00             	lea    0x0(%esi),%esi
     d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     d50:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     d53:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     d56:	83 c1 01             	add    $0x1,%ecx
     d59:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     d5c:	84 c0                	test   %al,%al
     d5e:	74 10                	je     d70 <strcmp+0x40>
     d60:	38 d8                	cmp    %bl,%al
     d62:	74 ec                	je     d50 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     d64:	29 d8                	sub    %ebx,%eax
}
     d66:	5b                   	pop    %ebx
     d67:	5d                   	pop    %ebp
     d68:	c3                   	ret    
     d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d70:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     d72:	29 d8                	sub    %ebx,%eax
}
     d74:	5b                   	pop    %ebx
     d75:	5d                   	pop    %ebp
     d76:	c3                   	ret    
     d77:	89 f6                	mov    %esi,%esi
     d79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d80 <strlen>:

uint
strlen(const char *s)
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     d86:	80 39 00             	cmpb   $0x0,(%ecx)
     d89:	74 15                	je     da0 <strlen+0x20>
     d8b:	31 d2                	xor    %edx,%edx
     d8d:	8d 76 00             	lea    0x0(%esi),%esi
     d90:	83 c2 01             	add    $0x1,%edx
     d93:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     d97:	89 d0                	mov    %edx,%eax
     d99:	75 f5                	jne    d90 <strlen+0x10>
    ;
  return n;
}
     d9b:	5d                   	pop    %ebp
     d9c:	c3                   	ret    
     d9d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     da0:	31 c0                	xor    %eax,%eax
}
     da2:	5d                   	pop    %ebp
     da3:	c3                   	ret    
     da4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     daa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000db0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	57                   	push   %edi
     db4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     db7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     dba:	8b 45 0c             	mov    0xc(%ebp),%eax
     dbd:	89 d7                	mov    %edx,%edi
     dbf:	fc                   	cld    
     dc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     dc2:	89 d0                	mov    %edx,%eax
     dc4:	5f                   	pop    %edi
     dc5:	5d                   	pop    %ebp
     dc6:	c3                   	ret    
     dc7:	89 f6                	mov    %esi,%esi
     dc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000dd0 <strchr>:

char*
strchr(const char *s, char c)
{
     dd0:	55                   	push   %ebp
     dd1:	89 e5                	mov    %esp,%ebp
     dd3:	53                   	push   %ebx
     dd4:	8b 45 08             	mov    0x8(%ebp),%eax
     dd7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     dda:	0f b6 10             	movzbl (%eax),%edx
     ddd:	84 d2                	test   %dl,%dl
     ddf:	74 1d                	je     dfe <strchr+0x2e>
    if(*s == c)
     de1:	38 d3                	cmp    %dl,%bl
     de3:	89 d9                	mov    %ebx,%ecx
     de5:	75 0d                	jne    df4 <strchr+0x24>
     de7:	eb 17                	jmp    e00 <strchr+0x30>
     de9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     df0:	38 ca                	cmp    %cl,%dl
     df2:	74 0c                	je     e00 <strchr+0x30>
  for(; *s; s++)
     df4:	83 c0 01             	add    $0x1,%eax
     df7:	0f b6 10             	movzbl (%eax),%edx
     dfa:	84 d2                	test   %dl,%dl
     dfc:	75 f2                	jne    df0 <strchr+0x20>
      return (char*)s;
  return 0;
     dfe:	31 c0                	xor    %eax,%eax
}
     e00:	5b                   	pop    %ebx
     e01:	5d                   	pop    %ebp
     e02:	c3                   	ret    
     e03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e10 <gets>:

char*
gets(char *buf, int max)
{
     e10:	55                   	push   %ebp
     e11:	89 e5                	mov    %esp,%ebp
     e13:	57                   	push   %edi
     e14:	56                   	push   %esi
     e15:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e16:	31 f6                	xor    %esi,%esi
     e18:	89 f3                	mov    %esi,%ebx
{
     e1a:	83 ec 1c             	sub    $0x1c,%esp
     e1d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     e20:	eb 2f                	jmp    e51 <gets+0x41>
     e22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     e28:	8d 45 e7             	lea    -0x19(%ebp),%eax
     e2b:	83 ec 04             	sub    $0x4,%esp
     e2e:	6a 01                	push   $0x1
     e30:	50                   	push   %eax
     e31:	6a 00                	push   $0x0
     e33:	e8 32 01 00 00       	call   f6a <read>
    if(cc < 1)
     e38:	83 c4 10             	add    $0x10,%esp
     e3b:	85 c0                	test   %eax,%eax
     e3d:	7e 1c                	jle    e5b <gets+0x4b>
      break;
    buf[i++] = c;
     e3f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     e43:	83 c7 01             	add    $0x1,%edi
     e46:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     e49:	3c 0a                	cmp    $0xa,%al
     e4b:	74 23                	je     e70 <gets+0x60>
     e4d:	3c 0d                	cmp    $0xd,%al
     e4f:	74 1f                	je     e70 <gets+0x60>
  for(i=0; i+1 < max; ){
     e51:	83 c3 01             	add    $0x1,%ebx
     e54:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     e57:	89 fe                	mov    %edi,%esi
     e59:	7c cd                	jl     e28 <gets+0x18>
     e5b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     e5d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     e60:	c6 03 00             	movb   $0x0,(%ebx)
}
     e63:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e66:	5b                   	pop    %ebx
     e67:	5e                   	pop    %esi
     e68:	5f                   	pop    %edi
     e69:	5d                   	pop    %ebp
     e6a:	c3                   	ret    
     e6b:	90                   	nop
     e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e70:	8b 75 08             	mov    0x8(%ebp),%esi
     e73:	8b 45 08             	mov    0x8(%ebp),%eax
     e76:	01 de                	add    %ebx,%esi
     e78:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     e7a:	c6 03 00             	movb   $0x0,(%ebx)
}
     e7d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e80:	5b                   	pop    %ebx
     e81:	5e                   	pop    %esi
     e82:	5f                   	pop    %edi
     e83:	5d                   	pop    %ebp
     e84:	c3                   	ret    
     e85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e90 <stat>:

int
stat(const char *n, struct stat *st)
{
     e90:	55                   	push   %ebp
     e91:	89 e5                	mov    %esp,%ebp
     e93:	56                   	push   %esi
     e94:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e95:	83 ec 08             	sub    $0x8,%esp
     e98:	6a 00                	push   $0x0
     e9a:	ff 75 08             	pushl  0x8(%ebp)
     e9d:	e8 f0 00 00 00       	call   f92 <open>
  if(fd < 0)
     ea2:	83 c4 10             	add    $0x10,%esp
     ea5:	85 c0                	test   %eax,%eax
     ea7:	78 27                	js     ed0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     ea9:	83 ec 08             	sub    $0x8,%esp
     eac:	ff 75 0c             	pushl  0xc(%ebp)
     eaf:	89 c3                	mov    %eax,%ebx
     eb1:	50                   	push   %eax
     eb2:	e8 f3 00 00 00       	call   faa <fstat>
  close(fd);
     eb7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     eba:	89 c6                	mov    %eax,%esi
  close(fd);
     ebc:	e8 b9 00 00 00       	call   f7a <close>
  return r;
     ec1:	83 c4 10             	add    $0x10,%esp
}
     ec4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ec7:	89 f0                	mov    %esi,%eax
     ec9:	5b                   	pop    %ebx
     eca:	5e                   	pop    %esi
     ecb:	5d                   	pop    %ebp
     ecc:	c3                   	ret    
     ecd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     ed0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     ed5:	eb ed                	jmp    ec4 <stat+0x34>
     ed7:	89 f6                	mov    %esi,%esi
     ed9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ee0 <atoi>:

int
atoi(const char *s)
{
     ee0:	55                   	push   %ebp
     ee1:	89 e5                	mov    %esp,%ebp
     ee3:	53                   	push   %ebx
     ee4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     ee7:	0f be 11             	movsbl (%ecx),%edx
     eea:	8d 42 d0             	lea    -0x30(%edx),%eax
     eed:	3c 09                	cmp    $0x9,%al
  n = 0;
     eef:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     ef4:	77 1f                	ja     f15 <atoi+0x35>
     ef6:	8d 76 00             	lea    0x0(%esi),%esi
     ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     f00:	8d 04 80             	lea    (%eax,%eax,4),%eax
     f03:	83 c1 01             	add    $0x1,%ecx
     f06:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     f0a:	0f be 11             	movsbl (%ecx),%edx
     f0d:	8d 5a d0             	lea    -0x30(%edx),%ebx
     f10:	80 fb 09             	cmp    $0x9,%bl
     f13:	76 eb                	jbe    f00 <atoi+0x20>
  return n;
}
     f15:	5b                   	pop    %ebx
     f16:	5d                   	pop    %ebp
     f17:	c3                   	ret    
     f18:	90                   	nop
     f19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000f20 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     f20:	55                   	push   %ebp
     f21:	89 e5                	mov    %esp,%ebp
     f23:	56                   	push   %esi
     f24:	53                   	push   %ebx
     f25:	8b 5d 10             	mov    0x10(%ebp),%ebx
     f28:	8b 45 08             	mov    0x8(%ebp),%eax
     f2b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     f2e:	85 db                	test   %ebx,%ebx
     f30:	7e 14                	jle    f46 <memmove+0x26>
     f32:	31 d2                	xor    %edx,%edx
     f34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     f38:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     f3c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     f3f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     f42:	39 d3                	cmp    %edx,%ebx
     f44:	75 f2                	jne    f38 <memmove+0x18>
  return vdst;
}
     f46:	5b                   	pop    %ebx
     f47:	5e                   	pop    %esi
     f48:	5d                   	pop    %ebp
     f49:	c3                   	ret    

00000f4a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     f4a:	b8 01 00 00 00       	mov    $0x1,%eax
     f4f:	cd 40                	int    $0x40
     f51:	c3                   	ret    

00000f52 <exit>:
SYSCALL(exit)
     f52:	b8 02 00 00 00       	mov    $0x2,%eax
     f57:	cd 40                	int    $0x40
     f59:	c3                   	ret    

00000f5a <wait>:
SYSCALL(wait)
     f5a:	b8 03 00 00 00       	mov    $0x3,%eax
     f5f:	cd 40                	int    $0x40
     f61:	c3                   	ret    

00000f62 <pipe>:
SYSCALL(pipe)
     f62:	b8 04 00 00 00       	mov    $0x4,%eax
     f67:	cd 40                	int    $0x40
     f69:	c3                   	ret    

00000f6a <read>:
SYSCALL(read)
     f6a:	b8 05 00 00 00       	mov    $0x5,%eax
     f6f:	cd 40                	int    $0x40
     f71:	c3                   	ret    

00000f72 <write>:
SYSCALL(write)
     f72:	b8 10 00 00 00       	mov    $0x10,%eax
     f77:	cd 40                	int    $0x40
     f79:	c3                   	ret    

00000f7a <close>:
SYSCALL(close)
     f7a:	b8 15 00 00 00       	mov    $0x15,%eax
     f7f:	cd 40                	int    $0x40
     f81:	c3                   	ret    

00000f82 <kill>:
SYSCALL(kill)
     f82:	b8 06 00 00 00       	mov    $0x6,%eax
     f87:	cd 40                	int    $0x40
     f89:	c3                   	ret    

00000f8a <exec>:
SYSCALL(exec)
     f8a:	b8 07 00 00 00       	mov    $0x7,%eax
     f8f:	cd 40                	int    $0x40
     f91:	c3                   	ret    

00000f92 <open>:
SYSCALL(open)
     f92:	b8 0f 00 00 00       	mov    $0xf,%eax
     f97:	cd 40                	int    $0x40
     f99:	c3                   	ret    

00000f9a <mknod>:
SYSCALL(mknod)
     f9a:	b8 11 00 00 00       	mov    $0x11,%eax
     f9f:	cd 40                	int    $0x40
     fa1:	c3                   	ret    

00000fa2 <unlink>:
SYSCALL(unlink)
     fa2:	b8 12 00 00 00       	mov    $0x12,%eax
     fa7:	cd 40                	int    $0x40
     fa9:	c3                   	ret    

00000faa <fstat>:
SYSCALL(fstat)
     faa:	b8 08 00 00 00       	mov    $0x8,%eax
     faf:	cd 40                	int    $0x40
     fb1:	c3                   	ret    

00000fb2 <link>:
SYSCALL(link)
     fb2:	b8 13 00 00 00       	mov    $0x13,%eax
     fb7:	cd 40                	int    $0x40
     fb9:	c3                   	ret    

00000fba <mkdir>:
SYSCALL(mkdir)
     fba:	b8 14 00 00 00       	mov    $0x14,%eax
     fbf:	cd 40                	int    $0x40
     fc1:	c3                   	ret    

00000fc2 <chdir>:
SYSCALL(chdir)
     fc2:	b8 09 00 00 00       	mov    $0x9,%eax
     fc7:	cd 40                	int    $0x40
     fc9:	c3                   	ret    

00000fca <dup>:
SYSCALL(dup)
     fca:	b8 0a 00 00 00       	mov    $0xa,%eax
     fcf:	cd 40                	int    $0x40
     fd1:	c3                   	ret    

00000fd2 <getpid>:
SYSCALL(getpid)
     fd2:	b8 0b 00 00 00       	mov    $0xb,%eax
     fd7:	cd 40                	int    $0x40
     fd9:	c3                   	ret    

00000fda <sbrk>:
SYSCALL(sbrk)
     fda:	b8 0c 00 00 00       	mov    $0xc,%eax
     fdf:	cd 40                	int    $0x40
     fe1:	c3                   	ret    

00000fe2 <sleep>:
SYSCALL(sleep)
     fe2:	b8 0d 00 00 00       	mov    $0xd,%eax
     fe7:	cd 40                	int    $0x40
     fe9:	c3                   	ret    

00000fea <uptime>:
SYSCALL(uptime)
     fea:	b8 0e 00 00 00       	mov    $0xe,%eax
     fef:	cd 40                	int    $0x40
     ff1:	c3                   	ret    

00000ff2 <shutdown>:
SYSCALL(shutdown)
     ff2:	b8 16 00 00 00       	mov    $0x16,%eax
     ff7:	cd 40                	int    $0x40
     ff9:	c3                   	ret    

00000ffa <date>:
SYSCALL(date)
     ffa:	b8 17 00 00 00       	mov    $0x17,%eax
     fff:	cd 40                	int    $0x40
    1001:	c3                   	ret    

00001002 <cps>:
SYSCALL(cps)
    1002:	b8 18 00 00 00       	mov    $0x18,%eax
    1007:	cd 40                	int    $0x40
    1009:	c3                   	ret    
    100a:	66 90                	xchg   %ax,%ax
    100c:	66 90                	xchg   %ax,%ax
    100e:	66 90                	xchg   %ax,%ax

00001010 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1010:	55                   	push   %ebp
    1011:	89 e5                	mov    %esp,%ebp
    1013:	57                   	push   %edi
    1014:	56                   	push   %esi
    1015:	53                   	push   %ebx
    1016:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1019:	85 d2                	test   %edx,%edx
{
    101b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    101e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1020:	79 76                	jns    1098 <printint+0x88>
    1022:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1026:	74 70                	je     1098 <printint+0x88>
    x = -xx;
    1028:	f7 d8                	neg    %eax
    neg = 1;
    102a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1031:	31 f6                	xor    %esi,%esi
    1033:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1036:	eb 0a                	jmp    1042 <printint+0x32>
    1038:	90                   	nop
    1039:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1040:	89 fe                	mov    %edi,%esi
    1042:	31 d2                	xor    %edx,%edx
    1044:	8d 7e 01             	lea    0x1(%esi),%edi
    1047:	f7 f1                	div    %ecx
    1049:	0f b6 92 08 15 00 00 	movzbl 0x1508(%edx),%edx
  }while((x /= base) != 0);
    1050:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1052:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1055:	75 e9                	jne    1040 <printint+0x30>
  if(neg)
    1057:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    105a:	85 c0                	test   %eax,%eax
    105c:	74 08                	je     1066 <printint+0x56>
    buf[i++] = '-';
    105e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1063:	8d 7e 02             	lea    0x2(%esi),%edi
    1066:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    106a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    106d:	8d 76 00             	lea    0x0(%esi),%esi
    1070:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    1073:	83 ec 04             	sub    $0x4,%esp
    1076:	83 ee 01             	sub    $0x1,%esi
    1079:	6a 01                	push   $0x1
    107b:	53                   	push   %ebx
    107c:	57                   	push   %edi
    107d:	88 45 d7             	mov    %al,-0x29(%ebp)
    1080:	e8 ed fe ff ff       	call   f72 <write>

  while(--i >= 0)
    1085:	83 c4 10             	add    $0x10,%esp
    1088:	39 de                	cmp    %ebx,%esi
    108a:	75 e4                	jne    1070 <printint+0x60>
    putc(fd, buf[i]);
}
    108c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    108f:	5b                   	pop    %ebx
    1090:	5e                   	pop    %esi
    1091:	5f                   	pop    %edi
    1092:	5d                   	pop    %ebp
    1093:	c3                   	ret    
    1094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1098:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    109f:	eb 90                	jmp    1031 <printint+0x21>
    10a1:	eb 0d                	jmp    10b0 <printf>
    10a3:	90                   	nop
    10a4:	90                   	nop
    10a5:	90                   	nop
    10a6:	90                   	nop
    10a7:	90                   	nop
    10a8:	90                   	nop
    10a9:	90                   	nop
    10aa:	90                   	nop
    10ab:	90                   	nop
    10ac:	90                   	nop
    10ad:	90                   	nop
    10ae:	90                   	nop
    10af:	90                   	nop

000010b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    10b0:	55                   	push   %ebp
    10b1:	89 e5                	mov    %esp,%ebp
    10b3:	57                   	push   %edi
    10b4:	56                   	push   %esi
    10b5:	53                   	push   %ebx
    10b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10b9:	8b 75 0c             	mov    0xc(%ebp),%esi
    10bc:	0f b6 1e             	movzbl (%esi),%ebx
    10bf:	84 db                	test   %bl,%bl
    10c1:	0f 84 b3 00 00 00    	je     117a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    10c7:	8d 45 10             	lea    0x10(%ebp),%eax
    10ca:	83 c6 01             	add    $0x1,%esi
  state = 0;
    10cd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    10cf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    10d2:	eb 2f                	jmp    1103 <printf+0x53>
    10d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    10d8:	83 f8 25             	cmp    $0x25,%eax
    10db:	0f 84 a7 00 00 00    	je     1188 <printf+0xd8>
  write(fd, &c, 1);
    10e1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    10e4:	83 ec 04             	sub    $0x4,%esp
    10e7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    10ea:	6a 01                	push   $0x1
    10ec:	50                   	push   %eax
    10ed:	ff 75 08             	pushl  0x8(%ebp)
    10f0:	e8 7d fe ff ff       	call   f72 <write>
    10f5:	83 c4 10             	add    $0x10,%esp
    10f8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    10fb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    10ff:	84 db                	test   %bl,%bl
    1101:	74 77                	je     117a <printf+0xca>
    if(state == 0){
    1103:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1105:	0f be cb             	movsbl %bl,%ecx
    1108:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    110b:	74 cb                	je     10d8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    110d:	83 ff 25             	cmp    $0x25,%edi
    1110:	75 e6                	jne    10f8 <printf+0x48>
      if(c == 'd'){
    1112:	83 f8 64             	cmp    $0x64,%eax
    1115:	0f 84 05 01 00 00    	je     1220 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    111b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1121:	83 f9 70             	cmp    $0x70,%ecx
    1124:	74 72                	je     1198 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1126:	83 f8 73             	cmp    $0x73,%eax
    1129:	0f 84 99 00 00 00    	je     11c8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    112f:	83 f8 63             	cmp    $0x63,%eax
    1132:	0f 84 08 01 00 00    	je     1240 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1138:	83 f8 25             	cmp    $0x25,%eax
    113b:	0f 84 ef 00 00 00    	je     1230 <printf+0x180>
  write(fd, &c, 1);
    1141:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1144:	83 ec 04             	sub    $0x4,%esp
    1147:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    114b:	6a 01                	push   $0x1
    114d:	50                   	push   %eax
    114e:	ff 75 08             	pushl  0x8(%ebp)
    1151:	e8 1c fe ff ff       	call   f72 <write>
    1156:	83 c4 0c             	add    $0xc,%esp
    1159:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    115c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    115f:	6a 01                	push   $0x1
    1161:	50                   	push   %eax
    1162:	ff 75 08             	pushl  0x8(%ebp)
    1165:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1168:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    116a:	e8 03 fe ff ff       	call   f72 <write>
  for(i = 0; fmt[i]; i++){
    116f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    1173:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1176:	84 db                	test   %bl,%bl
    1178:	75 89                	jne    1103 <printf+0x53>
    }
  }
}
    117a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    117d:	5b                   	pop    %ebx
    117e:	5e                   	pop    %esi
    117f:	5f                   	pop    %edi
    1180:	5d                   	pop    %ebp
    1181:	c3                   	ret    
    1182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    1188:	bf 25 00 00 00       	mov    $0x25,%edi
    118d:	e9 66 ff ff ff       	jmp    10f8 <printf+0x48>
    1192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1198:	83 ec 0c             	sub    $0xc,%esp
    119b:	b9 10 00 00 00       	mov    $0x10,%ecx
    11a0:	6a 00                	push   $0x0
    11a2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    11a5:	8b 45 08             	mov    0x8(%ebp),%eax
    11a8:	8b 17                	mov    (%edi),%edx
    11aa:	e8 61 fe ff ff       	call   1010 <printint>
        ap++;
    11af:	89 f8                	mov    %edi,%eax
    11b1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    11b4:	31 ff                	xor    %edi,%edi
        ap++;
    11b6:	83 c0 04             	add    $0x4,%eax
    11b9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    11bc:	e9 37 ff ff ff       	jmp    10f8 <printf+0x48>
    11c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    11c8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11cb:	8b 08                	mov    (%eax),%ecx
        ap++;
    11cd:	83 c0 04             	add    $0x4,%eax
    11d0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    11d3:	85 c9                	test   %ecx,%ecx
    11d5:	0f 84 8e 00 00 00    	je     1269 <printf+0x1b9>
        while(*s != 0){
    11db:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    11de:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    11e0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    11e2:	84 c0                	test   %al,%al
    11e4:	0f 84 0e ff ff ff    	je     10f8 <printf+0x48>
    11ea:	89 75 d0             	mov    %esi,-0x30(%ebp)
    11ed:	89 de                	mov    %ebx,%esi
    11ef:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11f2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    11f5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    11f8:	83 ec 04             	sub    $0x4,%esp
          s++;
    11fb:	83 c6 01             	add    $0x1,%esi
    11fe:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1201:	6a 01                	push   $0x1
    1203:	57                   	push   %edi
    1204:	53                   	push   %ebx
    1205:	e8 68 fd ff ff       	call   f72 <write>
        while(*s != 0){
    120a:	0f b6 06             	movzbl (%esi),%eax
    120d:	83 c4 10             	add    $0x10,%esp
    1210:	84 c0                	test   %al,%al
    1212:	75 e4                	jne    11f8 <printf+0x148>
    1214:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1217:	31 ff                	xor    %edi,%edi
    1219:	e9 da fe ff ff       	jmp    10f8 <printf+0x48>
    121e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1220:	83 ec 0c             	sub    $0xc,%esp
    1223:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1228:	6a 01                	push   $0x1
    122a:	e9 73 ff ff ff       	jmp    11a2 <printf+0xf2>
    122f:	90                   	nop
  write(fd, &c, 1);
    1230:	83 ec 04             	sub    $0x4,%esp
    1233:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1236:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1239:	6a 01                	push   $0x1
    123b:	e9 21 ff ff ff       	jmp    1161 <printf+0xb1>
        putc(fd, *ap);
    1240:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1243:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1246:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1248:	6a 01                	push   $0x1
        ap++;
    124a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    124d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1250:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1253:	50                   	push   %eax
    1254:	ff 75 08             	pushl  0x8(%ebp)
    1257:	e8 16 fd ff ff       	call   f72 <write>
        ap++;
    125c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    125f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1262:	31 ff                	xor    %edi,%edi
    1264:	e9 8f fe ff ff       	jmp    10f8 <printf+0x48>
          s = "(null)";
    1269:	bb 00 15 00 00       	mov    $0x1500,%ebx
        while(*s != 0){
    126e:	b8 28 00 00 00       	mov    $0x28,%eax
    1273:	e9 72 ff ff ff       	jmp    11ea <printf+0x13a>
    1278:	66 90                	xchg   %ax,%ax
    127a:	66 90                	xchg   %ax,%ax
    127c:	66 90                	xchg   %ax,%ax
    127e:	66 90                	xchg   %ax,%ax

00001280 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1280:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1281:	a1 e4 1b 00 00       	mov    0x1be4,%eax
{
    1286:	89 e5                	mov    %esp,%ebp
    1288:	57                   	push   %edi
    1289:	56                   	push   %esi
    128a:	53                   	push   %ebx
    128b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    128e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1298:	39 c8                	cmp    %ecx,%eax
    129a:	8b 10                	mov    (%eax),%edx
    129c:	73 32                	jae    12d0 <free+0x50>
    129e:	39 d1                	cmp    %edx,%ecx
    12a0:	72 04                	jb     12a6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    12a2:	39 d0                	cmp    %edx,%eax
    12a4:	72 32                	jb     12d8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    12a6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    12a9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    12ac:	39 fa                	cmp    %edi,%edx
    12ae:	74 30                	je     12e0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    12b0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    12b3:	8b 50 04             	mov    0x4(%eax),%edx
    12b6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    12b9:	39 f1                	cmp    %esi,%ecx
    12bb:	74 3a                	je     12f7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    12bd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    12bf:	a3 e4 1b 00 00       	mov    %eax,0x1be4
}
    12c4:	5b                   	pop    %ebx
    12c5:	5e                   	pop    %esi
    12c6:	5f                   	pop    %edi
    12c7:	5d                   	pop    %ebp
    12c8:	c3                   	ret    
    12c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    12d0:	39 d0                	cmp    %edx,%eax
    12d2:	72 04                	jb     12d8 <free+0x58>
    12d4:	39 d1                	cmp    %edx,%ecx
    12d6:	72 ce                	jb     12a6 <free+0x26>
{
    12d8:	89 d0                	mov    %edx,%eax
    12da:	eb bc                	jmp    1298 <free+0x18>
    12dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    12e0:	03 72 04             	add    0x4(%edx),%esi
    12e3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    12e6:	8b 10                	mov    (%eax),%edx
    12e8:	8b 12                	mov    (%edx),%edx
    12ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    12ed:	8b 50 04             	mov    0x4(%eax),%edx
    12f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    12f3:	39 f1                	cmp    %esi,%ecx
    12f5:	75 c6                	jne    12bd <free+0x3d>
    p->s.size += bp->s.size;
    12f7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    12fa:	a3 e4 1b 00 00       	mov    %eax,0x1be4
    p->s.size += bp->s.size;
    12ff:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1302:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1305:	89 10                	mov    %edx,(%eax)
}
    1307:	5b                   	pop    %ebx
    1308:	5e                   	pop    %esi
    1309:	5f                   	pop    %edi
    130a:	5d                   	pop    %ebp
    130b:	c3                   	ret    
    130c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001310 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	57                   	push   %edi
    1314:	56                   	push   %esi
    1315:	53                   	push   %ebx
    1316:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1319:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    131c:	8b 15 e4 1b 00 00    	mov    0x1be4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1322:	8d 78 07             	lea    0x7(%eax),%edi
    1325:	c1 ef 03             	shr    $0x3,%edi
    1328:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    132b:	85 d2                	test   %edx,%edx
    132d:	0f 84 9d 00 00 00    	je     13d0 <malloc+0xc0>
    1333:	8b 02                	mov    (%edx),%eax
    1335:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1338:	39 cf                	cmp    %ecx,%edi
    133a:	76 6c                	jbe    13a8 <malloc+0x98>
    133c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1342:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1347:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    134a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1351:	eb 0e                	jmp    1361 <malloc+0x51>
    1353:	90                   	nop
    1354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1358:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    135a:	8b 48 04             	mov    0x4(%eax),%ecx
    135d:	39 f9                	cmp    %edi,%ecx
    135f:	73 47                	jae    13a8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1361:	39 05 e4 1b 00 00    	cmp    %eax,0x1be4
    1367:	89 c2                	mov    %eax,%edx
    1369:	75 ed                	jne    1358 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    136b:	83 ec 0c             	sub    $0xc,%esp
    136e:	56                   	push   %esi
    136f:	e8 66 fc ff ff       	call   fda <sbrk>
  if(p == (char*)-1)
    1374:	83 c4 10             	add    $0x10,%esp
    1377:	83 f8 ff             	cmp    $0xffffffff,%eax
    137a:	74 1c                	je     1398 <malloc+0x88>
  hp->s.size = nu;
    137c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    137f:	83 ec 0c             	sub    $0xc,%esp
    1382:	83 c0 08             	add    $0x8,%eax
    1385:	50                   	push   %eax
    1386:	e8 f5 fe ff ff       	call   1280 <free>
  return freep;
    138b:	8b 15 e4 1b 00 00    	mov    0x1be4,%edx
      if((p = morecore(nunits)) == 0)
    1391:	83 c4 10             	add    $0x10,%esp
    1394:	85 d2                	test   %edx,%edx
    1396:	75 c0                	jne    1358 <malloc+0x48>
        return 0;
  }
}
    1398:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    139b:	31 c0                	xor    %eax,%eax
}
    139d:	5b                   	pop    %ebx
    139e:	5e                   	pop    %esi
    139f:	5f                   	pop    %edi
    13a0:	5d                   	pop    %ebp
    13a1:	c3                   	ret    
    13a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    13a8:	39 cf                	cmp    %ecx,%edi
    13aa:	74 54                	je     1400 <malloc+0xf0>
        p->s.size -= nunits;
    13ac:	29 f9                	sub    %edi,%ecx
    13ae:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    13b1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    13b4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    13b7:	89 15 e4 1b 00 00    	mov    %edx,0x1be4
}
    13bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    13c0:	83 c0 08             	add    $0x8,%eax
}
    13c3:	5b                   	pop    %ebx
    13c4:	5e                   	pop    %esi
    13c5:	5f                   	pop    %edi
    13c6:	5d                   	pop    %ebp
    13c7:	c3                   	ret    
    13c8:	90                   	nop
    13c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    13d0:	c7 05 e4 1b 00 00 e8 	movl   $0x1be8,0x1be4
    13d7:	1b 00 00 
    13da:	c7 05 e8 1b 00 00 e8 	movl   $0x1be8,0x1be8
    13e1:	1b 00 00 
    base.s.size = 0;
    13e4:	b8 e8 1b 00 00       	mov    $0x1be8,%eax
    13e9:	c7 05 ec 1b 00 00 00 	movl   $0x0,0x1bec
    13f0:	00 00 00 
    13f3:	e9 44 ff ff ff       	jmp    133c <malloc+0x2c>
    13f8:	90                   	nop
    13f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1400:	8b 08                	mov    (%eax),%ecx
    1402:	89 0a                	mov    %ecx,(%edx)
    1404:	eb b1                	jmp    13b7 <malloc+0xa7>
