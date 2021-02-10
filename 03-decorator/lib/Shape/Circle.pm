package Shape::Circle;

# Implement interface (role) Shape.

use Moo;
with 'Shape';

sub draw {
    return "A circle"
}

1;
