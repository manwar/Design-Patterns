#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 4;

BEGIN {
    use_ok('ProxyPattern')      || print "Bail out!\n";
    use_ok('Image')             || print "Bail out!\n";
    use_ok('Image::RealImage')  || print "Bail out!\n";
    use_ok('Image::ProxyImage') || print "Bail out!\n";
}

diag( "Testing ProxyPattern $ProxyPattern::VERSION, Perl $], $^X" );
