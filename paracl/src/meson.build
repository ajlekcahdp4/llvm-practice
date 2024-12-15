subdir('frontend')
subdir('bytecode_vm')

boost_dep = dependency('boost', modules: ['program_options'])
pclc_deps = [boost_dep, pclc_frontend_dep]
pclc_tools = []
pclc_definitions = []

static_llvm = get_option('default_library') == 'static'

llvm_dep = dependency(
    'llvm',
    version: '>=18.0',
    method: 'auto',
    modules: ['core', 'support', 'option', 'executionengine'],
    required: true,
    static: static_llvm,
)

subdir('llvm_codegen')

pclc_deps += [llvm_dep, drawc_dep, pclc_llvm_codegen_dep]

pclc = executable(
    'pclc',
    ['pclc.cc', pclc_frontend_headers],
    dependencies: pclc_deps,
    link_with: pclc_bytecode_vm,
    install: true,
    install_rpath: '$ORIGIN/../lib',
    cpp_args: pclc_definitions,
)

pclc_tools += [pclc]
