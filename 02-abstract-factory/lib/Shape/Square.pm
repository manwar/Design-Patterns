package Shape::Square;

# Implement interface (role) Shape.

use Moo;
with 'Shape';

sub draw {
    return "Inside Shape::Square::draw()";
}

1;
