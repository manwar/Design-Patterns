#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 5;

BEGIN {
    use_ok('IteratorPattern')           || print "Bail out!\n";
    use_ok('Iterator')                  || print "Bail out!\n";
    use_ok('Iterator::Name')            || print "Bail out!\n";
    use_ok('Container')                 || print "Bail out!\n";
    use_ok('Container::NameRepository') || print "Bail out!\n";
}

diag( "Testing IteratorPattern $IteratorPattern::VERSION, Perl $], $^X" );
