#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Context;
use State::StartState;
use State::StopState;

my $context = Context->new;

my $start = State::StartState->new;
$start->doAction($context);
is($context->state->toString, 'Start State');

my $stop  = State::StopState->new;
$stop->doAction($context);
is($context->state->toString, 'Stop State');

done_testing();
