
#include <errno.h>
#include <error.h>
#include <stdio.h>

int main(int argc, char **argv) {
	if (argc == 2) {
		errno = atoi(argv[1]);
		printf("errno=%d|%s\n", errno, (char*)strerror(errno));
		return 0;
	}

	fprintf(stderr, "Usage: perror [errno]\n");
	return 1;
}
