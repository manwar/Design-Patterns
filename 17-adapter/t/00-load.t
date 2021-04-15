#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 7;

BEGIN {
    use_ok('AdapterPattern');
    use_ok('Player::Media');
    use_ok('Player::Media::Audio');
    use_ok('Player::Media::Adapter');
    use_ok('Player::AdvancedMedia');
    use_ok('Player::AdvancedMedia::MP4');
    use_ok('Player::AdvancedMedia::VLC');
}

diag( "Testing AdapterPattern $AdapterPattern::VERSION, Perl $], $^X" );
