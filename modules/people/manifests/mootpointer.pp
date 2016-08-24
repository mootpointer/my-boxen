class people::mootpointer {
  include projects::zova_api

  class neovim {
    homebrew::tap { 'neovim/neovim': }
    package {
      'neovim' : install_options => ['--HEAD'];
    }
  }
  include neovim
  homebrew::tap { 'caskroom/versions':  } ->
  package {
    'elixir': ;
    '1password': provider => 'brewcask' ;
    'flash': provider => 'brewcask';
    'iterm2-beta': provider => 'brewcask';
    'dropbox': provider => 'brewcask';
    'mailbox': provider => 'brewcask';
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
