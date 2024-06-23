week 9b
AIM:Write a C program to create a child process and allow the parent to display ‘parent’ and
the child to display ‘child’ on the screen.
ALGORITHM:
Step 1: Start the main function
Step 2: call the fork() function to create a child process fork function returns 2 values
Step 3:which returns 0 to child process
Step 4:which returns process id to the parent process
Step 5:stop
Source Code:
include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<string.h>
int global=10;
int main()
{
int local=20;
pid_t pid;
printf("before fork\n");
printf("pid=%d,global=%d,local=%d\n",getpid(),global,local);
pid=fork();
if(pid<0)
printf("failed to create child");
else if(pid==0)
{
printf("after fork\n");
global++;
local++;
}
else if(pid>0)
sleep(2);
printf("cid=%d,global=%d,local=%d\n",getpid(),global,local);
exit(0);
}

Output:
[latha@localhost ~]$ cc week16.c
[latha@localhost ~]$ ./a.out
before fork
pid=3005,global=10,local=20
after fork
cid=3006,global=11,local=21
cid=3005,global=10,local=20
