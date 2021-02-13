package Shape::Circle::Red;

use Moo;
with 'DrawAPI';

sub drawCircle {
    my ($self, $radius, $x, $y) = @_;

    return sprintf("drawCircle(color = red; radius = %d; x = %d; y = %d)",
    	$radius, $x, $y);
}

1;
