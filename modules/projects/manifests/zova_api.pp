class projects::zova_api {
  boxen::project { 'zova_api':
    postgresql    => true,
    nginx         => true,
    ruby          => '2.1.1',
    redis         => true,
    source        => 'zovafit/zova_api'
  }
}
