package Context;

use Moo;
with 'State';

has 'state' => (
    is  => 'rw',
    isa => sub { die 'Invalid state.' unless $_[0]->does('State') }
);

1;
