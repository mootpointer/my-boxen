class projects::ninefold_performance {
  boxen::project { 'ninefold_performance':
    postgresql    => true,
    nginx         => true,
    ruby          => '2.0.0',
    source        => 'ninefold/ninefold_performance'
  }
}
