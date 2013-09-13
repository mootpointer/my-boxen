class projects::discourse {
  boxen::project { 'discourse':
    postgresql    => true,
    redis         => true,
    nginx         => true,
    ruby          => '2.0.0',
    source        => 'mootpointer/discourse'
  }
}
