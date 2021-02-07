package Item::ColdDrink::Coke;

# Concrete class extending Item::ColdDrink.

use Moo;
extends 'Item::ColdDrink';

sub name {
    my ($self) = @_;

    return 'Coke';
}

sub price {
    my ($self) = @_;

    return 12;
}

1;
