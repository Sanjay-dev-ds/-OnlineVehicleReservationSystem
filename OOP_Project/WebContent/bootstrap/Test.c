#include <stdio.h>
#include <unistd.h>



int main () {




int sj ;
sj = fork();



if(sj == 0) {
printf("CHILD\n");
printf("im child return value %d\n",sj);
printf("parent id %d\n",getppid());
printf("my id %d\n",getpid());



}
else {
printf("PARENT\n");
printf("my id %d\n",getpid());
printf("child id %d\n",sj);
printf(" \n");



}