#include "args_parser.h"

int
main(int argc, char **argv)
{
	args_t args;
	parse_args(argc, argv, &args);
	int error = 0;

	char *line = NULL;
	size_t len = 0;

	if(args.in_file != NULL){
		while (getline(&line, &len, args.in_file) != EOF) {
			printf("%s", line);
		}
	}

	if(line != NULL){
		free(line);
	}

	if(args.in_file != NULL){
		if (fclose(args.in_file) == EOF)
		{
			error = 1;
		}
	}

	if(args.out_file != NULL){
		if (fclose(args.out_file) == EOF)
		{
			error = 1;
		}
	}

	return error;
}
