#include "args_parser.h"
#include "gcd.h"

int main(int argc, char **argv)
{
    args_t args;
    parse_args(argc, argv, &args);
    int error = 0;

    struct gcd *gcd = NULL;
    size_t len = 0;

    if (args.in_file != NULL)
    {
        int a, b;
        int read = fscanf(args.in_file, "%i %i\n", &a, &b);
        while (read == 2)
        {
            gcd = realloc(gcd, (len + 1) * sizeof(struct gcd));
            if (!gcd)
            {
                perror("Error realloc");
            }
            gcd[len].num_a = a;
            gcd[len].num_b = b;
            len++;
            read = fscanf(args.in_file, "%i %i\n", &a, &b);
        }
    }

    euclides(gcd, len);

    if (args.out_file != NULL)
    {
        for (size_t i = 0; i < len; i++)
        {
            fprintf(args.out_file, "GCD(%i,%i) = %i\n", gcd[i].num_a, gcd[i].num_b, gcd[i].gcd_ab);
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

    return error;
}