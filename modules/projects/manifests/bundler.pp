class projects::bundler {

  boxen::project { 'bundler':
    ruby          => '2.0.0',
    source        => 'bundler/bundler'
  }
}
