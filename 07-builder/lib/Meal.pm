package Meal;

use Moo;

has 'items' => (is => 'rw', default => sub {[]});

sub addItem {
    my ($self, $item) = @_;

    push @{$self->{items}}, $item;
}

sub getCost {
    my ($self) = @_;

    my $cost = 0;
    foreach my $item (@{$self->{items}}) {
        $cost += $item->price;
    }

    return $cost;
}

sub getItems {
    my ($self) = @_;

    my $items = [];
    foreach my $item (@{$self->{items}}) {
        push @$items,
        [
            $item->name,
            $item->packing->pack,
            $item->price,
        ];
    }

    return $items;
}

1;
