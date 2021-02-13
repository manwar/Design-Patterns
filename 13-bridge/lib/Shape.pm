package Shape;

# Define abstract class Shape.

use Moo;

has 'drawAPI' => (is => 'ro', required => 1);

sub draw { }

1;
