package Container::NameRepository;

use Iterator::Name;
use Moo;

has 'names'    => (is => 'ro', required => 1);
has 'iterator' => (is => 'rw');

sub BUILD {
    my ($self) = @_;

    $self->iterator(Iterator::Name->new({ names => $self->names }));
}

1;
