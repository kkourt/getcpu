#define _GNU_SOURCE
#include <sys/syscall.h>      /* Definition of SYS_* constants */
#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv)
{
	int ret;
	unsigned int cpu, node;

	while (1) {
		ret = syscall(SYS_getcpu, &cpu, &node);
		printf("cpu=%d node=%u ret=%d\n", cpu, node, ret);
		fflush(stdout);
		sleep(3);
	}
}
