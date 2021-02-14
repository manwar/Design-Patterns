package Container::NameRepository;

use Iterator::Name;
use Moo;

has 'names'    => (is => 'ro', required => 1);
has 'iterator' => (
    is       => 'ro',
    lazy     => 1,
    init_arg => undef,
    default  => sub { Iterator::Name->new({ names => $_[0]->names }) }
);

1;
