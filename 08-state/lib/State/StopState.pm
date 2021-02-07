package State::StopState;

# Implement interface (role) State.

use Moo;
with 'State';

sub doAction {
    my ($self, $context) = @_;

    $context->state($self);
}

sub toString {
    my ($self) = @_;

    return "Stop State";
}

1;
