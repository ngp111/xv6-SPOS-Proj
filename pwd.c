#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"

void 
help(){
    printf(1,"Usage:\n");
    printf(1,"pwd --help : options list\n");
    exit();
}


int main(int argc,char *argv[])
{
    char cwd[100];
    int logical=0,physical=1;
    int err=open("/temp.pwd",O_RDONLY);
    if(argv[1][0]=='-')
    {
        if(strcmp(argv[1],"--help")==0) help();
	else 
	{
		printf(1,"pwd: invalid option %s\nFor help: 'pwd --help'\n",argv[1]);
		exit();
	}
    }
    if(err<0) 
    {
        printf(1,"/\n");
        exit();
    }
    int red=read(err,cwd,sizeof(cwd));
    if(red<0)
    {
        printf(2,"ERROR\n");
        exit();
    }
    close(err);
    // di xv6 tidak ada symlink.    
    if(logical==1 || physical==1 || logical==0)
        printf(1,"%s\n",cwd);
    exit();
}
