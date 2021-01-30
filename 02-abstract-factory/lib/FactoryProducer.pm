package FactoryProducer;

$FactoryProducer::VERSION = '0.01';

=head1 NAME

FactoryProducer - Demo Abstract Factory design pattern.

=cut

use Moo;

use AbstractFactory::ShapeFactory;
use AbstractFactory::RoundedShapeFactory;

sub getFactory {
    my ($rounded) = @_;

    if ($rounded) {
        return AbstractFactory::RoundedShapeFactory->new;
    }
    else {
        return AbstractFactory::ShapeFactory->new;
    }
}

1;
