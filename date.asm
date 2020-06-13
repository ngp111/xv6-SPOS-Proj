
_date:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
void utc_day(void);
void day(char *);

// main
int main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	53                   	push   %ebx
       e:	51                   	push   %ecx
       f:	8b 01                	mov    (%ecx),%eax
      11:	8b 59 04             	mov    0x4(%ecx),%ebx
	// if user only types date in the command prompt
	if(argc==1)
      14:	83 f8 01             	cmp    $0x1,%eax
      17:	74 3d                	je     56 <main+0x56>
		today();  // this function prints today's date and current time (IST format)
	else
	{
		// if user uses -d option with the date command
		if((argc==3)&&(strcmp("-d",*(argv+1))==0))
      19:	83 f8 03             	cmp    $0x3,%eax
      1c:	74 3f                	je     5d <main+0x5d>
			day(*(argv+2));  // this function checks which option is chosen by user
					 // it then calls a suitable function to implement that option

		// if user uses -u option
		else if((argc==2)&&(strcmp("-u",*(argv+1))==0))
      1e:	83 f8 02             	cmp    $0x2,%eax
      21:	74 16                	je     39 <main+0x39>
			utc_day();  // this function prints today's date and current time (UTC format)

		// if the user types an invalid command
		else
			printf(1,"Invalid command. Please try again.\n");
      23:	50                   	push   %eax
      24:	50                   	push   %eax
      25:	68 54 13 00 00       	push   $0x1354
      2a:	6a 01                	push   $0x1
      2c:	e8 cf 0e 00 00       	call   f00 <printf>
      31:	83 c4 10             	add    $0x10,%esp
	}
exit();
      34:	e8 69 0d 00 00       	call   da2 <exit>
		else if((argc==2)&&(strcmp("-u",*(argv+1))==0))
      39:	52                   	push   %edx
      3a:	52                   	push   %edx
      3b:	ff 73 04             	pushl  0x4(%ebx)
      3e:	68 fe 12 00 00       	push   $0x12fe
      43:	e8 38 0b 00 00       	call   b80 <strcmp>
      48:	83 c4 10             	add    $0x10,%esp
      4b:	85 c0                	test   %eax,%eax
      4d:	75 d4                	jne    23 <main+0x23>
			utc_day();  // this function prints today's date and current time (UTC format)
      4f:	e8 0c 0a 00 00       	call   a60 <utc_day>
      54:	eb de                	jmp    34 <main+0x34>
		today();  // this function prints today's date and current time (IST format)
      56:	e8 65 06 00 00       	call   6c0 <today>
      5b:	eb d7                	jmp    34 <main+0x34>
		if((argc==3)&&(strcmp("-d",*(argv+1))==0))
      5d:	51                   	push   %ecx
      5e:	51                   	push   %ecx
      5f:	ff 73 04             	pushl  0x4(%ebx)
      62:	68 fb 12 00 00       	push   $0x12fb
      67:	e8 14 0b 00 00       	call   b80 <strcmp>
      6c:	83 c4 10             	add    $0x10,%esp
      6f:	85 c0                	test   %eax,%eax
      71:	75 b0                	jne    23 <main+0x23>
			day(*(argv+2));  // this function checks which option is chosen by user
      73:	83 ec 0c             	sub    $0xc,%esp
      76:	ff 73 08             	pushl  0x8(%ebx)
      79:	e8 82 0a 00 00       	call   b00 <day>
      7e:	83 c4 10             	add    $0x10,%esp
      81:	eb b1                	jmp    34 <main+0x34>
      83:	66 90                	xchg   %ax,%ax
      85:	66 90                	xchg   %ax,%ax
      87:	66 90                	xchg   %ax,%ax
      89:	66 90                	xchg   %ax,%ax
      8b:	66 90                	xchg   %ax,%ax
      8d:	66 90                	xchg   %ax,%ax
      8f:	90                   	nop

00000090 <check_leap.part.0>:
int check_leap(int x)
{
	int flag = 0;
	if(x%400==0)
		flag = 1;
	else if(x%100==0)
      90:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
int check_leap(int x)
      95:	89 c1                	mov    %eax,%ecx
      97:	55                   	push   %ebp
	else if(x%100==0)
      98:	f7 ea                	imul   %edx
int check_leap(int x)
      9a:	89 e5                	mov    %esp,%ebp
	else if(x%100==0)
      9c:	89 d0                	mov    %edx,%eax
      9e:	89 ca                	mov    %ecx,%edx
      a0:	c1 fa 1f             	sar    $0x1f,%edx
      a3:	c1 f8 05             	sar    $0x5,%eax
      a6:	29 d0                	sub    %edx,%eax
      a8:	89 ca                	mov    %ecx,%edx
      aa:	6b c0 64             	imul   $0x64,%eax,%eax
      ad:	29 c2                	sub    %eax,%edx
      af:	89 d0                	mov    %edx,%eax
      b1:	74 08                	je     bb <check_leap.part.0+0x2b>
		flag = 0;
	else if(x%4==0)
      b3:	31 c0                	xor    %eax,%eax
      b5:	83 e1 03             	and    $0x3,%ecx
      b8:	0f 94 c0             	sete   %al
		flag = 1;
	else 
		flag = 0;
	return(flag);
}
      bb:	5d                   	pop    %ebp
      bc:	c3                   	ret    
      bd:	8d 76 00             	lea    0x0(%esi),%esi

000000c0 <power>:
{
      c0:	55                   	push   %ebp
      c1:	89 e5                	mov    %esp,%ebp
      c3:	57                   	push   %edi
      c4:	56                   	push   %esi
      c5:	53                   	push   %ebx
      c6:	83 ec 0c             	sub    $0xc,%esp
	for(int i=0;i<y;i++)
      c9:	8b 45 0c             	mov    0xc(%ebp),%eax
      cc:	85 c0                	test   %eax,%eax
      ce:	7e 58                	jle    128 <power+0x68>
      d0:	8b 45 08             	mov    0x8(%ebp),%eax
	long long res = 1;
      d3:	31 d2                	xor    %edx,%edx
	for(int i=0;i<y;i++)
      d5:	31 db                	xor    %ebx,%ebx
	long long res = 1;
      d7:	89 55 ec             	mov    %edx,-0x14(%ebp)
      da:	89 c7                	mov    %eax,%edi
      dc:	89 c6                	mov    %eax,%esi
      de:	b8 01 00 00 00       	mov    $0x1,%eax
      e3:	c1 ff 1f             	sar    $0x1f,%edi
      e6:	89 45 e8             	mov    %eax,-0x18(%ebp)
      e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		res = res * x;
      f0:	8b 4d ec             	mov    -0x14(%ebp),%ecx
      f3:	8b 55 e8             	mov    -0x18(%ebp),%edx
	for(int i=0;i<y;i++)
      f6:	83 c3 01             	add    $0x1,%ebx
		res = res * x;
      f9:	8b 45 e8             	mov    -0x18(%ebp),%eax
      fc:	0f af d7             	imul   %edi,%edx
      ff:	0f af ce             	imul   %esi,%ecx
     102:	01 d1                	add    %edx,%ecx
     104:	f7 e6                	mul    %esi
     106:	89 55 ec             	mov    %edx,-0x14(%ebp)
     109:	01 4d ec             	add    %ecx,-0x14(%ebp)
	for(int i=0;i<y;i++)
     10c:	39 5d 0c             	cmp    %ebx,0xc(%ebp)
		res = res * x;
     10f:	89 45 e8             	mov    %eax,-0x18(%ebp)
	for(int i=0;i<y;i++)
     112:	75 dc                	jne    f0 <power+0x30>
     114:	8b 45 e8             	mov    -0x18(%ebp),%eax
     117:	8b 55 ec             	mov    -0x14(%ebp),%edx
}
     11a:	83 c4 0c             	add    $0xc,%esp
     11d:	5b                   	pop    %ebx
     11e:	5e                   	pop    %esi
     11f:	5f                   	pop    %edi
     120:	5d                   	pop    %ebp
     121:	c3                   	ret    
     122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     128:	83 c4 0c             	add    $0xc,%esp
	long long res = 1;
     12b:	b8 01 00 00 00       	mov    $0x1,%eax
     130:	31 d2                	xor    %edx,%edx
}
     132:	5b                   	pop    %ebx
     133:	5e                   	pop    %esi
     134:	5f                   	pop    %edi
     135:	5d                   	pop    %ebp
     136:	c3                   	ret    
     137:	89 f6                	mov    %esi,%esi
     139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000140 <check_leap>:
{
     140:	55                   	push   %ebp
	if(x%400==0)
     141:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
{
     146:	89 e5                	mov    %esp,%ebp
     148:	8b 4d 08             	mov    0x8(%ebp),%ecx
	if(x%400==0)
     14b:	89 c8                	mov    %ecx,%eax
     14d:	f7 ea                	imul   %edx
     14f:	89 c8                	mov    %ecx,%eax
     151:	c1 f8 1f             	sar    $0x1f,%eax
     154:	c1 fa 07             	sar    $0x7,%edx
     157:	29 c2                	sub    %eax,%edx
     159:	69 d2 90 01 00 00    	imul   $0x190,%edx,%edx
     15f:	39 d1                	cmp    %edx,%ecx
     161:	74 0d                	je     170 <check_leap+0x30>
}
     163:	5d                   	pop    %ebp
     164:	89 c8                	mov    %ecx,%eax
     166:	e9 25 ff ff ff       	jmp    90 <check_leap.part.0>
     16b:	90                   	nop
     16c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     170:	b8 01 00 00 00       	mov    $0x1,%eax
     175:	5d                   	pop    %ebp
     176:	c3                   	ret    
     177:	89 f6                	mov    %esi,%esi
     179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000180 <month_name>:

// this function prints the name of the month of the year
void month_name(int x)
{
     180:	55                   	push   %ebp
     181:	89 e5                	mov    %esp,%ebp
     183:	83 ec 08             	sub    $0x8,%esp
     186:	8b 45 08             	mov    0x8(%ebp),%eax
	switch(x)
     189:	83 f8 0c             	cmp    $0xc,%eax
     18c:	77 1c                	ja     1aa <month_name+0x2a>
     18e:	ff 24 85 04 13 00 00 	jmp    *0x1304(,%eax,4)
     195:	8d 76 00             	lea    0x0(%esi),%esi
		       break;
		case 10:printf(1," Oct");
		       break;
		case 11:printf(1," Nov");
		       break;
		case 12:printf(1," Dec");
     198:	83 ec 08             	sub    $0x8,%esp
     19b:	68 8f 12 00 00       	push   $0x128f
     1a0:	6a 01                	push   $0x1
     1a2:	e8 59 0d 00 00       	call   f00 <printf>
		       break;
     1a7:	83 c4 10             	add    $0x10,%esp
	}
}
     1aa:	c9                   	leave  
     1ab:	c3                   	ret    
     1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 1:printf(1," Jan");
     1b0:	83 ec 08             	sub    $0x8,%esp
     1b3:	68 58 12 00 00       	push   $0x1258
     1b8:	6a 01                	push   $0x1
     1ba:	e8 41 0d 00 00       	call   f00 <printf>
		       break;
     1bf:	83 c4 10             	add    $0x10,%esp
}
     1c2:	c9                   	leave  
     1c3:	c3                   	ret    
     1c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 2:printf(1," Feb");
     1c8:	83 ec 08             	sub    $0x8,%esp
     1cb:	68 5d 12 00 00       	push   $0x125d
     1d0:	6a 01                	push   $0x1
     1d2:	e8 29 0d 00 00       	call   f00 <printf>
		       break;
     1d7:	83 c4 10             	add    $0x10,%esp
}
     1da:	c9                   	leave  
     1db:	c3                   	ret    
     1dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 3:printf(1," Mar");
     1e0:	83 ec 08             	sub    $0x8,%esp
     1e3:	68 62 12 00 00       	push   $0x1262
     1e8:	6a 01                	push   $0x1
     1ea:	e8 11 0d 00 00       	call   f00 <printf>
		       break;
     1ef:	83 c4 10             	add    $0x10,%esp
}
     1f2:	c9                   	leave  
     1f3:	c3                   	ret    
     1f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 4:printf(1," Apr");
     1f8:	83 ec 08             	sub    $0x8,%esp
     1fb:	68 67 12 00 00       	push   $0x1267
     200:	6a 01                	push   $0x1
     202:	e8 f9 0c 00 00       	call   f00 <printf>
		       break;
     207:	83 c4 10             	add    $0x10,%esp
}
     20a:	c9                   	leave  
     20b:	c3                   	ret    
     20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 5:printf(1," May");
     210:	83 ec 08             	sub    $0x8,%esp
     213:	68 6c 12 00 00       	push   $0x126c
     218:	6a 01                	push   $0x1
     21a:	e8 e1 0c 00 00       	call   f00 <printf>
		       break;
     21f:	83 c4 10             	add    $0x10,%esp
}
     222:	c9                   	leave  
     223:	c3                   	ret    
     224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 6:printf(1," Jun");
     228:	83 ec 08             	sub    $0x8,%esp
     22b:	68 71 12 00 00       	push   $0x1271
     230:	6a 01                	push   $0x1
     232:	e8 c9 0c 00 00       	call   f00 <printf>
		       break;
     237:	83 c4 10             	add    $0x10,%esp
}
     23a:	c9                   	leave  
     23b:	c3                   	ret    
     23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 7:printf(1," Jul");
     240:	83 ec 08             	sub    $0x8,%esp
     243:	68 76 12 00 00       	push   $0x1276
     248:	6a 01                	push   $0x1
     24a:	e8 b1 0c 00 00       	call   f00 <printf>
		       break;
     24f:	83 c4 10             	add    $0x10,%esp
}
     252:	c9                   	leave  
     253:	c3                   	ret    
     254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 8:printf(1," Aug");
     258:	83 ec 08             	sub    $0x8,%esp
     25b:	68 7b 12 00 00       	push   $0x127b
     260:	6a 01                	push   $0x1
     262:	e8 99 0c 00 00       	call   f00 <printf>
		       break;
     267:	83 c4 10             	add    $0x10,%esp
}
     26a:	c9                   	leave  
     26b:	c3                   	ret    
     26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 9:printf(1," Sep");
     270:	83 ec 08             	sub    $0x8,%esp
     273:	68 80 12 00 00       	push   $0x1280
     278:	6a 01                	push   $0x1
     27a:	e8 81 0c 00 00       	call   f00 <printf>
		       break;
     27f:	83 c4 10             	add    $0x10,%esp
}
     282:	c9                   	leave  
     283:	c3                   	ret    
     284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 10:printf(1," Oct");
     288:	83 ec 08             	sub    $0x8,%esp
     28b:	68 85 12 00 00       	push   $0x1285
     290:	6a 01                	push   $0x1
     292:	e8 69 0c 00 00       	call   f00 <printf>
		       break;
     297:	83 c4 10             	add    $0x10,%esp
}
     29a:	c9                   	leave  
     29b:	c3                   	ret    
     29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		case 11:printf(1," Nov");
     2a0:	83 ec 08             	sub    $0x8,%esp
     2a3:	68 8a 12 00 00       	push   $0x128a
     2a8:	6a 01                	push   $0x1
     2aa:	e8 51 0c 00 00       	call   f00 <printf>
		       break;
     2af:	83 c4 10             	add    $0x10,%esp
}
     2b2:	c9                   	leave  
     2b3:	c3                   	ret    
     2b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     2ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002c0 <day_name>:

// this function prints the name of the day of the week
void day_name(int x,int y,int z)
{
     2c0:	55                   	push   %ebp
     2c1:	89 e5                	mov    %esp,%ebp
     2c3:	57                   	push   %edi
     2c4:	56                   	push   %esi
     2c5:	53                   	push   %ebx
	int initial_day = 4;
	int count = 0;	
     2c6:	31 db                	xor    %ebx,%ebx
{
     2c8:	83 ec 1c             	sub    $0x1c,%esp
     2cb:	8b 4d 08             	mov    0x8(%ebp),%ecx
     2ce:	8b 45 10             	mov    0x10(%ebp),%eax
     2d1:	8b 7d 0c             	mov    0xc(%ebp),%edi
	if(x>1970)
     2d4:	81 f9 b2 07 00 00    	cmp    $0x7b2,%ecx
{
     2da:	89 45 e4             	mov    %eax,-0x1c(%ebp)
	if(x>1970)
     2dd:	7e 4f                	jle    32e <day_name+0x6e>
	if(x%400==0)
     2df:	89 7d e0             	mov    %edi,-0x20(%ebp)
	{
		for(int i=1970;i<x;i++)
     2e2:	be b2 07 00 00       	mov    $0x7b2,%esi
	if(x%400==0)
     2e7:	89 cf                	mov    %ecx,%edi
     2e9:	eb 1d                	jmp    308 <day_name+0x48>
     2eb:	90                   	nop
     2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     2f0:	89 f0                	mov    %esi,%eax
     2f2:	e8 99 fd ff ff       	call   90 <check_leap.part.0>
		{
			if(check_leap(i))
     2f7:	85 c0                	test   %eax,%eax
     2f9:	75 21                	jne    31c <day_name+0x5c>
		for(int i=1970;i<x;i++)
     2fb:	83 c6 01             	add    $0x1,%esi
				count += 366;
			else
				count += 365;
     2fe:	81 c3 6d 01 00 00    	add    $0x16d,%ebx
		for(int i=1970;i<x;i++)
     304:	39 f7                	cmp    %esi,%edi
     306:	74 21                	je     329 <day_name+0x69>
	if(x%400==0)
     308:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     30d:	f7 e6                	mul    %esi
     30f:	c1 ea 07             	shr    $0x7,%edx
     312:	69 d2 90 01 00 00    	imul   $0x190,%edx,%edx
     318:	39 d6                	cmp    %edx,%esi
     31a:	75 d4                	jne    2f0 <day_name+0x30>
		for(int i=1970;i<x;i++)
     31c:	83 c6 01             	add    $0x1,%esi
				count += 366;
     31f:	81 c3 6e 01 00 00    	add    $0x16e,%ebx
		for(int i=1970;i<x;i++)
     325:	39 f7                	cmp    %esi,%edi
     327:	75 df                	jne    308 <day_name+0x48>
     329:	89 f9                	mov    %edi,%ecx
     32b:	8b 7d e0             	mov    -0x20(%ebp),%edi
		}
	}
	for(int i=1;i<y;i++)
     32e:	83 ff 01             	cmp    $0x1,%edi
     331:	7e 57                	jle    38a <day_name+0xca>
	if(x%400==0)
     333:	89 c8                	mov    %ecx,%eax
     335:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
     33a:	be 01 00 00 00       	mov    $0x1,%esi
     33f:	f7 ea                	imul   %edx
     341:	89 c8                	mov    %ecx,%eax
     343:	c1 f8 1f             	sar    $0x1f,%eax
     346:	c1 fa 07             	sar    $0x7,%edx
     349:	29 c2                	sub    %eax,%edx
     34b:	89 c8                	mov    %ecx,%eax
     34d:	69 d2 90 01 00 00    	imul   $0x190,%edx,%edx
     353:	29 d0                	sub    %edx,%eax
     355:	89 c2                	mov    %eax,%edx
     357:	89 f6                	mov    %esi,%esi
     359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	{
		if(i==2)
     360:	83 fe 02             	cmp    $0x2,%esi
     363:	0f 84 f7 00 00 00    	je     460 <day_name+0x1a0>
			if(check_leap(x))
				count += 29;
			else
				count += 28;
		}
		else if((i<8)&&(i%2==1))
     369:	83 fe 07             	cmp    $0x7,%esi
			count += 31;
     36c:	89 d8                	mov    %ebx,%eax
		else if((i<8)&&(i%2==1))
     36e:	0f 8e dc 00 00 00    	jle    450 <day_name+0x190>
     374:	31 db                	xor    %ebx,%ebx
     376:	f7 c6 01 00 00 00    	test   $0x1,%esi
     37c:	0f 94 c3             	sete   %bl
     37f:	8d 5c 03 1e          	lea    0x1e(%ebx,%eax,1),%ebx
	for(int i=1;i<y;i++)
     383:	83 c6 01             	add    $0x1,%esi
     386:	39 f7                	cmp    %esi,%edi
     388:	75 d6                	jne    360 <day_name+0xa0>
		else if((i>=8)&&(i%2==0))
			count += 31;
		else
			count += 30;
	}
	int final_day = (initial_day+count+z-1)%7;
     38a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     38d:	ba 93 24 49 92       	mov    $0x92492493,%edx
     392:	8d 4c 03 03          	lea    0x3(%ebx,%eax,1),%ecx
     396:	89 c8                	mov    %ecx,%eax
     398:	f7 ea                	imul   %edx
     39a:	89 c8                	mov    %ecx,%eax
     39c:	c1 f8 1f             	sar    $0x1f,%eax
     39f:	01 ca                	add    %ecx,%edx
     3a1:	c1 fa 02             	sar    $0x2,%edx
     3a4:	29 c2                	sub    %eax,%edx
     3a6:	8d 04 d5 00 00 00 00 	lea    0x0(,%edx,8),%eax
     3ad:	29 d0                	sub    %edx,%eax
     3af:	29 c1                	sub    %eax,%ecx
	switch(final_day)
     3b1:	83 f9 06             	cmp    $0x6,%ecx
     3b4:	0f 87 8e 00 00 00    	ja     448 <day_name+0x188>
     3ba:	ff 24 8d 38 13 00 00 	jmp    *0x1338(,%ecx,4)
     3c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		       break;
		case 3:printf(1,"Wed");
		       break;
		case 4:printf(1,"Thur");
		       break;
		case 5:printf(1,"Fri");
     3c8:	c7 45 0c a9 12 00 00 	movl   $0x12a9,0xc(%ebp)
		       break;
		case 6:printf(1,"Sat");
     3cf:	c7 45 08 01 00 00 00 	movl   $0x1,0x8(%ebp)
		       break;
	 }
}
     3d6:	83 c4 1c             	add    $0x1c,%esp
     3d9:	5b                   	pop    %ebx
     3da:	5e                   	pop    %esi
     3db:	5f                   	pop    %edi
     3dc:	5d                   	pop    %ebp
		case 6:printf(1,"Sat");
     3dd:	e9 1e 0b 00 00       	jmp    f00 <printf>
     3e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3e8:	c7 45 0c ad 12 00 00 	movl   $0x12ad,0xc(%ebp)
     3ef:	eb de                	jmp    3cf <day_name+0x10f>
     3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		case 0:printf(1,"Sun");
     3f8:	c7 45 0c 94 12 00 00 	movl   $0x1294,0xc(%ebp)
     3ff:	eb ce                	jmp    3cf <day_name+0x10f>
     401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		case 1:printf(1,"Mon");
     408:	c7 45 0c 98 12 00 00 	movl   $0x1298,0xc(%ebp)
     40f:	eb be                	jmp    3cf <day_name+0x10f>
     411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		case 2:printf(1,"Tue");
     418:	c7 45 0c 9c 12 00 00 	movl   $0x129c,0xc(%ebp)
     41f:	eb ae                	jmp    3cf <day_name+0x10f>
     421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		case 3:printf(1,"Wed");
     428:	c7 45 0c a0 12 00 00 	movl   $0x12a0,0xc(%ebp)
     42f:	eb 9e                	jmp    3cf <day_name+0x10f>
     431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		case 4:printf(1,"Thur");
     438:	c7 45 0c a4 12 00 00 	movl   $0x12a4,0xc(%ebp)
     43f:	eb 8e                	jmp    3cf <day_name+0x10f>
     441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
}
     448:	83 c4 1c             	add    $0x1c,%esp
     44b:	5b                   	pop    %ebx
     44c:	5e                   	pop    %esi
     44d:	5f                   	pop    %edi
     44e:	5d                   	pop    %ebp
     44f:	c3                   	ret    
			count += 31;
     450:	89 f3                	mov    %esi,%ebx
     452:	83 e3 01             	and    $0x1,%ebx
     455:	8d 5c 03 1e          	lea    0x1e(%ebx,%eax,1),%ebx
     459:	e9 25 ff ff ff       	jmp    383 <day_name+0xc3>
     45e:	66 90                	xchg   %ax,%ax
	if(x%400==0)
     460:	85 d2                	test   %edx,%edx
     462:	74 1f                	je     483 <day_name+0x1c3>
     464:	89 c8                	mov    %ecx,%eax
     466:	89 55 dc             	mov    %edx,-0x24(%ebp)
     469:	89 4d e0             	mov    %ecx,-0x20(%ebp)
     46c:	e8 1f fc ff ff       	call   90 <check_leap.part.0>
			if(check_leap(x))
     471:	85 c0                	test   %eax,%eax
     473:	8b 4d e0             	mov    -0x20(%ebp),%ecx
     476:	8b 55 dc             	mov    -0x24(%ebp),%edx
     479:	75 08                	jne    483 <day_name+0x1c3>
				count += 28;
     47b:	83 c3 1c             	add    $0x1c,%ebx
     47e:	e9 00 ff ff ff       	jmp    383 <day_name+0xc3>
				count += 29;
     483:	83 c3 1d             	add    $0x1d,%ebx
     486:	e9 f8 fe ff ff       	jmp    383 <day_name+0xc3>
     48b:	90                   	nop
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <time>:

// this function prints the current time in IST format
void time()
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	83 ec 34             	sub    $0x34,%esp
	struct rtcdate r;
	if (date(&r)) 
     496:	8d 45 e0             	lea    -0x20(%ebp),%eax
     499:	50                   	push   %eax
     49a:	e8 ab 09 00 00       	call   e4a <date>
     49f:	83 c4 10             	add    $0x10,%esp
     4a2:	85 c0                	test   %eax,%eax
     4a4:	75 50                	jne    4f6 <time+0x66>
	{
		printf(2, "date failed\n");
		exit();
	}
	if(r.minute+30>59)
     4a6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
     4a9:	8b 45 e8             	mov    -0x18(%ebp),%eax
     4ac:	8d 51 1e             	lea    0x1e(%ecx),%edx
     4af:	83 fa 3b             	cmp    $0x3b,%edx
     4b2:	77 34                	ja     4e8 <time+0x58>
		r.hour += 6;
		r.minute = r.minute+30-59;
	}
	else
	{
		r.hour += 5;
     4b4:	83 c0 05             	add    $0x5,%eax
		r.minute += 30;
     4b7:	89 55 e4             	mov    %edx,-0x1c(%ebp)
		r.hour += 5;
     4ba:	89 45 e8             	mov    %eax,-0x18(%ebp)
	}
	if(r.hour>=24)
     4bd:	83 f8 17             	cmp    $0x17,%eax
     4c0:	76 06                	jbe    4c8 <time+0x38>
		r.hour -= 24;
     4c2:	83 e8 18             	sub    $0x18,%eax
     4c5:	89 45 e8             	mov    %eax,-0x18(%ebp)
	printf(1," %d:%d:%d",r.hour,r.minute,r.second);
     4c8:	83 ec 0c             	sub    $0xc,%esp
     4cb:	ff 75 e0             	pushl  -0x20(%ebp)
     4ce:	52                   	push   %edx
     4cf:	50                   	push   %eax
     4d0:	68 be 12 00 00       	push   $0x12be
     4d5:	6a 01                	push   $0x1
     4d7:	e8 24 0a 00 00       	call   f00 <printf>
}
     4dc:	83 c4 20             	add    $0x20,%esp
     4df:	c9                   	leave  
     4e0:	c3                   	ret    
     4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		r.minute = r.minute+30-59;
     4e8:	8d 51 e3             	lea    -0x1d(%ecx),%edx
		r.hour += 6;
     4eb:	83 c0 06             	add    $0x6,%eax
     4ee:	89 45 e8             	mov    %eax,-0x18(%ebp)
		r.minute = r.minute+30-59;
     4f1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
     4f4:	eb c7                	jmp    4bd <time+0x2d>
		printf(2, "date failed\n");
     4f6:	50                   	push   %eax
     4f7:	50                   	push   %eax
     4f8:	68 b1 12 00 00       	push   $0x12b1
     4fd:	6a 02                	push   $0x2
     4ff:	e8 fc 09 00 00       	call   f00 <printf>
		exit();
     504:	e8 99 08 00 00       	call   da2 <exit>
     509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000510 <yesterday>:

void yesterday()
{
     510:	55                   	push   %ebp
     511:	89 e5                	mov    %esp,%ebp
     513:	56                   	push   %esi
     514:	53                   	push   %ebx
	struct rtcdate r;
	if (date(&r)) 
     515:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     518:	83 ec 2c             	sub    $0x2c,%esp
	if (date(&r)) 
     51b:	50                   	push   %eax
     51c:	e8 29 09 00 00       	call   e4a <date>
     521:	83 c4 10             	add    $0x10,%esp
     524:	85 c0                	test   %eax,%eax
     526:	0f 85 81 01 00 00    	jne    6ad <yesterday+0x19d>
		printf(2, "date failed\n");
		exit();
	}

	// if month is march
	if(r.month == 3)
     52c:	8b 45 f0             	mov    -0x10(%ebp),%eax
     52f:	8b 5d ec             	mov    -0x14(%ebp),%ebx
     532:	8b 75 f4             	mov    -0xc(%ebp),%esi
     535:	83 f8 03             	cmp    $0x3,%eax
     538:	0f 84 a2 00 00 00    	je     5e0 <yesterday+0xd0>
				r.day -= 1;
		}
	}

	// if date is 1st Jan
	else if((r.day==1)&&(r.month==1))
     53e:	83 fb 01             	cmp    $0x1,%ebx
     541:	75 09                	jne    54c <yesterday+0x3c>
     543:	83 f8 01             	cmp    $0x1,%eax
     546:	0f 84 04 01 00 00    	je     650 <yesterday+0x140>
     54c:	89 c2                	mov    %eax,%edx
     54e:	83 e2 01             	and    $0x1,%edx
		r.year -= 1;
	}

	else
	{
		if(r.month<9)
     551:	83 f8 08             	cmp    $0x8,%eax
     554:	77 6a                	ja     5c0 <yesterday+0xb0>
		{
			if(r.month%2==0)
     556:	85 d2                	test   %edx,%edx
     558:	74 6a                	je     5c4 <yesterday+0xb4>
				else
					r.day -= 1;
			}
			else
			{
				if(r.day==1)
     55a:	83 fb 01             	cmp    $0x1,%ebx
     55d:	0f 84 15 01 00 00    	je     678 <yesterday+0x168>
				{
					r.month -= 1;
					r.day = 30;
				}
				else
					r.day -= 1;
     563:	83 eb 01             	sub    $0x1,%ebx
     566:	89 5d ec             	mov    %ebx,-0x14(%ebp)
			}
		}
	}
	day_name(r.year,r.month,r.day);  // prints the name of yesterday's day of the week
     569:	83 ec 04             	sub    $0x4,%esp
     56c:	53                   	push   %ebx
     56d:	50                   	push   %eax
     56e:	56                   	push   %esi
     56f:	e8 4c fd ff ff       	call   2c0 <day_name>
	month_name(r.month);  // prints the name of the yesterday's month of the year
     574:	58                   	pop    %eax
     575:	ff 75 f0             	pushl  -0x10(%ebp)
     578:	e8 03 fc ff ff       	call   180 <month_name>
	printf(1," %d",r.day);  // prints yesterday's date
     57d:	83 c4 0c             	add    $0xc,%esp
     580:	ff 75 ec             	pushl  -0x14(%ebp)
     583:	68 c8 12 00 00       	push   $0x12c8
     588:	6a 01                	push   $0x1
     58a:	e8 71 09 00 00       	call   f00 <printf>
	time();  // prints the current time (IST format)
     58f:	e8 fc fe ff ff       	call   490 <time>
	printf(1," IST");
     594:	5a                   	pop    %edx
     595:	59                   	pop    %ecx
     596:	68 f1 12 00 00       	push   $0x12f1
     59b:	6a 01                	push   $0x1
     59d:	e8 5e 09 00 00       	call   f00 <printf>
	printf(1," %d\n",r.year);  // prints yesterday's year
     5a2:	83 c4 0c             	add    $0xc,%esp
     5a5:	ff 75 f4             	pushl  -0xc(%ebp)
     5a8:	68 cc 12 00 00       	push   $0x12cc
     5ad:	6a 01                	push   $0x1
     5af:	e8 4c 09 00 00       	call   f00 <printf>
}
     5b4:	83 c4 10             	add    $0x10,%esp
     5b7:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5ba:	5b                   	pop    %ebx
     5bb:	5e                   	pop    %esi
     5bc:	5d                   	pop    %ebp
     5bd:	c3                   	ret    
     5be:	66 90                	xchg   %ax,%ax
			if(r.month%2==1)
     5c0:	85 d2                	test   %edx,%edx
     5c2:	74 96                	je     55a <yesterday+0x4a>
				if(r.day==1)
     5c4:	83 fb 01             	cmp    $0x1,%ebx
     5c7:	75 9a                	jne    563 <yesterday+0x53>
					r.month -= 1;
     5c9:	83 e8 01             	sub    $0x1,%eax
					r.day = 31;
     5cc:	c7 45 ec 1f 00 00 00 	movl   $0x1f,-0x14(%ebp)
     5d3:	bb 1f 00 00 00       	mov    $0x1f,%ebx
					r.month -= 1;
     5d8:	89 45 f0             	mov    %eax,-0x10(%ebp)
     5db:	eb 8c                	jmp    569 <yesterday+0x59>
     5dd:	8d 76 00             	lea    0x0(%esi),%esi
	if(x%400==0)
     5e0:	89 f0                	mov    %esi,%eax
     5e2:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
     5e7:	f7 ea                	imul   %edx
     5e9:	89 f0                	mov    %esi,%eax
     5eb:	c1 f8 1f             	sar    $0x1f,%eax
     5ee:	c1 fa 07             	sar    $0x7,%edx
     5f1:	29 c2                	sub    %eax,%edx
     5f3:	69 d2 90 01 00 00    	imul   $0x190,%edx,%edx
     5f9:	39 d6                	cmp    %edx,%esi
     5fb:	74 2b                	je     628 <yesterday+0x118>
     5fd:	89 f0                	mov    %esi,%eax
     5ff:	e8 8c fa ff ff       	call   90 <check_leap.part.0>
		if(check_leap(r.year))
     604:	85 c0                	test   %eax,%eax
     606:	75 20                	jne    628 <yesterday+0x118>
			if(r.day==1)
     608:	83 fb 01             	cmp    $0x1,%ebx
     60b:	0f 84 7f 00 00 00    	je     690 <yesterday+0x180>
				r.day -= 1;
     611:	83 eb 01             	sub    $0x1,%ebx
     614:	b8 03 00 00 00       	mov    $0x3,%eax
     619:	89 5d ec             	mov    %ebx,-0x14(%ebp)
     61c:	e9 48 ff ff ff       	jmp    569 <yesterday+0x59>
     621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
			if(r.day==1)
     628:	83 fb 01             	cmp    $0x1,%ebx
     62b:	75 e4                	jne    611 <yesterday+0x101>
				r.month -= 1;
     62d:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%ebp)
				r.day = 29;
     634:	c7 45 ec 1d 00 00 00 	movl   $0x1d,-0x14(%ebp)
     63b:	b8 02 00 00 00       	mov    $0x2,%eax
     640:	bb 1d 00 00 00       	mov    $0x1d,%ebx
     645:	e9 1f ff ff ff       	jmp    569 <yesterday+0x59>
     64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		r.year -= 1;
     650:	83 ee 01             	sub    $0x1,%esi
		r.month = 12;
     653:	c7 45 f0 0c 00 00 00 	movl   $0xc,-0x10(%ebp)
		r.day = 31;
     65a:	c7 45 ec 1f 00 00 00 	movl   $0x1f,-0x14(%ebp)
		r.year -= 1;
     661:	89 75 f4             	mov    %esi,-0xc(%ebp)
     664:	b8 0c 00 00 00       	mov    $0xc,%eax
     669:	bb 1f 00 00 00       	mov    $0x1f,%ebx
     66e:	e9 f6 fe ff ff       	jmp    569 <yesterday+0x59>
     673:	90                   	nop
     674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
					r.month -= 1;
     678:	83 e8 01             	sub    $0x1,%eax
					r.day = 30;
     67b:	c7 45 ec 1e 00 00 00 	movl   $0x1e,-0x14(%ebp)
     682:	bb 1e 00 00 00       	mov    $0x1e,%ebx
					r.month -= 1;
     687:	89 45 f0             	mov    %eax,-0x10(%ebp)
     68a:	e9 da fe ff ff       	jmp    569 <yesterday+0x59>
     68f:	90                   	nop
				r.month -= 1;
     690:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%ebp)
				r.day = 28;
     697:	c7 45 ec 1c 00 00 00 	movl   $0x1c,-0x14(%ebp)
     69e:	b8 02 00 00 00       	mov    $0x2,%eax
     6a3:	bb 1c 00 00 00       	mov    $0x1c,%ebx
     6a8:	e9 bc fe ff ff       	jmp    569 <yesterday+0x59>
		printf(2, "date failed\n");
     6ad:	53                   	push   %ebx
     6ae:	53                   	push   %ebx
     6af:	68 b1 12 00 00       	push   $0x12b1
     6b4:	6a 02                	push   $0x2
     6b6:	e8 45 08 00 00       	call   f00 <printf>
		exit();
     6bb:	e8 e2 06 00 00       	call   da2 <exit>

000006c0 <today>:
	     
// this function prints today's date and current time (IST format)
void today()
{
     6c0:	55                   	push   %ebp
     6c1:	89 e5                	mov    %esp,%ebp
     6c3:	83 ec 34             	sub    $0x34,%esp
	struct rtcdate r;
	if (date(&r)) 
     6c6:	8d 45 e0             	lea    -0x20(%ebp),%eax
     6c9:	50                   	push   %eax
     6ca:	e8 7b 07 00 00       	call   e4a <date>
     6cf:	83 c4 10             	add    $0x10,%esp
     6d2:	85 c0                	test   %eax,%eax
     6d4:	75 56                	jne    72c <today+0x6c>
	{
		printf(2, "date failed\n");
		exit();
	}
	day_name(r.year,r.month,r.day);	 // prints the name of day of the week
     6d6:	83 ec 04             	sub    $0x4,%esp
     6d9:	ff 75 ec             	pushl  -0x14(%ebp)
     6dc:	ff 75 f0             	pushl  -0x10(%ebp)
     6df:	ff 75 f4             	pushl  -0xc(%ebp)
     6e2:	e8 d9 fb ff ff       	call   2c0 <day_name>
	month_name(r.month);  // prints the name of the month of the year
     6e7:	58                   	pop    %eax
     6e8:	ff 75 f0             	pushl  -0x10(%ebp)
     6eb:	e8 90 fa ff ff       	call   180 <month_name>
	printf(1," %d",r.day);  // prints the today's date
     6f0:	83 c4 0c             	add    $0xc,%esp
     6f3:	ff 75 ec             	pushl  -0x14(%ebp)
     6f6:	68 c8 12 00 00       	push   $0x12c8
     6fb:	6a 01                	push   $0x1
     6fd:	e8 fe 07 00 00       	call   f00 <printf>
	time();  // prints the current time (IST format)
     702:	e8 89 fd ff ff       	call   490 <time>
	printf(1," IST");
     707:	5a                   	pop    %edx
     708:	59                   	pop    %ecx
     709:	68 f1 12 00 00       	push   $0x12f1
     70e:	6a 01                	push   $0x1
     710:	e8 eb 07 00 00       	call   f00 <printf>
	printf(1," %d\n",r.year);  // prints the current year
     715:	83 c4 0c             	add    $0xc,%esp
     718:	ff 75 f4             	pushl  -0xc(%ebp)
     71b:	68 cc 12 00 00       	push   $0x12cc
     720:	6a 01                	push   $0x1
     722:	e8 d9 07 00 00       	call   f00 <printf>
}
     727:	83 c4 10             	add    $0x10,%esp
     72a:	c9                   	leave  
     72b:	c3                   	ret    
		printf(2, "date failed\n");
     72c:	50                   	push   %eax
     72d:	50                   	push   %eax
     72e:	68 b1 12 00 00       	push   $0x12b1
     733:	6a 02                	push   $0x2
     735:	e8 c6 07 00 00       	call   f00 <printf>
		exit();
     73a:	e8 63 06 00 00       	call   da2 <exit>
     73f:	90                   	nop

00000740 <tomorrow>:

// this function prints tomorrow's date and time (IST format)
void tomorrow()
{
     740:	55                   	push   %ebp
     741:	89 e5                	mov    %esp,%ebp
     743:	56                   	push   %esi
     744:	53                   	push   %ebx
	struct rtcdate r;
	if (date(&r)) 
     745:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     748:	83 ec 2c             	sub    $0x2c,%esp
	if (date(&r)) 
     74b:	50                   	push   %eax
     74c:	e8 f9 06 00 00       	call   e4a <date>
     751:	83 c4 10             	add    $0x10,%esp
     754:	85 c0                	test   %eax,%eax
     756:	0f 85 3f 01 00 00    	jne    89b <tomorrow+0x15b>
		printf(2, "date failed\n");
		exit();
	}

	// if month is Feb
	if(r.month == 2)
     75c:	8b 45 f0             	mov    -0x10(%ebp),%eax
     75f:	8b 5d ec             	mov    -0x14(%ebp),%ebx
     762:	8b 75 f4             	mov    -0xc(%ebp),%esi
     765:	83 f8 02             	cmp    $0x2,%eax
     768:	0f 84 a2 00 00 00    	je     810 <tomorrow+0xd0>
				r.day += 1;
		}
	}

	// if the date is 31st Dec
	else if((r.day==31)&&(r.month==12))
     76e:	83 fb 1f             	cmp    $0x1f,%ebx
     771:	75 09                	jne    77c <tomorrow+0x3c>
     773:	83 f8 0c             	cmp    $0xc,%eax
     776:	0f 84 fc 00 00 00    	je     878 <tomorrow+0x138>
     77c:	89 c2                	mov    %eax,%edx
     77e:	83 e2 01             	and    $0x1,%edx
		r.year += 1;
	}

	else
	{
		if(r.month<8)
     781:	83 f8 07             	cmp    $0x7,%eax
     784:	77 6a                	ja     7f0 <tomorrow+0xb0>
		{
			if(r.month%2==1)
     786:	85 d2                	test   %edx,%edx
     788:	74 6a                	je     7f4 <tomorrow+0xb4>
				else
					r.day += 1;
			}
			else
			{
				if(r.day==31)
     78a:	83 fb 1f             	cmp    $0x1f,%ebx
     78d:	74 6a                	je     7f9 <tomorrow+0xb9>
				{
					r.month += 1;
					r.day = 1;
				}
				else
					r.day += 1;
     78f:	83 c3 01             	add    $0x1,%ebx
     792:	89 5d ec             	mov    %ebx,-0x14(%ebp)
			}
		}
	}
	day_name(r.year,r.month,r.day);  // prints the name of tomorrow's day of the week
     795:	83 ec 04             	sub    $0x4,%esp
     798:	53                   	push   %ebx
     799:	50                   	push   %eax
     79a:	56                   	push   %esi
     79b:	e8 20 fb ff ff       	call   2c0 <day_name>
	month_name(r.month);  // prints the name of the tomorrow's month of the year
     7a0:	58                   	pop    %eax
     7a1:	ff 75 f0             	pushl  -0x10(%ebp)
     7a4:	e8 d7 f9 ff ff       	call   180 <month_name>
	printf(1," %d",r.day);  // prints tomorrow's date
     7a9:	83 c4 0c             	add    $0xc,%esp
     7ac:	ff 75 ec             	pushl  -0x14(%ebp)
     7af:	68 c8 12 00 00       	push   $0x12c8
     7b4:	6a 01                	push   $0x1
     7b6:	e8 45 07 00 00       	call   f00 <printf>
	time();  // prints the current time (IST format)
     7bb:	e8 d0 fc ff ff       	call   490 <time>
	printf(1," IST");
     7c0:	5a                   	pop    %edx
     7c1:	59                   	pop    %ecx
     7c2:	68 f1 12 00 00       	push   $0x12f1
     7c7:	6a 01                	push   $0x1
     7c9:	e8 32 07 00 00       	call   f00 <printf>
	printf(1," %d\n",r.year);  // prints tomorrow's year
     7ce:	83 c4 0c             	add    $0xc,%esp
     7d1:	ff 75 f4             	pushl  -0xc(%ebp)
     7d4:	68 cc 12 00 00       	push   $0x12cc
     7d9:	6a 01                	push   $0x1
     7db:	e8 20 07 00 00       	call   f00 <printf>
}
     7e0:	83 c4 10             	add    $0x10,%esp
     7e3:	8d 65 f8             	lea    -0x8(%ebp),%esp
     7e6:	5b                   	pop    %ebx
     7e7:	5e                   	pop    %esi
     7e8:	5d                   	pop    %ebp
     7e9:	c3                   	ret    
     7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
			if(r.month%2==1)
     7f0:	85 d2                	test   %edx,%edx
     7f2:	74 96                	je     78a <tomorrow+0x4a>
				if(r.day==30)
     7f4:	83 fb 1e             	cmp    $0x1e,%ebx
     7f7:	75 96                	jne    78f <tomorrow+0x4f>
					r.month += 1;
     7f9:	83 c0 01             	add    $0x1,%eax
					r.day = 1;
     7fc:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
     803:	bb 01 00 00 00       	mov    $0x1,%ebx
					r.month += 1;
     808:	89 45 f0             	mov    %eax,-0x10(%ebp)
     80b:	eb 88                	jmp    795 <tomorrow+0x55>
     80d:	8d 76 00             	lea    0x0(%esi),%esi
	if(x%400==0)
     810:	89 f0                	mov    %esi,%eax
     812:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
     817:	f7 ea                	imul   %edx
     819:	89 f0                	mov    %esi,%eax
     81b:	c1 f8 1f             	sar    $0x1f,%eax
     81e:	c1 fa 07             	sar    $0x7,%edx
     821:	29 c2                	sub    %eax,%edx
     823:	69 d2 90 01 00 00    	imul   $0x190,%edx,%edx
     829:	39 d6                	cmp    %edx,%esi
     82b:	74 23                	je     850 <tomorrow+0x110>
     82d:	89 f0                	mov    %esi,%eax
     82f:	e8 5c f8 ff ff       	call   90 <check_leap.part.0>
		if(check_leap(r.year))
     834:	85 c0                	test   %eax,%eax
     836:	75 18                	jne    850 <tomorrow+0x110>
			if(r.day==28)
     838:	83 fb 1c             	cmp    $0x1c,%ebx
     83b:	74 18                	je     855 <tomorrow+0x115>
				r.day += 1;
     83d:	83 c3 01             	add    $0x1,%ebx
     840:	b8 02 00 00 00       	mov    $0x2,%eax
     845:	89 5d ec             	mov    %ebx,-0x14(%ebp)
     848:	e9 48 ff ff ff       	jmp    795 <tomorrow+0x55>
     84d:	8d 76 00             	lea    0x0(%esi),%esi
			if(r.day==29)
     850:	83 fb 1d             	cmp    $0x1d,%ebx
     853:	75 e8                	jne    83d <tomorrow+0xfd>
				r.month += 1;
     855:	c7 45 f0 03 00 00 00 	movl   $0x3,-0x10(%ebp)
				r.day = 1;
     85c:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
     863:	b8 03 00 00 00       	mov    $0x3,%eax
     868:	bb 01 00 00 00       	mov    $0x1,%ebx
     86d:	e9 23 ff ff ff       	jmp    795 <tomorrow+0x55>
     872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		r.year += 1;
     878:	83 c6 01             	add    $0x1,%esi
		r.month = 1;
     87b:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
		r.day = 1;
     882:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
		r.year += 1;
     889:	89 75 f4             	mov    %esi,-0xc(%ebp)
     88c:	b8 01 00 00 00       	mov    $0x1,%eax
     891:	bb 01 00 00 00       	mov    $0x1,%ebx
     896:	e9 fa fe ff ff       	jmp    795 <tomorrow+0x55>
		printf(2, "date failed\n");
     89b:	53                   	push   %ebx
     89c:	53                   	push   %ebx
     89d:	68 b1 12 00 00       	push   $0x12b1
     8a2:	6a 02                	push   $0x2
     8a4:	e8 57 06 00 00       	call   f00 <printf>
		exit();
     8a9:	e8 f4 04 00 00       	call   da2 <exit>
     8ae:	66 90                	xchg   %ax,%ax

000008b0 <particular_day>:

// if user uses -d option with a particular date
void particular_day(char *x)
{
     8b0:	55                   	push   %ebp
	int flag = 1;
	for(int i=0;i<4;i++)
     8b1:	31 c0                	xor    %eax,%eax
{
     8b3:	89 e5                	mov    %esp,%ebp
     8b5:	57                   	push   %edi
     8b6:	56                   	push   %esi
     8b7:	53                   	push   %ebx
     8b8:	83 ec 1c             	sub    $0x1c,%esp
     8bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
	{
		if(*(x+i)=='-')
     8be:	80 3c 03 2d          	cmpb   $0x2d,(%ebx,%eax,1)
     8c2:	0f 84 68 01 00 00    	je     a30 <particular_day+0x180>
	for(int i=0;i<4;i++)
     8c8:	83 c0 01             	add    $0x1,%eax
     8cb:	83 f8 04             	cmp    $0x4,%eax
     8ce:	75 ee                	jne    8be <particular_day+0xe>
	int flag = 1;
     8d0:	be 01 00 00 00       	mov    $0x1,%esi
			break;
		}
	}
	for(int i=5;i<7;i++)
	{
		if(*(x+i)=='-')
     8d5:	0f b6 4b 05          	movzbl 0x5(%ebx),%ecx
     8d9:	0f b6 53 08          	movzbl 0x8(%ebx),%edx
     8dd:	80 f9 2d             	cmp    $0x2d,%cl
     8e0:	88 55 e4             	mov    %dl,-0x1c(%ebp)
     8e3:	0f 84 2f 01 00 00    	je     a18 <particular_day+0x168>
     8e9:	0f b6 43 06          	movzbl 0x6(%ebx),%eax
     8ed:	3c 2d                	cmp    $0x2d,%al
     8ef:	88 45 e3             	mov    %al,-0x1d(%ebp)
     8f2:	0f 84 20 01 00 00    	je     a18 <particular_day+0x168>
			break;
		}
	}
	for(int i=8;i<10;i++)
	{
		if(*(x+i)=='-')
     8f8:	80 fa 2d             	cmp    $0x2d,%dl
     8fb:	0f 84 17 01 00 00    	je     a18 <particular_day+0x168>
     901:	0f b6 43 09          	movzbl 0x9(%ebx),%eax
		{
			flag = 0;
			break;
		}
	}
	if(flag==0)
     905:	85 f6                	test   %esi,%esi
		if(*(x+i)=='-')
     907:	88 45 e2             	mov    %al,-0x1e(%ebp)
	if(flag==0)
     90a:	0f 84 08 01 00 00    	je     a18 <particular_day+0x168>
     910:	3c 2d                	cmp    $0x2d,%al
     912:	0f 84 00 01 00 00    	je     a18 <particular_day+0x168>
	int y=0;
	int m=0;
	int d=0;
	for(int i=0;i<4;i++)
	{
		y += (*(x+i) - '0')*power(10,3-i);
     918:	0f be 03             	movsbl (%ebx),%eax
     91b:	0f be 53 01          	movsbl 0x1(%ebx),%edx
     91f:	bf 0a 00 00 00       	mov    $0xa,%edi
     924:	83 e8 30             	sub    $0x30,%eax
     927:	83 ea 30             	sub    $0x30,%edx
     92a:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
     930:	6b d2 64             	imul   $0x64,%edx,%edx
     933:	8d 34 02             	lea    (%edx,%eax,1),%esi
     936:	0f be 43 02          	movsbl 0x2(%ebx),%eax
     93a:	83 e8 30             	sub    $0x30,%eax
     93d:	f7 ef                	imul   %edi
     93f:	0f be 53 03          	movsbl 0x3(%ebx),%edx
     943:	01 f0                	add    %esi,%eax
     945:	8d 74 10 d0          	lea    -0x30(%eax,%edx,1),%esi
	}
	for(int i=5;i<7;i++)
	{
		m += (*(x+i) - '0')*power(10,6-i);
     949:	0f be c1             	movsbl %cl,%eax
     94c:	0f be 4d e3          	movsbl -0x1d(%ebp),%ecx
     950:	83 e8 30             	sub    $0x30,%eax
     953:	f7 ef                	imul   %edi
     955:	83 e9 30             	sub    $0x30,%ecx
     958:	01 c1                	add    %eax,%ecx
	}
	for(int i=8;i<10;i++)
	{
		d += (*(x+i) - '0')*power(10,9-i);
     95a:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
     95e:	83 e8 30             	sub    $0x30,%eax
     961:	f7 ef                	imul   %edi
     963:	0f be 7d e2          	movsbl -0x1e(%ebp),%edi
     967:	83 ef 30             	sub    $0x30,%edi
     96a:	01 c7                	add    %eax,%edi
	}	
	if((m>12)||(d>31)||(m<1)||(d<1)||(y<1970))
     96c:	8d 41 ff             	lea    -0x1(%ecx),%eax
     96f:	83 f8 0b             	cmp    $0xb,%eax
     972:	8d 47 ff             	lea    -0x1(%edi),%eax
     975:	0f 97 c2             	seta   %dl
     978:	83 f8 1e             	cmp    $0x1e,%eax
     97b:	0f 97 c0             	seta   %al
     97e:	08 c2                	or     %al,%dl
     980:	0f 85 92 00 00 00    	jne    a18 <particular_day+0x168>
     986:	81 fe b1 07 00 00    	cmp    $0x7b1,%esi
     98c:	0f 8e 86 00 00 00    	jle    a18 <particular_day+0x168>
		printf(1,"date: invalid date %s\n",x);
		exit();
	}	
	else if(m==2)
	{
		if(d>28)
     992:	83 f9 02             	cmp    $0x2,%ecx
     995:	75 05                	jne    99c <particular_day+0xec>
     997:	83 ff 1c             	cmp    $0x1c,%edi
     99a:	7f 54                	jg     9f0 <particular_day+0x140>
				printf(1,"date: invalid date %s\n",x);
					exit();
			}
		}
	}			
	day_name(y,m,d);
     99c:	83 ec 04             	sub    $0x4,%esp
     99f:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
     9a2:	57                   	push   %edi
     9a3:	51                   	push   %ecx
     9a4:	56                   	push   %esi
     9a5:	e8 16 f9 ff ff       	call   2c0 <day_name>
	month_name(m);
     9aa:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
     9ad:	89 0c 24             	mov    %ecx,(%esp)
     9b0:	e8 cb f7 ff ff       	call   180 <month_name>
	printf(1," %d",d);
     9b5:	83 c4 0c             	add    $0xc,%esp
     9b8:	57                   	push   %edi
     9b9:	68 c8 12 00 00       	push   $0x12c8
     9be:	6a 01                	push   $0x1
     9c0:	e8 3b 05 00 00       	call   f00 <printf>
	printf(1," 00:00:00 IST");
     9c5:	58                   	pop    %eax
     9c6:	5a                   	pop    %edx
     9c7:	68 e8 12 00 00       	push   $0x12e8
     9cc:	6a 01                	push   $0x1
     9ce:	e8 2d 05 00 00       	call   f00 <printf>
	printf(1," %d\n",y);
     9d3:	83 c4 0c             	add    $0xc,%esp
     9d6:	56                   	push   %esi
     9d7:	68 cc 12 00 00       	push   $0x12cc
     9dc:	6a 01                	push   $0x1
     9de:	e8 1d 05 00 00       	call   f00 <printf>
}	
     9e3:	83 c4 10             	add    $0x10,%esp
     9e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9e9:	5b                   	pop    %ebx
     9ea:	5e                   	pop    %esi
     9eb:	5f                   	pop    %edi
     9ec:	5d                   	pop    %ebp
     9ed:	c3                   	ret    
     9ee:	66 90                	xchg   %ax,%ax
	if(x%400==0)
     9f0:	89 f0                	mov    %esi,%eax
     9f2:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
     9f7:	f7 ea                	imul   %edx
     9f9:	89 f0                	mov    %esi,%eax
     9fb:	c1 f8 1f             	sar    $0x1f,%eax
     9fe:	c1 fa 07             	sar    $0x7,%edx
     a01:	29 c2                	sub    %eax,%edx
     a03:	69 c2 90 01 00 00    	imul   $0x190,%edx,%eax
     a09:	39 c6                	cmp    %eax,%esi
     a0b:	75 33                	jne    a40 <particular_day+0x190>
				if(d>29)
     a0d:	83 ff 1d             	cmp    $0x1d,%edi
     a10:	74 8a                	je     99c <particular_day+0xec>
     a12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		printf(1,"date: invalid date %s\n",x);
     a18:	83 ec 04             	sub    $0x4,%esp
     a1b:	53                   	push   %ebx
     a1c:	68 d1 12 00 00       	push   $0x12d1
     a21:	6a 01                	push   $0x1
     a23:	e8 d8 04 00 00       	call   f00 <printf>
		exit();
     a28:	e8 75 03 00 00       	call   da2 <exit>
     a2d:	8d 76 00             	lea    0x0(%esi),%esi
			flag = 0;
     a30:	31 f6                	xor    %esi,%esi
     a32:	e9 9e fe ff ff       	jmp    8d5 <particular_day+0x25>
     a37:	89 f6                	mov    %esi,%esi
     a39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     a40:	89 f0                	mov    %esi,%eax
     a42:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
     a45:	e8 46 f6 ff ff       	call   90 <check_leap.part.0>
			if(check_leap(y))
     a4a:	85 c0                	test   %eax,%eax
     a4c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
     a4f:	74 c7                	je     a18 <particular_day+0x168>
				if(d>29)
     a51:	83 ff 1d             	cmp    $0x1d,%edi
     a54:	0f 84 42 ff ff ff    	je     99c <particular_day+0xec>
     a5a:	eb bc                	jmp    a18 <particular_day+0x168>
     a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a60 <utc_day>:

// this function prints today's date and current time (UTC format)
void utc_day()
{
     a60:	55                   	push   %ebp
     a61:	89 e5                	mov    %esp,%ebp
     a63:	83 ec 34             	sub    $0x34,%esp
	struct rtcdate r;
	if (date(&r)) 
     a66:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a69:	50                   	push   %eax
     a6a:	e8 db 03 00 00       	call   e4a <date>
     a6f:	83 c4 10             	add    $0x10,%esp
     a72:	85 c0                	test   %eax,%eax
     a74:	75 68                	jne    ade <utc_day+0x7e>
	{
		printf(2, "date failed\n");
		exit();
	}
	day_name(r.year,r.month,r.day);	 // prints the name of today's day of the week
     a76:	83 ec 04             	sub    $0x4,%esp
     a79:	ff 75 ec             	pushl  -0x14(%ebp)
     a7c:	ff 75 f0             	pushl  -0x10(%ebp)
     a7f:	ff 75 f4             	pushl  -0xc(%ebp)
     a82:	e8 39 f8 ff ff       	call   2c0 <day_name>
	month_name(r.month);  // prints the name of the today's month of the year
     a87:	58                   	pop    %eax
     a88:	ff 75 f0             	pushl  -0x10(%ebp)
     a8b:	e8 f0 f6 ff ff       	call   180 <month_name>
	printf(1," %d",r.day);  // prints today's date
     a90:	83 c4 0c             	add    $0xc,%esp
     a93:	ff 75 ec             	pushl  -0x14(%ebp)
     a96:	68 c8 12 00 00       	push   $0x12c8
     a9b:	6a 01                	push   $0x1
     a9d:	e8 5e 04 00 00       	call   f00 <printf>
	printf(1," %d:%d:%d",r.hour,r.minute,r.second);  // prints the current time (UTC format)
     aa2:	5a                   	pop    %edx
     aa3:	ff 75 e0             	pushl  -0x20(%ebp)
     aa6:	ff 75 e4             	pushl  -0x1c(%ebp)
     aa9:	ff 75 e8             	pushl  -0x18(%ebp)
     aac:	68 be 12 00 00       	push   $0x12be
     ab1:	6a 01                	push   $0x1
     ab3:	e8 48 04 00 00       	call   f00 <printf>
	printf(1," UTC");
     ab8:	83 c4 18             	add    $0x18,%esp
     abb:	68 f6 12 00 00       	push   $0x12f6
     ac0:	6a 01                	push   $0x1
     ac2:	e8 39 04 00 00       	call   f00 <printf>
	printf(1," %d\n",r.year);  // prints current year
     ac7:	83 c4 0c             	add    $0xc,%esp
     aca:	ff 75 f4             	pushl  -0xc(%ebp)
     acd:	68 cc 12 00 00       	push   $0x12cc
     ad2:	6a 01                	push   $0x1
     ad4:	e8 27 04 00 00       	call   f00 <printf>
}
     ad9:	83 c4 10             	add    $0x10,%esp
     adc:	c9                   	leave  
     add:	c3                   	ret    
		printf(2, "date failed\n");
     ade:	51                   	push   %ecx
     adf:	51                   	push   %ecx
     ae0:	68 b1 12 00 00       	push   $0x12b1
     ae5:	6a 02                	push   $0x2
     ae7:	e8 14 04 00 00       	call   f00 <printf>
		exit();
     aec:	e8 b1 02 00 00       	call   da2 <exit>
     af1:	eb 0d                	jmp    b00 <day>
     af3:	90                   	nop
     af4:	90                   	nop
     af5:	90                   	nop
     af6:	90                   	nop
     af7:	90                   	nop
     af8:	90                   	nop
     af9:	90                   	nop
     afa:	90                   	nop
     afb:	90                   	nop
     afc:	90                   	nop
     afd:	90                   	nop
     afe:	90                   	nop
     aff:	90                   	nop

00000b00 <day>:
	
// this function checks which option is chosen by user
// it then calls a suitable function to implement that option
void day(char *x)
{
     b00:	55                   	push   %ebp
     b01:	89 e5                	mov    %esp,%ebp
     b03:	8b 55 08             	mov    0x8(%ebp),%edx
	switch(*(x))
     b06:	0f b6 02             	movzbl (%edx),%eax
     b09:	3c 74                	cmp    $0x74,%al
     b0b:	74 33                	je     b40 <day+0x40>
     b0d:	7e 11                	jle    b20 <day+0x20>
     b0f:	3c 77                	cmp    $0x77,%al
     b11:	74 11                	je     b24 <day+0x24>
     b13:	3c 79                	cmp    $0x79,%al
     b15:	75 19                	jne    b30 <day+0x30>
		case 'y':yesterday();
		         break;
		default:particular_day(x);
			  break;
	}
}
     b17:	5d                   	pop    %ebp
		case 'y':yesterday();
     b18:	e9 f3 f9 ff ff       	jmp    510 <yesterday>
     b1d:	8d 76 00             	lea    0x0(%esi),%esi
	switch(*(x))
     b20:	3c 64                	cmp    $0x64,%al
     b22:	75 0c                	jne    b30 <day+0x30>
}
     b24:	5d                   	pop    %ebp
		case 'w':today();
     b25:	e9 96 fb ff ff       	jmp    6c0 <today>
     b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		default:particular_day(x);
     b30:	89 55 08             	mov    %edx,0x8(%ebp)
}
     b33:	5d                   	pop    %ebp
		default:particular_day(x);
     b34:	e9 77 fd ff ff       	jmp    8b0 <particular_day>
     b39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
}
     b40:	5d                   	pop    %ebp
		case 't':tomorrow();
     b41:	e9 fa fb ff ff       	jmp    740 <tomorrow>
     b46:	66 90                	xchg   %ax,%ax
     b48:	66 90                	xchg   %ax,%ax
     b4a:	66 90                	xchg   %ax,%ax
     b4c:	66 90                	xchg   %ax,%ax
     b4e:	66 90                	xchg   %ax,%ax

00000b50 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	53                   	push   %ebx
     b54:	8b 45 08             	mov    0x8(%ebp),%eax
     b57:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     b5a:	89 c2                	mov    %eax,%edx
     b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b60:	83 c1 01             	add    $0x1,%ecx
     b63:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     b67:	83 c2 01             	add    $0x1,%edx
     b6a:	84 db                	test   %bl,%bl
     b6c:	88 5a ff             	mov    %bl,-0x1(%edx)
     b6f:	75 ef                	jne    b60 <strcpy+0x10>
    ;
  return os;
}
     b71:	5b                   	pop    %ebx
     b72:	5d                   	pop    %ebp
     b73:	c3                   	ret    
     b74:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b7a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000b80 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     b80:	55                   	push   %ebp
     b81:	89 e5                	mov    %esp,%ebp
     b83:	53                   	push   %ebx
     b84:	8b 55 08             	mov    0x8(%ebp),%edx
     b87:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     b8a:	0f b6 02             	movzbl (%edx),%eax
     b8d:	0f b6 19             	movzbl (%ecx),%ebx
     b90:	84 c0                	test   %al,%al
     b92:	75 1c                	jne    bb0 <strcmp+0x30>
     b94:	eb 2a                	jmp    bc0 <strcmp+0x40>
     b96:	8d 76 00             	lea    0x0(%esi),%esi
     b99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     ba0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     ba3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     ba6:	83 c1 01             	add    $0x1,%ecx
     ba9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     bac:	84 c0                	test   %al,%al
     bae:	74 10                	je     bc0 <strcmp+0x40>
     bb0:	38 d8                	cmp    %bl,%al
     bb2:	74 ec                	je     ba0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     bb4:	29 d8                	sub    %ebx,%eax
}
     bb6:	5b                   	pop    %ebx
     bb7:	5d                   	pop    %ebp
     bb8:	c3                   	ret    
     bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bc0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     bc2:	29 d8                	sub    %ebx,%eax
}
     bc4:	5b                   	pop    %ebx
     bc5:	5d                   	pop    %ebp
     bc6:	c3                   	ret    
     bc7:	89 f6                	mov    %esi,%esi
     bc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000bd0 <strlen>:

uint
strlen(const char *s)
{
     bd0:	55                   	push   %ebp
     bd1:	89 e5                	mov    %esp,%ebp
     bd3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     bd6:	80 39 00             	cmpb   $0x0,(%ecx)
     bd9:	74 15                	je     bf0 <strlen+0x20>
     bdb:	31 d2                	xor    %edx,%edx
     bdd:	8d 76 00             	lea    0x0(%esi),%esi
     be0:	83 c2 01             	add    $0x1,%edx
     be3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     be7:	89 d0                	mov    %edx,%eax
     be9:	75 f5                	jne    be0 <strlen+0x10>
    ;
  return n;
}
     beb:	5d                   	pop    %ebp
     bec:	c3                   	ret    
     bed:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     bf0:	31 c0                	xor    %eax,%eax
}
     bf2:	5d                   	pop    %ebp
     bf3:	c3                   	ret    
     bf4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     bfa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c00 <memset>:

void*
memset(void *dst, int c, uint n)
{
     c00:	55                   	push   %ebp
     c01:	89 e5                	mov    %esp,%ebp
     c03:	57                   	push   %edi
     c04:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     c07:	8b 4d 10             	mov    0x10(%ebp),%ecx
     c0a:	8b 45 0c             	mov    0xc(%ebp),%eax
     c0d:	89 d7                	mov    %edx,%edi
     c0f:	fc                   	cld    
     c10:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     c12:	89 d0                	mov    %edx,%eax
     c14:	5f                   	pop    %edi
     c15:	5d                   	pop    %ebp
     c16:	c3                   	ret    
     c17:	89 f6                	mov    %esi,%esi
     c19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c20 <strchr>:

char*
strchr(const char *s, char c)
{
     c20:	55                   	push   %ebp
     c21:	89 e5                	mov    %esp,%ebp
     c23:	53                   	push   %ebx
     c24:	8b 45 08             	mov    0x8(%ebp),%eax
     c27:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     c2a:	0f b6 10             	movzbl (%eax),%edx
     c2d:	84 d2                	test   %dl,%dl
     c2f:	74 1d                	je     c4e <strchr+0x2e>
    if(*s == c)
     c31:	38 d3                	cmp    %dl,%bl
     c33:	89 d9                	mov    %ebx,%ecx
     c35:	75 0d                	jne    c44 <strchr+0x24>
     c37:	eb 17                	jmp    c50 <strchr+0x30>
     c39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c40:	38 ca                	cmp    %cl,%dl
     c42:	74 0c                	je     c50 <strchr+0x30>
  for(; *s; s++)
     c44:	83 c0 01             	add    $0x1,%eax
     c47:	0f b6 10             	movzbl (%eax),%edx
     c4a:	84 d2                	test   %dl,%dl
     c4c:	75 f2                	jne    c40 <strchr+0x20>
      return (char*)s;
  return 0;
     c4e:	31 c0                	xor    %eax,%eax
}
     c50:	5b                   	pop    %ebx
     c51:	5d                   	pop    %ebp
     c52:	c3                   	ret    
     c53:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c60 <gets>:

char*
gets(char *buf, int max)
{
     c60:	55                   	push   %ebp
     c61:	89 e5                	mov    %esp,%ebp
     c63:	57                   	push   %edi
     c64:	56                   	push   %esi
     c65:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     c66:	31 f6                	xor    %esi,%esi
     c68:	89 f3                	mov    %esi,%ebx
{
     c6a:	83 ec 1c             	sub    $0x1c,%esp
     c6d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     c70:	eb 2f                	jmp    ca1 <gets+0x41>
     c72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     c78:	8d 45 e7             	lea    -0x19(%ebp),%eax
     c7b:	83 ec 04             	sub    $0x4,%esp
     c7e:	6a 01                	push   $0x1
     c80:	50                   	push   %eax
     c81:	6a 00                	push   $0x0
     c83:	e8 32 01 00 00       	call   dba <read>
    if(cc < 1)
     c88:	83 c4 10             	add    $0x10,%esp
     c8b:	85 c0                	test   %eax,%eax
     c8d:	7e 1c                	jle    cab <gets+0x4b>
      break;
    buf[i++] = c;
     c8f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     c93:	83 c7 01             	add    $0x1,%edi
     c96:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     c99:	3c 0a                	cmp    $0xa,%al
     c9b:	74 23                	je     cc0 <gets+0x60>
     c9d:	3c 0d                	cmp    $0xd,%al
     c9f:	74 1f                	je     cc0 <gets+0x60>
  for(i=0; i+1 < max; ){
     ca1:	83 c3 01             	add    $0x1,%ebx
     ca4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     ca7:	89 fe                	mov    %edi,%esi
     ca9:	7c cd                	jl     c78 <gets+0x18>
     cab:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     cad:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     cb0:	c6 03 00             	movb   $0x0,(%ebx)
}
     cb3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cb6:	5b                   	pop    %ebx
     cb7:	5e                   	pop    %esi
     cb8:	5f                   	pop    %edi
     cb9:	5d                   	pop    %ebp
     cba:	c3                   	ret    
     cbb:	90                   	nop
     cbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cc0:	8b 75 08             	mov    0x8(%ebp),%esi
     cc3:	8b 45 08             	mov    0x8(%ebp),%eax
     cc6:	01 de                	add    %ebx,%esi
     cc8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     cca:	c6 03 00             	movb   $0x0,(%ebx)
}
     ccd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cd0:	5b                   	pop    %ebx
     cd1:	5e                   	pop    %esi
     cd2:	5f                   	pop    %edi
     cd3:	5d                   	pop    %ebp
     cd4:	c3                   	ret    
     cd5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ce0 <stat>:

int
stat(const char *n, struct stat *st)
{
     ce0:	55                   	push   %ebp
     ce1:	89 e5                	mov    %esp,%ebp
     ce3:	56                   	push   %esi
     ce4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     ce5:	83 ec 08             	sub    $0x8,%esp
     ce8:	6a 00                	push   $0x0
     cea:	ff 75 08             	pushl  0x8(%ebp)
     ced:	e8 f0 00 00 00       	call   de2 <open>
  if(fd < 0)
     cf2:	83 c4 10             	add    $0x10,%esp
     cf5:	85 c0                	test   %eax,%eax
     cf7:	78 27                	js     d20 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     cf9:	83 ec 08             	sub    $0x8,%esp
     cfc:	ff 75 0c             	pushl  0xc(%ebp)
     cff:	89 c3                	mov    %eax,%ebx
     d01:	50                   	push   %eax
     d02:	e8 f3 00 00 00       	call   dfa <fstat>
  close(fd);
     d07:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     d0a:	89 c6                	mov    %eax,%esi
  close(fd);
     d0c:	e8 b9 00 00 00       	call   dca <close>
  return r;
     d11:	83 c4 10             	add    $0x10,%esp
}
     d14:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d17:	89 f0                	mov    %esi,%eax
     d19:	5b                   	pop    %ebx
     d1a:	5e                   	pop    %esi
     d1b:	5d                   	pop    %ebp
     d1c:	c3                   	ret    
     d1d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     d20:	be ff ff ff ff       	mov    $0xffffffff,%esi
     d25:	eb ed                	jmp    d14 <stat+0x34>
     d27:	89 f6                	mov    %esi,%esi
     d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d30 <atoi>:

int
atoi(const char *s)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	53                   	push   %ebx
     d34:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     d37:	0f be 11             	movsbl (%ecx),%edx
     d3a:	8d 42 d0             	lea    -0x30(%edx),%eax
     d3d:	3c 09                	cmp    $0x9,%al
  n = 0;
     d3f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     d44:	77 1f                	ja     d65 <atoi+0x35>
     d46:	8d 76 00             	lea    0x0(%esi),%esi
     d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     d50:	8d 04 80             	lea    (%eax,%eax,4),%eax
     d53:	83 c1 01             	add    $0x1,%ecx
     d56:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     d5a:	0f be 11             	movsbl (%ecx),%edx
     d5d:	8d 5a d0             	lea    -0x30(%edx),%ebx
     d60:	80 fb 09             	cmp    $0x9,%bl
     d63:	76 eb                	jbe    d50 <atoi+0x20>
  return n;
}
     d65:	5b                   	pop    %ebx
     d66:	5d                   	pop    %ebp
     d67:	c3                   	ret    
     d68:	90                   	nop
     d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d70 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     d70:	55                   	push   %ebp
     d71:	89 e5                	mov    %esp,%ebp
     d73:	56                   	push   %esi
     d74:	53                   	push   %ebx
     d75:	8b 5d 10             	mov    0x10(%ebp),%ebx
     d78:	8b 45 08             	mov    0x8(%ebp),%eax
     d7b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     d7e:	85 db                	test   %ebx,%ebx
     d80:	7e 14                	jle    d96 <memmove+0x26>
     d82:	31 d2                	xor    %edx,%edx
     d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     d88:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     d8c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     d8f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     d92:	39 d3                	cmp    %edx,%ebx
     d94:	75 f2                	jne    d88 <memmove+0x18>
  return vdst;
}
     d96:	5b                   	pop    %ebx
     d97:	5e                   	pop    %esi
     d98:	5d                   	pop    %ebp
     d99:	c3                   	ret    

00000d9a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     d9a:	b8 01 00 00 00       	mov    $0x1,%eax
     d9f:	cd 40                	int    $0x40
     da1:	c3                   	ret    

00000da2 <exit>:
SYSCALL(exit)
     da2:	b8 02 00 00 00       	mov    $0x2,%eax
     da7:	cd 40                	int    $0x40
     da9:	c3                   	ret    

00000daa <wait>:
SYSCALL(wait)
     daa:	b8 03 00 00 00       	mov    $0x3,%eax
     daf:	cd 40                	int    $0x40
     db1:	c3                   	ret    

00000db2 <pipe>:
SYSCALL(pipe)
     db2:	b8 04 00 00 00       	mov    $0x4,%eax
     db7:	cd 40                	int    $0x40
     db9:	c3                   	ret    

00000dba <read>:
SYSCALL(read)
     dba:	b8 05 00 00 00       	mov    $0x5,%eax
     dbf:	cd 40                	int    $0x40
     dc1:	c3                   	ret    

00000dc2 <write>:
SYSCALL(write)
     dc2:	b8 10 00 00 00       	mov    $0x10,%eax
     dc7:	cd 40                	int    $0x40
     dc9:	c3                   	ret    

00000dca <close>:
SYSCALL(close)
     dca:	b8 15 00 00 00       	mov    $0x15,%eax
     dcf:	cd 40                	int    $0x40
     dd1:	c3                   	ret    

00000dd2 <kill>:
SYSCALL(kill)
     dd2:	b8 06 00 00 00       	mov    $0x6,%eax
     dd7:	cd 40                	int    $0x40
     dd9:	c3                   	ret    

00000dda <exec>:
SYSCALL(exec)
     dda:	b8 07 00 00 00       	mov    $0x7,%eax
     ddf:	cd 40                	int    $0x40
     de1:	c3                   	ret    

00000de2 <open>:
SYSCALL(open)
     de2:	b8 0f 00 00 00       	mov    $0xf,%eax
     de7:	cd 40                	int    $0x40
     de9:	c3                   	ret    

00000dea <mknod>:
SYSCALL(mknod)
     dea:	b8 11 00 00 00       	mov    $0x11,%eax
     def:	cd 40                	int    $0x40
     df1:	c3                   	ret    

00000df2 <unlink>:
SYSCALL(unlink)
     df2:	b8 12 00 00 00       	mov    $0x12,%eax
     df7:	cd 40                	int    $0x40
     df9:	c3                   	ret    

00000dfa <fstat>:
SYSCALL(fstat)
     dfa:	b8 08 00 00 00       	mov    $0x8,%eax
     dff:	cd 40                	int    $0x40
     e01:	c3                   	ret    

00000e02 <link>:
SYSCALL(link)
     e02:	b8 13 00 00 00       	mov    $0x13,%eax
     e07:	cd 40                	int    $0x40
     e09:	c3                   	ret    

00000e0a <mkdir>:
SYSCALL(mkdir)
     e0a:	b8 14 00 00 00       	mov    $0x14,%eax
     e0f:	cd 40                	int    $0x40
     e11:	c3                   	ret    

00000e12 <chdir>:
SYSCALL(chdir)
     e12:	b8 09 00 00 00       	mov    $0x9,%eax
     e17:	cd 40                	int    $0x40
     e19:	c3                   	ret    

00000e1a <dup>:
SYSCALL(dup)
     e1a:	b8 0a 00 00 00       	mov    $0xa,%eax
     e1f:	cd 40                	int    $0x40
     e21:	c3                   	ret    

00000e22 <getpid>:
SYSCALL(getpid)
     e22:	b8 0b 00 00 00       	mov    $0xb,%eax
     e27:	cd 40                	int    $0x40
     e29:	c3                   	ret    

00000e2a <sbrk>:
SYSCALL(sbrk)
     e2a:	b8 0c 00 00 00       	mov    $0xc,%eax
     e2f:	cd 40                	int    $0x40
     e31:	c3                   	ret    

00000e32 <sleep>:
SYSCALL(sleep)
     e32:	b8 0d 00 00 00       	mov    $0xd,%eax
     e37:	cd 40                	int    $0x40
     e39:	c3                   	ret    

00000e3a <uptime>:
SYSCALL(uptime)
     e3a:	b8 0e 00 00 00       	mov    $0xe,%eax
     e3f:	cd 40                	int    $0x40
     e41:	c3                   	ret    

00000e42 <shutdown>:
SYSCALL(shutdown)
     e42:	b8 16 00 00 00       	mov    $0x16,%eax
     e47:	cd 40                	int    $0x40
     e49:	c3                   	ret    

00000e4a <date>:
SYSCALL(date)
     e4a:	b8 17 00 00 00       	mov    $0x17,%eax
     e4f:	cd 40                	int    $0x40
     e51:	c3                   	ret    

00000e52 <cps>:
SYSCALL(cps)
     e52:	b8 18 00 00 00       	mov    $0x18,%eax
     e57:	cd 40                	int    $0x40
     e59:	c3                   	ret    
     e5a:	66 90                	xchg   %ax,%ax
     e5c:	66 90                	xchg   %ax,%ax
     e5e:	66 90                	xchg   %ax,%ax

00000e60 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	57                   	push   %edi
     e64:	56                   	push   %esi
     e65:	53                   	push   %ebx
     e66:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     e69:	85 d2                	test   %edx,%edx
{
     e6b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
     e6e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
     e70:	79 76                	jns    ee8 <printint+0x88>
     e72:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     e76:	74 70                	je     ee8 <printint+0x88>
    x = -xx;
     e78:	f7 d8                	neg    %eax
    neg = 1;
     e7a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     e81:	31 f6                	xor    %esi,%esi
     e83:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     e86:	eb 0a                	jmp    e92 <printint+0x32>
     e88:	90                   	nop
     e89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
     e90:	89 fe                	mov    %edi,%esi
     e92:	31 d2                	xor    %edx,%edx
     e94:	8d 7e 01             	lea    0x1(%esi),%edi
     e97:	f7 f1                	div    %ecx
     e99:	0f b6 92 80 13 00 00 	movzbl 0x1380(%edx),%edx
  }while((x /= base) != 0);
     ea0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
     ea2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
     ea5:	75 e9                	jne    e90 <printint+0x30>
  if(neg)
     ea7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     eaa:	85 c0                	test   %eax,%eax
     eac:	74 08                	je     eb6 <printint+0x56>
    buf[i++] = '-';
     eae:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
     eb3:	8d 7e 02             	lea    0x2(%esi),%edi
     eb6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
     eba:	8b 7d c0             	mov    -0x40(%ebp),%edi
     ebd:	8d 76 00             	lea    0x0(%esi),%esi
     ec0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
     ec3:	83 ec 04             	sub    $0x4,%esp
     ec6:	83 ee 01             	sub    $0x1,%esi
     ec9:	6a 01                	push   $0x1
     ecb:	53                   	push   %ebx
     ecc:	57                   	push   %edi
     ecd:	88 45 d7             	mov    %al,-0x29(%ebp)
     ed0:	e8 ed fe ff ff       	call   dc2 <write>

  while(--i >= 0)
     ed5:	83 c4 10             	add    $0x10,%esp
     ed8:	39 de                	cmp    %ebx,%esi
     eda:	75 e4                	jne    ec0 <printint+0x60>
    putc(fd, buf[i]);
}
     edc:	8d 65 f4             	lea    -0xc(%ebp),%esp
     edf:	5b                   	pop    %ebx
     ee0:	5e                   	pop    %esi
     ee1:	5f                   	pop    %edi
     ee2:	5d                   	pop    %ebp
     ee3:	c3                   	ret    
     ee4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     ee8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     eef:	eb 90                	jmp    e81 <printint+0x21>
     ef1:	eb 0d                	jmp    f00 <printf>
     ef3:	90                   	nop
     ef4:	90                   	nop
     ef5:	90                   	nop
     ef6:	90                   	nop
     ef7:	90                   	nop
     ef8:	90                   	nop
     ef9:	90                   	nop
     efa:	90                   	nop
     efb:	90                   	nop
     efc:	90                   	nop
     efd:	90                   	nop
     efe:	90                   	nop
     eff:	90                   	nop

00000f00 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     f00:	55                   	push   %ebp
     f01:	89 e5                	mov    %esp,%ebp
     f03:	57                   	push   %edi
     f04:	56                   	push   %esi
     f05:	53                   	push   %ebx
     f06:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     f09:	8b 75 0c             	mov    0xc(%ebp),%esi
     f0c:	0f b6 1e             	movzbl (%esi),%ebx
     f0f:	84 db                	test   %bl,%bl
     f11:	0f 84 b3 00 00 00    	je     fca <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
     f17:	8d 45 10             	lea    0x10(%ebp),%eax
     f1a:	83 c6 01             	add    $0x1,%esi
  state = 0;
     f1d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
     f1f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     f22:	eb 2f                	jmp    f53 <printf+0x53>
     f24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     f28:	83 f8 25             	cmp    $0x25,%eax
     f2b:	0f 84 a7 00 00 00    	je     fd8 <printf+0xd8>
  write(fd, &c, 1);
     f31:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     f34:	83 ec 04             	sub    $0x4,%esp
     f37:	88 5d e2             	mov    %bl,-0x1e(%ebp)
     f3a:	6a 01                	push   $0x1
     f3c:	50                   	push   %eax
     f3d:	ff 75 08             	pushl  0x8(%ebp)
     f40:	e8 7d fe ff ff       	call   dc2 <write>
     f45:	83 c4 10             	add    $0x10,%esp
     f48:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
     f4b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
     f4f:	84 db                	test   %bl,%bl
     f51:	74 77                	je     fca <printf+0xca>
    if(state == 0){
     f53:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
     f55:	0f be cb             	movsbl %bl,%ecx
     f58:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     f5b:	74 cb                	je     f28 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     f5d:	83 ff 25             	cmp    $0x25,%edi
     f60:	75 e6                	jne    f48 <printf+0x48>
      if(c == 'd'){
     f62:	83 f8 64             	cmp    $0x64,%eax
     f65:	0f 84 05 01 00 00    	je     1070 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     f6b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
     f71:	83 f9 70             	cmp    $0x70,%ecx
     f74:	74 72                	je     fe8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     f76:	83 f8 73             	cmp    $0x73,%eax
     f79:	0f 84 99 00 00 00    	je     1018 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     f7f:	83 f8 63             	cmp    $0x63,%eax
     f82:	0f 84 08 01 00 00    	je     1090 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     f88:	83 f8 25             	cmp    $0x25,%eax
     f8b:	0f 84 ef 00 00 00    	je     1080 <printf+0x180>
  write(fd, &c, 1);
     f91:	8d 45 e7             	lea    -0x19(%ebp),%eax
     f94:	83 ec 04             	sub    $0x4,%esp
     f97:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     f9b:	6a 01                	push   $0x1
     f9d:	50                   	push   %eax
     f9e:	ff 75 08             	pushl  0x8(%ebp)
     fa1:	e8 1c fe ff ff       	call   dc2 <write>
     fa6:	83 c4 0c             	add    $0xc,%esp
     fa9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
     fac:	88 5d e6             	mov    %bl,-0x1a(%ebp)
     faf:	6a 01                	push   $0x1
     fb1:	50                   	push   %eax
     fb2:	ff 75 08             	pushl  0x8(%ebp)
     fb5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     fb8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
     fba:	e8 03 fe ff ff       	call   dc2 <write>
  for(i = 0; fmt[i]; i++){
     fbf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
     fc3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
     fc6:	84 db                	test   %bl,%bl
     fc8:	75 89                	jne    f53 <printf+0x53>
    }
  }
}
     fca:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fcd:	5b                   	pop    %ebx
     fce:	5e                   	pop    %esi
     fcf:	5f                   	pop    %edi
     fd0:	5d                   	pop    %ebp
     fd1:	c3                   	ret    
     fd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
     fd8:	bf 25 00 00 00       	mov    $0x25,%edi
     fdd:	e9 66 ff ff ff       	jmp    f48 <printf+0x48>
     fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
     fe8:	83 ec 0c             	sub    $0xc,%esp
     feb:	b9 10 00 00 00       	mov    $0x10,%ecx
     ff0:	6a 00                	push   $0x0
     ff2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
     ff5:	8b 45 08             	mov    0x8(%ebp),%eax
     ff8:	8b 17                	mov    (%edi),%edx
     ffa:	e8 61 fe ff ff       	call   e60 <printint>
        ap++;
     fff:	89 f8                	mov    %edi,%eax
    1001:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1004:	31 ff                	xor    %edi,%edi
        ap++;
    1006:	83 c0 04             	add    $0x4,%eax
    1009:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    100c:	e9 37 ff ff ff       	jmp    f48 <printf+0x48>
    1011:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1018:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    101b:	8b 08                	mov    (%eax),%ecx
        ap++;
    101d:	83 c0 04             	add    $0x4,%eax
    1020:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1023:	85 c9                	test   %ecx,%ecx
    1025:	0f 84 8e 00 00 00    	je     10b9 <printf+0x1b9>
        while(*s != 0){
    102b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    102e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1030:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1032:	84 c0                	test   %al,%al
    1034:	0f 84 0e ff ff ff    	je     f48 <printf+0x48>
    103a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    103d:	89 de                	mov    %ebx,%esi
    103f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1042:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1045:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1048:	83 ec 04             	sub    $0x4,%esp
          s++;
    104b:	83 c6 01             	add    $0x1,%esi
    104e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1051:	6a 01                	push   $0x1
    1053:	57                   	push   %edi
    1054:	53                   	push   %ebx
    1055:	e8 68 fd ff ff       	call   dc2 <write>
        while(*s != 0){
    105a:	0f b6 06             	movzbl (%esi),%eax
    105d:	83 c4 10             	add    $0x10,%esp
    1060:	84 c0                	test   %al,%al
    1062:	75 e4                	jne    1048 <printf+0x148>
    1064:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1067:	31 ff                	xor    %edi,%edi
    1069:	e9 da fe ff ff       	jmp    f48 <printf+0x48>
    106e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1070:	83 ec 0c             	sub    $0xc,%esp
    1073:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1078:	6a 01                	push   $0x1
    107a:	e9 73 ff ff ff       	jmp    ff2 <printf+0xf2>
    107f:	90                   	nop
  write(fd, &c, 1);
    1080:	83 ec 04             	sub    $0x4,%esp
    1083:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1086:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1089:	6a 01                	push   $0x1
    108b:	e9 21 ff ff ff       	jmp    fb1 <printf+0xb1>
        putc(fd, *ap);
    1090:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1093:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1096:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1098:	6a 01                	push   $0x1
        ap++;
    109a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    109d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    10a0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    10a3:	50                   	push   %eax
    10a4:	ff 75 08             	pushl  0x8(%ebp)
    10a7:	e8 16 fd ff ff       	call   dc2 <write>
        ap++;
    10ac:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    10af:	83 c4 10             	add    $0x10,%esp
      state = 0;
    10b2:	31 ff                	xor    %edi,%edi
    10b4:	e9 8f fe ff ff       	jmp    f48 <printf+0x48>
          s = "(null)";
    10b9:	bb 78 13 00 00       	mov    $0x1378,%ebx
        while(*s != 0){
    10be:	b8 28 00 00 00       	mov    $0x28,%eax
    10c3:	e9 72 ff ff ff       	jmp    103a <printf+0x13a>
    10c8:	66 90                	xchg   %ax,%ax
    10ca:	66 90                	xchg   %ax,%ax
    10cc:	66 90                	xchg   %ax,%ax
    10ce:	66 90                	xchg   %ax,%ax

000010d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    10d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    10d1:	a1 90 18 00 00       	mov    0x1890,%eax
{
    10d6:	89 e5                	mov    %esp,%ebp
    10d8:	57                   	push   %edi
    10d9:	56                   	push   %esi
    10da:	53                   	push   %ebx
    10db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    10de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    10e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    10e8:	39 c8                	cmp    %ecx,%eax
    10ea:	8b 10                	mov    (%eax),%edx
    10ec:	73 32                	jae    1120 <free+0x50>
    10ee:	39 d1                	cmp    %edx,%ecx
    10f0:	72 04                	jb     10f6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    10f2:	39 d0                	cmp    %edx,%eax
    10f4:	72 32                	jb     1128 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    10f6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    10f9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    10fc:	39 fa                	cmp    %edi,%edx
    10fe:	74 30                	je     1130 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1100:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1103:	8b 50 04             	mov    0x4(%eax),%edx
    1106:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1109:	39 f1                	cmp    %esi,%ecx
    110b:	74 3a                	je     1147 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    110d:	89 08                	mov    %ecx,(%eax)
  freep = p;
    110f:	a3 90 18 00 00       	mov    %eax,0x1890
}
    1114:	5b                   	pop    %ebx
    1115:	5e                   	pop    %esi
    1116:	5f                   	pop    %edi
    1117:	5d                   	pop    %ebp
    1118:	c3                   	ret    
    1119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1120:	39 d0                	cmp    %edx,%eax
    1122:	72 04                	jb     1128 <free+0x58>
    1124:	39 d1                	cmp    %edx,%ecx
    1126:	72 ce                	jb     10f6 <free+0x26>
{
    1128:	89 d0                	mov    %edx,%eax
    112a:	eb bc                	jmp    10e8 <free+0x18>
    112c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1130:	03 72 04             	add    0x4(%edx),%esi
    1133:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1136:	8b 10                	mov    (%eax),%edx
    1138:	8b 12                	mov    (%edx),%edx
    113a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    113d:	8b 50 04             	mov    0x4(%eax),%edx
    1140:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1143:	39 f1                	cmp    %esi,%ecx
    1145:	75 c6                	jne    110d <free+0x3d>
    p->s.size += bp->s.size;
    1147:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    114a:	a3 90 18 00 00       	mov    %eax,0x1890
    p->s.size += bp->s.size;
    114f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1152:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1155:	89 10                	mov    %edx,(%eax)
}
    1157:	5b                   	pop    %ebx
    1158:	5e                   	pop    %esi
    1159:	5f                   	pop    %edi
    115a:	5d                   	pop    %ebp
    115b:	c3                   	ret    
    115c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001160 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1160:	55                   	push   %ebp
    1161:	89 e5                	mov    %esp,%ebp
    1163:	57                   	push   %edi
    1164:	56                   	push   %esi
    1165:	53                   	push   %ebx
    1166:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1169:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    116c:	8b 15 90 18 00 00    	mov    0x1890,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1172:	8d 78 07             	lea    0x7(%eax),%edi
    1175:	c1 ef 03             	shr    $0x3,%edi
    1178:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    117b:	85 d2                	test   %edx,%edx
    117d:	0f 84 9d 00 00 00    	je     1220 <malloc+0xc0>
    1183:	8b 02                	mov    (%edx),%eax
    1185:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1188:	39 cf                	cmp    %ecx,%edi
    118a:	76 6c                	jbe    11f8 <malloc+0x98>
    118c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1192:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1197:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    119a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    11a1:	eb 0e                	jmp    11b1 <malloc+0x51>
    11a3:	90                   	nop
    11a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    11a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    11aa:	8b 48 04             	mov    0x4(%eax),%ecx
    11ad:	39 f9                	cmp    %edi,%ecx
    11af:	73 47                	jae    11f8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    11b1:	39 05 90 18 00 00    	cmp    %eax,0x1890
    11b7:	89 c2                	mov    %eax,%edx
    11b9:	75 ed                	jne    11a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    11bb:	83 ec 0c             	sub    $0xc,%esp
    11be:	56                   	push   %esi
    11bf:	e8 66 fc ff ff       	call   e2a <sbrk>
  if(p == (char*)-1)
    11c4:	83 c4 10             	add    $0x10,%esp
    11c7:	83 f8 ff             	cmp    $0xffffffff,%eax
    11ca:	74 1c                	je     11e8 <malloc+0x88>
  hp->s.size = nu;
    11cc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    11cf:	83 ec 0c             	sub    $0xc,%esp
    11d2:	83 c0 08             	add    $0x8,%eax
    11d5:	50                   	push   %eax
    11d6:	e8 f5 fe ff ff       	call   10d0 <free>
  return freep;
    11db:	8b 15 90 18 00 00    	mov    0x1890,%edx
      if((p = morecore(nunits)) == 0)
    11e1:	83 c4 10             	add    $0x10,%esp
    11e4:	85 d2                	test   %edx,%edx
    11e6:	75 c0                	jne    11a8 <malloc+0x48>
        return 0;
  }
}
    11e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    11eb:	31 c0                	xor    %eax,%eax
}
    11ed:	5b                   	pop    %ebx
    11ee:	5e                   	pop    %esi
    11ef:	5f                   	pop    %edi
    11f0:	5d                   	pop    %ebp
    11f1:	c3                   	ret    
    11f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    11f8:	39 cf                	cmp    %ecx,%edi
    11fa:	74 54                	je     1250 <malloc+0xf0>
        p->s.size -= nunits;
    11fc:	29 f9                	sub    %edi,%ecx
    11fe:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1201:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    1204:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    1207:	89 15 90 18 00 00    	mov    %edx,0x1890
}
    120d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1210:	83 c0 08             	add    $0x8,%eax
}
    1213:	5b                   	pop    %ebx
    1214:	5e                   	pop    %esi
    1215:	5f                   	pop    %edi
    1216:	5d                   	pop    %ebp
    1217:	c3                   	ret    
    1218:	90                   	nop
    1219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1220:	c7 05 90 18 00 00 94 	movl   $0x1894,0x1890
    1227:	18 00 00 
    122a:	c7 05 94 18 00 00 94 	movl   $0x1894,0x1894
    1231:	18 00 00 
    base.s.size = 0;
    1234:	b8 94 18 00 00       	mov    $0x1894,%eax
    1239:	c7 05 98 18 00 00 00 	movl   $0x0,0x1898
    1240:	00 00 00 
    1243:	e9 44 ff ff ff       	jmp    118c <malloc+0x2c>
    1248:	90                   	nop
    1249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1250:	8b 08                	mov    (%eax),%ecx
    1252:	89 0a                	mov    %ecx,(%edx)
    1254:	eb b1                	jmp    1207 <malloc+0xa7>
