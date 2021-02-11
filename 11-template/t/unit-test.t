#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Game::Cricket;
use Game::Football;

my $game;

{
    local *STDOUT;
    my $output;
    open(STDOUT, '>', \$output);
    $game = Game::Cricket->new;
    $game->play;
    is($output, 'Cricket: initialize.Cricket: start play.Cricket: end play.');
}


{
    local *STDOUT;
    my $output;
    open(STDOUT, '>', \$output);
    $game = Game::Football->new;
    $game->play;
    is($output, 'Football: initialize.Football: start play.Football: end play.');
}

done_testing();
