package State::StartState;

# Implement interface (role) State.

use Moo;
with 'State';

sub doAction {
    my ($self, $context) = @_;

    $context->state($self);
}

sub toString {
    my ($self) = @_;

    return "Start State";
}

1;
