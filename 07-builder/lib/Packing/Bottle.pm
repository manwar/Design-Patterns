package Packing::Bottle;

# Implement interface (role) Packing.

use Moo;
with 'Packing';

sub pack {
    my ($self) = @_;

    return 'Bottle';
}

1;
