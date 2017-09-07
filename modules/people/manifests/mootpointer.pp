class people::mootpointer {
  homebrew::tap { 'caskroom/versions':  } ->
  package {
    'elixir': ;
    '1password': provider => 'brewcask' ;
    'dropbox': provider => 'brewcask';
    'heroku-toolbelt' : ensure => 'latest';
    'adobe-creative-cloud' : provider => 'brewcask';
    'ffmpeg' :;
    'the_silver_searcher': ;
    'p4merge': provider => 'brewcask';
    'exercism':;
  }

}
