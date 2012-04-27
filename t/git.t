#!perl

# Fake a git starlink.version file and test the version reading.

use strict;
use Test::More tests => 5;
use File::Spec;
use File::Path qw/ mkpath rmtree /;

BEGIN {
  use_ok( "Starlink::Versions" );
  Starlink::Versions->import( ":Funcs" );
}

my $info = Starlink::Versions::_get_git_version( File => 't/data/starlink.version' );

is( $info->{'COMMIT'}, "3a94952fab707beb4b1484afe3bb9e476eb07e14" );
is( $info->{'COMMITDATE'}->hms, '19:14:48' );

$info = Starlink::Versions::_get_git_version( File => 't/data/starlink2.version' );

is( $info->{'COMMIT'}, "e87b3a8109b6cfaa5e762b7fe11a2004c5f29d31");
is( $info->{'COMMITDATE'}->hms, '14:05:42' );
