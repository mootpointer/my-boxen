class projects::acca {
  boxen::project { 'acca':
    postgresql    => true,
    nginx         => true,
    ruby          => '2.0.0',
    source        => 'ninefold/acca'
  }
}
