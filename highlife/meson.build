sdl2_dep = dependency('sdl2')
incdir  =['include']
sdlwrap = declare_dependency(include_directories: incdir)
drawc = library('drawc', 'lib/draw-c.cpp', dependencies: [sdl2_dep, sdlwrap], include_directories: incdir)
drawc_dep = declare_dependency(link_with: drawc, include_directories: incdir)
executable('hightlife', 'main.c', dependencies: [drawc_dep], install: true)

