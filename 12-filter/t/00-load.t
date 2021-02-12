#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 7;

BEGIN {
    use_ok('FilterPattern')    || print "Bail out!\n";
    use_ok('Person')           || print "Bail out!\n";
    use_ok('Criteria::Male')   || print "Bail out!\n";
    use_ok('Criteria::Female') || print "Bail out!\n";
    use_ok('Criteria::Single') || print "Bail out!\n";
    use_ok('Criteria::And')    || print "Bail out!\n";
    use_ok('Criteria::Or')     || print "Bail out!\n";
}

diag( "Testing FilterPattern $FilterPattern::VERSION, Perl $], $^X" );
