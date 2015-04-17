class projects::northridge {
  boxen::project { 'northridge':
    postgresql => true,
    nginx      => true,
    ruby       => '2.2.0',
    source     => 'mootpointer/northridge_refinery'
  }
}
