class projects::acca {
  boxen::project { 'acca':
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3',
    source        => 'ninefold/octane'
  }
}
