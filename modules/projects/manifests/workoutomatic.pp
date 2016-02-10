class projects::workoutomatic {
  boxen::project { 'workoutomatic':
    postgresql => true,
    source     => 'zovafit/workoutomatic'
  }
}