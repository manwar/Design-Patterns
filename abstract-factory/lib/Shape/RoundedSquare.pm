package Shape::RoundedSquare;

# Implement interface (role) Shape.

use Moo;
with 'Shape';

sub draw {
    return "Inside Shape::RoundedSquare::draw()";
}

1;
