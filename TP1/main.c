#include "args_parser.h"
#include "gcd.h"


int parse_line(char* line, int* a, int* b){
    char *found;

    found = strtok(line," ");
    if( !found)
        return 1;

    *a = atoi(found);
    if(*a == 0){
        return 1;
    }

    found = strtok(NULL," ");
    if(!found)
        return 1;

    *b = atoi(found);
    if(*b == 0){
        return 1;
    }

    found = strtok(NULL," ");
    if(found)
        return 1;

    return 0;
}

struct gcd *read_file(FILE* file, size_t *len){
    char line[100];
    struct gcd *gcd = NULL;
    int a, b;
    int line_read = fscanf(file, "%99[^\n]\n", line);
    if(line_read == EOF){
        if(fprintf(stderr, "Error: Empty file\n") < 0) {
            perror("Error at fprintf");
            exit(1);
        }
        return NULL;
    }
    int parse_line_success = parse_line(line,&a,&b);
    if(parse_line_success == 1)
    {
        if(fprintf(stderr, "Error while parsing line\n") < 0) {
            perror("Error at fprintf");
            exit(1);
        }
        return NULL;
    }

    while (line_read != EOF)
    {
        gcd = realloc(gcd, ((*len) + 1) * sizeof(struct gcd));
        if (!gcd)
        {
            if(fprintf(stderr, "Error at realloc\n") < 0) {
                perror("Error at fprintf");
                exit(1);
            }
            return NULL;
        }
        gcd[*len].num_a = a;
        gcd[*len].num_b = b;
        (*len)++;
        line_read = fscanf(file, "%99[^\n]\n", line);
        if(line_read != EOF)
            parse_line_success = parse_line(line,&a,&b);
        if(parse_line_success == 1)
        {
            if(fprintf(stderr, "Error while parsing line\n") < 0) {
                perror("Error at fprintf");
                free(gcd);
                exit(1);
            }
            free(gcd);
            return NULL;
        }
    }
    return gcd;
}

int main(int argc, char **argv)
{
    args_t args;
    parse_args(argc, argv, &args);
    int error = 0;

    struct gcd *gcd = NULL;
    size_t len = 0;

    if (args.in_file != NULL)
    {
        gcd = read_file(args.in_file,&len);
        if(!gcd){
            error = 1;
        }
    }

    if(error != 1)
    {
        euclides(gcd, len);

        if (args.out_file != NULL)
        {
            for (size_t i = 0; i < len; i++)
            {
                if(fprintf(args.out_file, "GCD(%i,%i) = %i\n", gcd[i].num_a, gcd[i].num_b, gcd[i].gcd_ab) < 0)
                {
                    perror("Error at writing file");
                    error = 1;
                    i = len;
                }
            }
        }
    }
    

    if (args.in_file != NULL)
    {
        if (fclose(args.in_file) == EOF)
        {
            error = 1;
        }
    }

    if (args.out_file != NULL)
    {
        if (fclose(args.out_file) == EOF)
        {
            error = 1;
        }
    }
    
    free(gcd);

    return error;
}
