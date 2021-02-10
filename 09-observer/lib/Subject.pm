package Subject;

use Moo;
use Scalar::Util qw( weaken );

has 'state'     => (is => 'rw');
has 'observers' => (is => 'rw',
                    clearer => 'clear_observers',
                    default => sub { [] });

sub setState {
    my ($self, $state) = @_;

    $self->state($state);
    $self->notifyObservers;
}

sub attach {
    my ($self, $observer) = @_;

    push @{$self->observers}, $observer;
    weaken($self->observers->[-1]);
}

sub detach {
    my ($self, $observer) = @_;
    for my $index (0 .. $#{ $self->observers }) {
        if ($self->observers->[$index] == $observer) {
            splice @{ $self->observers }, $index, 1;
            last;
        }
    }
}

sub notifyObservers {
    my ($self) = @_;

    my $res = [];
    foreach my $observer (@{$self->observers}) {
        push @$res, $observer->update;
    }

    return $res;
}

sub DEMOLISH {
    my ($self) = @_;
    $self->clear_observers;
}

1;
