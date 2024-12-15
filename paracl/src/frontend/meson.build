flex = find_program('flex')
bison = find_program('bison')

parser_generated = custom_target(
    input: 'parser/parser.y',
    output: ['bison_paracl_parser.cpp', 'bison_paracl_parser.hpp', 'location.hpp'],
    command: [bison, '-v', '--output=@OUTPUT0@', '@INPUT@', '-d'],
)

scanner_generated = custom_target(
    input: ['parser/scanner.l', parser_generated],
    output: ['lexer_generated.cpp', 'lexer_generated.hpp'],
    command: [
        flex,
        '--full',
        '--outfile=@OUTPUT0@',
        '--header-file=@OUTPUT1@',
        '@INPUT0@',
    ],
)

pclc_frontend = library(
    'pclc_frontend',
    [
        'ast_copier.cc',
        'dumper.cc',
        'analysis/function_explorer.cc',
        'analysis/semantic_analyzer.cc',
        parser_generated,
        scanner_generated,
    ],
    dependencies: [pclc_headers_dep],
    link_args: ['-lfl'],
    install: true,
)

pclc_frontend_headers = [
    parser_generated.to_list()[1],
    parser_generated.to_list()[2],
    scanner_generated.to_list()[1],
]

pclc_frontend_dep = declare_dependency(
    link_with: pclc_frontend,
    dependencies: pclc_headers_dep,
)
