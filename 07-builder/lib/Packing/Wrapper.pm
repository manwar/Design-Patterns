package Packing::Wrapper;

# Implement interface (role) Packing.

use Moo;
with 'Packing';

sub pack {
    my ($self) = @_;

    return 'Wrapper';
}

1;
