llvm_dep = dependency('llvm')
executable('ir-generator', 'generation.cpp', dependencies: [llvm_dep])
executable('highlife-generated', 'ir.ll', dependencies: [drawc_dep])
