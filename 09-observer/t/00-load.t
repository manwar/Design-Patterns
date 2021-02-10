#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 6;

BEGIN {
    use_ok('ObserverPattern')          || print "Bail out!\n";
    use_ok('Subject')                  || print "Bail out!\n";
    use_ok('Observer')                 || print "Bail out!\n";
    use_ok('Observer::HexaObserver')   || print "Bail out!\n";
    use_ok('Observer::OctalObserver')  || print "Bail out!\n";
    use_ok('Observer::BinaryObserver') || print "Bail out!\n";
}

diag( "Testing ObserverPattern $ObserverPattern::VERSION, Perl $], $^X" );
