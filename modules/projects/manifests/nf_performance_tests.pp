class projects::nf_performance_tests {
  boxen::project { 'nf_performance_tests':
    ruby          => '2.0.0',
    source        => 'ninefold/nf_performance_tests'
  }
}
