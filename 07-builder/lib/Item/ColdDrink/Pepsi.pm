package Item::ColdDrink::Pepsi;

# Concrete class extending Item::ColdDrink.

use Moo;
extends 'Item::ColdDrink';

sub name {
    my ($self) = @_;

    return 'Pepsi';
}

sub price {
    my ($self) = @_;

    return 14;
}

1;
