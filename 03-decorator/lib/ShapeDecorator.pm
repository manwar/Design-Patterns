package ShapeDecorator;

$ShapeDecorator::VERSION = '0.01';

=head1 NAME

ShapeDecorator - Demo Decorator design pattern.

=cut

use Moo;

has 'shape'  => (
    is       => 'ro',
    isa      => sub { die 'Invalid shape.' unless $_[0]->does('Shape') },
    required => 1,
    handles  => [qw( draw )],
);

# Must come after "handles" because it needs "draw".
with 'Shape';

1;
