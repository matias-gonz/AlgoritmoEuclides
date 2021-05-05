#include "args_parser.h"

void init_default_args(args_t *args);

void print_version();

void set_input_file(args_t *args);

void set_output_file(args_t *args);

void display_usage(FILE *output);

void p_exit(args_t *args, int code);

void parse_args(int argc, char *argv[], args_t *args) {
    init_default_args(args);
    int opt = 0;
    int longIndex = 0;
    while ((opt = getopt_long(argc, argv, OPTSTRING, longOpts, &longIndex)) != -1) {
        switch (opt) {
            case 'V':
                print_version();
                p_exit(args, 0);
            case 'h':
                display_usage(stdout);
                p_exit(args, 0);
            case 'i':
                set_input_file(args);
                break;
            case 'o':
                set_output_file(args);
                break;
            default:
                display_usage(stderr);
                p_exit(args, 1);
        }
    }
}

void init_default_args(args_t *args) {
    args->in_file = stdin;
    args->out_file = stdout;
}

void print_version() {
    printf("tp1 Version 1.0\n");
}

void p_exit(args_t *args, int code) {
    if(fclose(args->in_file) == EOF){
      perror("Error closing file");
      code = 1;
    };
    if(fclose(args->out_file) == EOF){
      perror("Error closing file");
      code = 1;
    };
    exit(code);
}

void set_input_file(args_t *args) {
    FILE *in_file;
    if ((in_file = fopen(optarg, "r")) == NULL) {
        perror("Error opening input file");
        p_exit(args, 1);
    } else {
        args->in_file = in_file;
    }
}

void set_output_file(args_t *args) {
    if(strcmp(optarg, "-")){
      FILE *out_file;
      if ((out_file = fopen(optarg, "w")) == NULL) {
          perror("Error opening output file");
          p_exit(args, 1);
      } else {
          args->out_file = out_file;
      }
    }
}

void display_usage(FILE *output) {
    if(fprintf(output, "Usage: \n") < 0){
        perror("Error fprint usage");
        exit(1);
    }

    if(fprintf(output, "    tp1 -h \n") < 0){
        perror("Error fprint usage");
        exit(1);
    }

    if(fprintf(output, "    tp1 -V \n") < 0){
        perror("Error fprint usage");
        exit(1);
    }

    if(fprintf(output, "    tp1 -i in_file -o out_file \n") < 0){
        perror("Error fprint usage");
        exit(1);
    }

    if(fprintf(output, "Options: \n") < 0){
        perror("Error fprint Options");
        exit(1);
    }

    if(fprintf(output, "    -V, --version   Print version and quit.\n") < 0){
        perror("Error fprint version");
        exit(1);
    }

    if(fprintf(output, "    -h, --help      Print this information and quit.\n") < 0){
        perror("Error fprint Print");
        exit(1);
    }

    if(fprintf(output, "    -i, --input     Specify input stream/file, \"-\" for stdin.\n") < 0){
        perror("Error fprint Location");
        exit(1);
    }

    if(fprintf(output, "    -o, --output    Specify output stream/file, \"-\" for stdout.\n") < 0){
        perror("Error fprint Path");
        exit(1);
    }

    if(fprintf(output, "Examples: \n")< 0){
        perror("Error fprint Examples");
        exit(1);
    }

    if(fprintf(output, "    tp1 < in.txt > out.txt \n") < 0){
        perror("Error fprint tp1 i");
        exit(1);
    }
}
