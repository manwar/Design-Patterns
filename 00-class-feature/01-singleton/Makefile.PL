#!/usr/bin/perl

use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'SingleObject',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    ABSTRACT_FROM      => 'lib/SingleObject.pm',
    LICENSE            => 'artistic_2',
    MIN_PERL_VERSION   => 5.038,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'SingleObject-*' },
);
