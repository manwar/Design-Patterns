package ObserverPattern;

$ObserverPattern::VERSION = '0.01';

=head1 NAME

ObserverPattern - Demo Observer design pattern.

=cut

use Subject;
use Observer::HexaObserver;
use Observer::OctalObserver;
use Observer::BinaryObserver;

use Moo;

has 'subject' => (is => 'ro', default => sub { return Subject->new });

sub demo {
    my ($self) = @_;

    my $subject = $self->{subject};
    Observer::HexaObserver->new({ subject => $subject });
    Observer::OctalObserver->new({ subject => $subject });
    Observer::BinaryObserver->new({ subject => $subject });

    print "State change: 14\n";
    $subject->setState(14);
    print "State change: 16\n";
    $subject->setState(16);
}

1;
