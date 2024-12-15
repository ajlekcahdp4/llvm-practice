cmake = import('cmake')
ctti_project = cmake.subproject('ctti')
ctti_dep = ctti_project.get_variable('ctti_dep')

ezvis_dep = declare_dependency(
    dependencies: [ctti_dep],
    include_directories: include_directories('include'),
)

meson.override_dependency('ezvis', ezvis_dep)

subdir('test')
