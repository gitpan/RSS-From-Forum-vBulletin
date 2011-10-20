
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Module::Build' => '0.3601'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Generate Indonesian monthly HTML calendar',
  'dist_author' => [
    'Steven Haryanto <stevenharyanto@gmail.com>'
  ],
  'dist_name' => 'RSS-From-Forum-vBulletin',
  'dist_version' => '0.03',
  'license' => 'perl',
  'module_name' => 'RSS::From::Forum::vBulletin',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Date::Parse' => '0',
    'Exporter::Lite' => '0',
    'LWP::UserAgent' => '0',
    'Log::Any' => '0',
    'Mojo::DOM' => '0',
    'Test::More' => '0.96',
    'URI::URL' => '0',
    'perl' => '5.010000'
  },
  'script_files' => [
    'bin/get-rss-from-forum'
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
