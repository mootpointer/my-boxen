class people::mootpointer {
  homebrew::tap { 'caskroom/versions':  } ->
  package {
    'elixir': ;
    '1password': provider => 'brewcask' ;
    'dropbox': provider => 'brewcask';
    'viscosity' : provider => 'brewcask';
    'heroku-toolbelt' : ensure => 'latest';
    'sonos' : provider => 'brewcask';
    'carbon-copy-cloner' : provider => 'brewcask';
    'adobe-creative-cloud' : provider => 'brewcask';
    'ffmpeg' :;
    'the_silver_searcher': ;
    'p4merge': provider => 'brewcask';
    'exercism':;
  }

}
