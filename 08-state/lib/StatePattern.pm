package StatePattern;

$StatePattern::VERSION = '0.01';

=head1 NAME

StatePattern - Demo State design pattern.

=cut

use Moo;
use Context;
use State::StartState;
use State::StopState;

sub demo {
    my ($self) = @_;

    my $context = Context->new;

    my $start   = State::StartState->new;
    $start->doAction($context);
    print "Context state:", $context->state->toString, "\n";

    my $stop    = State::StopState->new;
    $stop->doAction($context);
    print "Context state:", $context->state->toString, "\n";
}

1;
