#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 4;

BEGIN {
    use_ok('Student');
    use_ok('StudentDAO');
    use_ok('StudentDAOImpl');
    use_ok('DataAccessObject');
}

diag( "Testing DataAccessObject $DataAccessObject::VERSION, Perl $], $^X" );
