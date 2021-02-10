#!/usr/bin/perl

use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'ProxyPattern',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/ProxyPattern.pm',
    ABSTRACT_FROM      => 'lib/ProxyPattern.pm',
    LICENSE            => 'artistic_2',
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo' => '2.000000',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'ProxyPattern-*' },
);
