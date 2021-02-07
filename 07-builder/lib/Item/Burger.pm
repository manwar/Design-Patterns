package Item::Burger;

# Implement interface (role) Item.

use Moo;
with 'Item';

use Packing::Wrapper;

sub packing {
    my ($self) = @_;

    return Packing::Wrapper->new;
}

sub price { }

1;
