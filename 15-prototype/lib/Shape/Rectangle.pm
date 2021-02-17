package Shape::Rectangle;

use Moo;
extends 'Shape';

has 'type' => (is => 'ro', required => 1, default => sub { 'Rectangle' });

sub draw {
    return "Inside Shape::Rectangle::draw()";
}

1;
