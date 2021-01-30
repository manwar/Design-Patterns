package Shape::Circle;

# Implement interface (role) Shape.

use Moo;
with 'Shape';

sub draw {
    return "Inside Shape::Circle::draw()";
}

1;
