
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Moose' => '0',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Extensive, yet simple, logging role using Log::Dispatchouli',
  'dist_author' => [
    'Sawyer X <xsawyerx@cpan.org>'
  ],
  'dist_name' => 'MooseX-Role-Loggable',
  'dist_version' => '0.002',
  'license' => 'perl',
  'module_name' => 'MooseX::Role::Loggable',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Log::Dispatchouli' => '0',
    'Moose::Role' => '0',
    'namespace::autoclean' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
