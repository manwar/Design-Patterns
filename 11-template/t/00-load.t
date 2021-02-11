#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 4;

BEGIN {
    use_ok('TemplatePattern') || print "Bail out!\n";
    use_ok('Game')            || print "Bail out!\n";
    use_ok('Game::Cricket')   || print "Bail out!\n";
    use_ok('Game::Football')  || print "Bail out!\n";
}

diag( "Testing TemplatePattern $TemplatePattern::VERSION, Perl $], $^X" );
