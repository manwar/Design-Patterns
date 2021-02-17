package Shape::Circle;

use Moo;
extends 'Shape';

has 'type' => (is => 'ro', required => 1, default => sub { 'Circle' });

sub draw {
    return "Inside Shape::Circle::draw()";
}

1;
