#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Image::ProxyImage;

my $image;

{
    local *STDOUT;
    my $output;
    open(STDOUT, '>', \$output);
    $image = Image::ProxyImage->new({ filename => 'dummy.png' });
    $image->display;
    is($output, 'Loading dummy.png ...Displaying dummy.png ...');
}


{
    local *STDOUT;
    my $output;
    open(STDOUT, '>', \$output);
    $image->display;
    is($output, 'Displaying dummy.png ...');
}

done_testing();
