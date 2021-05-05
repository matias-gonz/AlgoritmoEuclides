#ifndef TP1_ARGS_PARSER_H
#define TP1_ARGS_PARSER_H
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <string.h>
#include <stdlib.h>

#define OPTSTRING "Vhi:o:"

static const struct option longOpts[] = {
        {"version", no_argument,       NULL, 'V'},
        {"help",    no_argument,       NULL, 'h'},
        {"input",   required_argument, NULL, 'i'},
        {"output",  required_argument, NULL, 'o'},
        {NULL,      no_argument,       NULL, 0}};

typedef struct args_t {
    FILE *in_file;
    FILE *out_file;
} args_t;

/**
 * Parsea los argumentos de entrada del programa a un struct args_t.
 * Los archivos de entrada y salida ya estan abiertos.
 * Pone los opciones por default y verifica los errores pedidos en el enunciado.
 */
void parse_args(int argc, char *argv[], args_t *args);
#endif //TP1_ARGS_PARSER_H
