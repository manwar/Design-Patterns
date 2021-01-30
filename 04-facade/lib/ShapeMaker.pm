package ShapeMaker;

$ShapeMaker::VERSION = '0.01';

=head1 NAME

ShapeMaker - Demo Facade design pattern.

=cut

use Moo;

use Shape::Circle;
use Shape::Square;
use Shape::Rectangle;

has circle    => (is => 'ro', default => sub { Shape::Circle->new    });
has square    => (is => 'ro', default => sub { Shape::Square->new    });
has rectangle => (is => 'ro', default => sub { Shape::Rectangle->new });

sub drawCircle {
    my ($self) = @_;

    $self->circle->draw;
}

sub drawSquare {
    my ($self) = @_;

    $self->square->draw;
}

sub drawRectangle {
    my ($self) = @_;

    $self->rectangle->draw;
}

1;
