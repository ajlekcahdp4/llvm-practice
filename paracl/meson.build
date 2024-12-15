fmt_dep = dependency('fmt')
graphs_dep = dependency('graphs')

subdir('ezvis')
pclc_headers_dep = declare_dependency(
    dependencies: [ezvis_dep, graphs_dep, fmt_dep],
    include_directories: include_directories('include'),
)

subdir('src')
