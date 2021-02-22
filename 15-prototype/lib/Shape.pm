package Shape;

use Moo;
use MooX::Clone;

has 'id'   => (is => 'ro', required => 1);
has 'type' => (is => 'ro', required => 1);

1;
