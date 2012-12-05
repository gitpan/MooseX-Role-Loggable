
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Moo" => 0,
    "Test::Fatal" => 0,
    "Test::More" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Extensive, yet simple, logging role using Log::Dispatchouli",
  "dist_author" => [
    "Sawyer X <xsawyerx\@cpan.org>"
  ],
  "dist_name" => "MooseX-Role-Loggable",
  "dist_version" => "0.101",
  "license" => "perl",
  "module_name" => "MooseX::Role::Loggable",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Log::Dispatchouli" => 0,
    "Moo" => "1.000001",
    "Moo::Role" => 0,
    "MooX::Types::MooseLike" => 0,
    "Safe::Isa" => 0,
    "Sub::Quote" => 0,
    "Sys::Syslog" => "0.25",
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
