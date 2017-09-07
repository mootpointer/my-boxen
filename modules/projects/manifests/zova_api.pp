class projects::zova_api {
  boxen::project { 'zova_api':
    postgresql    => true,
    nginx         => true,
    ruby          => '2.2.0',
    redis         => true,
    source        => 'zovafit/zova_api'
  }
}
