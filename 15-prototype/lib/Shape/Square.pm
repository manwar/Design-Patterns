package Shape::Square;

use Moo;
extends 'Shape';

has 'type' => (is => 'ro', required => 1, default => sub { 'Square' });

sub draw {
    return "Inside Shape::Square::draw()";
}

1;
