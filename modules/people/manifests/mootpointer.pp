class people::mootpointer {
  
  homebrew::tap {'railwaycat/emacsmacport': } ->

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
    'fantastical': provider => 'brewcask';
    'iterm2': provider => 'brewcask';
    'emacs-mac': ;
  }

  $home     = "/Users/${::boxen_user}"

  file { 'homeshickroot':
    path => "${home}/.homesick",
    ensure => directory
  } 

  file { 'homeshickdir':
    path => "${home}/.homesick/repos",
    ensure => directory,
  }

  repository { 'homeshick':
    source => 'andsens/homeshick',
    path   => "${home}/.homesick/repos/homeshick",
    require => File['homeshickdir']
  }
  repository { 'my-dotfiles':
    ensure  => 'origin/HEAD', # https://github.com/boxen/puppet-repository/issues/12
    source  => 'mootpointer/dotfiles', # Change me
    path    => "${home}/.homesick/repos/dotfiles",
    require => File['homeshickdir'],
    notify  => Exec['link-dotfiles']
  }

  exec { 'link-dotfiles':
    command     => "bash -c 'source ${home}/.homesick/repos/homeshick/homeshick.sh; homeshick link dotfiles --force'",
    #refreshonly => true
  }

  repository { "${home}/.emacs.d":
    source => 'syl20bnr/spacemacs',
    extra  => [
      '--recursive',
    ],
  }

  include osx::global::enable_keyboard_control_access
  include osx::no_network_dsstores
}
