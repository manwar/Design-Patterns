package Item::ColdDrink;

# Implement interface (role) Item.

use Packing::Bottle;

use Moo;
with 'Item';

sub packing {
    my ($self) = @_;

    return Packing::Bottle->new;
}

sub price { }

1;
