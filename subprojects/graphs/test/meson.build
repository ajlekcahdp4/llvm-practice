gtest = dependency('gtest', main: true)
test_executable = executable(
    'graphs_test',
    ['src/dag.cc', 'src/directed_graph.cc'],
    dependencies: [gtest, graphs_dep],
)
test('graphs.unit', test_executable, protocol: 'gtest')
