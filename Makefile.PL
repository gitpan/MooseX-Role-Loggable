
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Extensive, yet simple, logging role using Log::Dispatchouli",
  "AUTHOR" => "Sawyer X <xsawyerx\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Moo" => 0,
    "Test::Fatal" => 0,
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "MooseX-Role-Loggable",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MooseX::Role::Loggable",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Log::Dispatchouli" => 0,
    "Moo" => "1.000001",
    "Moo::Role" => 0,
    "MooX::Types::MooseLike" => 0,
    "Safe::Isa" => 0,
    "Sub::Quote" => 0,
    "Sys::Syslog" => "0.25",
    "namespace::sweep" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.112",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



