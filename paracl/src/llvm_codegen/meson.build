pclc_llvm_codegen = library(
    'pclc_llvm_codegen',
    ['codegen.cpp'] + pclc_frontend_headers,
    dependencies: [llvm_dep, pclc_headers_dep, drawc_dep, pclc_frontend_dep],
    install: true,
)

pclc_llvm_codegen_dep = declare_dependency(link_with: pclc_llvm_codegen)
